# -*- coding: utf-8 -*-

#Importando librerias necesarias
import bottle
import requests
import json
from requests_oauthlib import OAuth1
from urlparse import parse_qs

#Declarando las listas necesarias y constantes
listalogros = []
feed = []
logrosfeed = []
logroscompletos = []

REQUEST_TOKEN_URL = "https://api.twitter.com/oauth/request_token"
AUTHENTICATE_URL = "https://api.twitter.com/oauth/authenticate?oauth_token="
ACCESS_TOKEN_URL = "https://api.twitter.com/oauth/access_token"

CONSUMER_KEY = "Bhq5Qko3pTYMWgXv5PA"
CONSUMER_SECRET = "wnadDL61r393oCFftNJw1jxrHAlOC4dv73amss7A"
TOKENS = {}

#Definiendo funciones para autenticacion en twitter
def get_request_token():
    oauth = OAuth1(CONSUMER_KEY,
                   client_secret=CONSUMER_SECRET,
    )
    r = requests.post(url=REQUEST_TOKEN_URL, auth=oauth)
    credentials = parse_qs(r.content)
    TOKENS["request_token"] = credentials.get('oauth_token')[0]
    TOKENS["request_token_secret"] = credentials.get('oauth_token_secret')[0]

def get_access_token(TOKENS):
    oauth = OAuth1(CONSUMER_KEY,
                   client_secret=CONSUMER_SECRET,
                   resource_owner_key=TOKENS["request_token"],
                   resource_owner_secret=TOKENS["request_token_secret"],
                   verifier=TOKENS["verifier"],
    )

    r = requests.post(url=ACCESS_TOKEN_URL, auth=oauth)
    credentials = parse_qs(r.content)
    TOKENS["access_token"] = credentials.get('oauth_token')[0]
    TOKENS["access_token_secret"] = credentials.get('oauth_token_secret')[0]

#Obteniendo los tokens
@bottle.get('/')
def index():
    get_request_token()
    authorize_url = AUTHENTICATE_URL + TOKENS["request_token"]
    return bottle.template('index.tpl', authorize_url=authorize_url)

@bottle.get('/datoswow')
def get_verifier():
    TOKENS["verifier"] = bottle.request.query.oauth_verifier
    get_access_token(TOKENS)
    return bottle.template('datoswow.tpl')

@bottle.post('/nombre_pj')
def procesando():
#Utilizando la api de wow para obtener el logro
    nombre = bottle.request.forms.get('nombre')
    reino =  bottle.request.forms.get('reino')
    feed = requests.get("http://eu.battle.net/api/wow/character/%s/%s?" % (reino,nombre), params={"fields":"feed","locale":"es_ES"})
    if feed.status_code == 200:
	json.loads(feed.text)
    else:
	return "<p>Lo sentimos, ha habido un error de conexión con la api de WoW.</p>"
    
    for elem in xrange(0,int(len(json.loads(feed.text)))):
        if json.loads(feed.text)["feed"][elem]["type"] == 'ACHIEVEMENT':
            logrosfeed.append(elem)

#Obteniendo la informacion necesaria para mostrar el logro antes de ser tuiteado 
    for elem in logrosfeed:
        dicc = {}
        dicc["id"] = json.loads(feed.text)["feed"][int(elem)]["achievement"]["id"]
        dicc["Titulo"] = json.loads(feed.text)["feed"][int(elem)]["achievement"]["title"]
        dicc["Icono"] = json.loads(feed.text)["feed"][int(elem)]["achievement"]["icon"]
        dicc["Descripcion"] = json.loads(feed.text)["feed"][int(elem)]["achievement"]["description"]
        logroscompletos.append(dicc)
      
        
    if feed.status_code == 200:
        return bottle.template('correcto.tpl', nombrepj=nombre, reinopj=reino, id=logroscompletos[0]["id"], titulo=logroscompletos[0]["Titulo"], icono=logroscompletos[0]["Icono"], descripcion=logroscompletos[0]["Descripcion"])
    else:
	return bottle.template('incorrecto.tpl')

#Twiteando
@bottle.post('/twittear')
def tweet_submit():
    def get_verifier():
        TOKENS["verifier"] = bottle.request.query.oauth_verifier
        get_access_token(TOKENS)
    texto = "Logro obtenido: %s  --> http://es.wowhead.com/achievement=%i via TWOWTTER" % (logroscompletos[0]["Titulo"],logroscompletos[0]["id"])
    oauth = OAuth1(CONSUMER_KEY,
                   client_secret=CONSUMER_SECRET,
                   resource_owner_key=TOKENS["access_token"],
                   resource_owner_secret=TOKENS["access_token_secret"])
    
    url = 'https://api.twitter.com/1.1/statuses/update.json'

    r = requests.post(url=url,
                      data={"status":texto},
                      auth=oauth)
    if r.status_code == 200:
        return "<p>Tweet enviado correctamente.</p><br/><a href='http://twowtter-adrianjb.rhcloud.com/datoswow'>¡Volver!</a>"
    else:
        return "<p>Problema al enviar el tweet.</p><br/><a href='http://twowtter-adrianjb.rhcloud.com/datoswow'>¡Volver!</a>"

# Openshift - This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_HOMEDIR'], 
    'app-root/runtime/repo/wsgi/views/')) 

application=bottle.default_app()
