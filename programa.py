# -*- coding: utf-8 -*-

import bottle
import requests
import json
from requests_oauthlib import OAuth1
from urlparse import parse_qs

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

@bottle.get('/')
def index():
    get_request_token()
    authorize_url = AUTHENTICATE_URL + TOKENS["request_token"]
    return bottle.template('index.tpl', authorize_url=authorize_url)

@bottle.get('/twittear')
def get_verifier():
    TOKENS["verifier"] = request.query.oauth_verifier
    get_access_token(TOKENS)
    return bottle.template('/nombre_pj')

@bottle.post('/nombre_pj')
def esperando():
    nombre = bottle.request.forms.get('nombre')
    reino =  bottle.request.forms.get('reino')
    feed = requests.get("http://eu.battle.net/api/wow/character/%s/%s?" % (reino,nombre), params={"fields":"feed","locale":"es_ES"})
    json.loads(feed.text)
    
    for elem in xrange(0,int(len(json.loads(feed.text)))):
        if json.loads(feed.text)["feed"][elem]["type"] == 'ACHIEVEMENT':
            logrosfeed.append(elem)
        else:
            return bottle.template('correcto2.tpl')
            
    for elem in logrosfeed:
        dicc = {}
        dicc["id"] = json.loads(feed.text)["feed"][int(elem)]["achievement"]["id"]
        dicc["Titulo"] = json.loads(feed.text)["feed"][int(elem)]["achievement"]["title"]
        dicc["Icono"] = json.loads(feed.text)["feed"][int(elem)]["achievement"]["icon"]
        dicc["Descripcion"] = json.loads(feed.text)["feed"][int(elem)]["achievement"]["description"]
        logroscompletos.append(dicc)
        
def tweet_submit():
    tweet = ¡He ganado el logro <a href="http://es.wowhead.com/achievement={{id}}>{{titulo}}</a> en World of Warcraft!
    texto = request.forms.get("tweet")
    oauth = OAuth1(CONSUMER_KEY,
                   client_secret=CONSUMER_SECRET,
                   resource_owner_key=TOKENS["access_token"],
                   resource_owner_secret=TOKENS["access_token_secret"])
    
    url = 'https://api.twitter.com/1.1/statuses/update.json'

    r = requests.post(url=url,
                      data={"status":texto},
                      auth=oauth)
    if r.status_code == 200:
        return "<p>Tweet enviado correctamente.</p>"
    else:
        return "<p>Problema al enviar el tweet.</p>"
        
    if feed.status_code == 200:
        return bottle.template('correcto.tpl', nombrepj=nombre, reinopj=reino, id=logroscompletos[0]["id"], titulo=logroscompletos[0]["Titulo"], icono=logroscompletos[0]["Icono"], descripcion=logroscompletos[0]["Descripcion"],)
    else:
	return bottle.template('incorrecto.tpl')

bottle.run(host='localhost', port=8080)
