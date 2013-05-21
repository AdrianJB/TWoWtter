<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TWoWtter</title>
<script type="text/javascript" language="javascript"> 
function agregarOpciones(form)
{
var selec = form.pais.options;
var combo = form.reino.options;
combo.length = null;
 
if (selec[0].selected == true)
{
var seleccionar = new Option("Esperando selección");
combo[0] = seleccionar;
}
 
if (selec[1].selected == true)
{
var alemania1 = new Option("Aegwynn");
var alemania2 = new Option("Alexstrasza");
var alemania3 = new Option("Alleria");
var alemania4 = new Option("Aman'Thul");
var alemania5 = new Option("Ambossar");
var alemania6 = new Option("Anetheron");
var alemania7 = new Option("Antonidas");
var alemania8 = new Option("Anub'arak");
var alemania9 = new Option("Area 52");
var alemania10 = new Option("Arthas");
var alemania11 = new Option("Arygos");
var alemania12 = new Option("Azshara");
var alemania13 = new Option("Baelgun");
var alemania14 = new Option("Blackhand");
var alemania15 = new Option("Blackmoore");
var alemania16 = new Option("Blackrock");
var alemania17 = new Option("Blutkessel");
var alemania18 = new Option("Dalvengyr");
var alemania19 = new Option("Das Konsortium");
var alemania20 = new Option("Das Syndikat");
var alemania21 = new Option("Der Mithrilorden");
var alemania22 = new Option("Der Rat von Dalaran");
var alemania23 = new Option("Der abyssische Rat");
var alemania24 = new Option("Destromath");
var alemania25 = new Option("Dethecus");
var alemania26 = new Option("Die Aldor");
var alemania27 = new Option("Die Arguswacht");
var alemania28 = new Option("Die Nachtwache");
var alemania29 = new Option("Die Silberne Hand");
var alemania30 = new Option("Die Todeskrallen");
var alemania31 = new Option("Die ewige Wacht");
var alemania32 = new Option("Dun Morogh");
var alemania33 = new Option("Durotan");
var alemania34 = new Option("Echsenkessel");
var alemania35 = new Option("Eredar");
var alemania36 = new Option("Festung der Stürme");
var alemania37 = new Option("Forscherliga");
var alemania38 = new Option("Frostmourne");
var alemania39 = new Option("Frostwolf");
var alemania40 = new Option("Garrosh");
var alemania41 = new Option("Gilneas");
var alemania42 = new Option("Gorgonnash");
var alemania43 = new Option("Gul'dan");
var alemania44 = new Option("Kargath");
var alemania45 = new Option("Kel'Thuzad");
var alemania46 = new Option("Khaz'goroth");
var alemania47 = new Option("Kil'jaeden");
var alemania48 = new Option("Krag'jin");
var alemania49 = new Option("Kult der Verdammten");
var alemania50 = new Option("Lordaeron");
var alemania51 = new Option("Lothar");
var alemania52 = new Option("Madmortem");
var alemania53 = new Option("Mal'Ganis");
var alemania54 = new Option("Malfurion");
var alemania55 = new Option("Malorne");
var alemania56 = new Option("Malygos");
var alemania57 = new Option("Mannoroth");
var alemania58 = new Option("Mug'thol");
var alemania59 = new Option("Nathrezim");
var alemania60 = new Option("Nazjatar");
var alemania61 = new Option("Nefarian");
var alemania62 = new Option("Nera'thor");
var alemania63 = new Option("Nethersturm");
var alemania64 = new Option("Norgannon");
var alemania65 = new Option("Nozdormu");
var alemania66 = new Option("Onyxia");
var alemania67 = new Option("Perenolde");
var alemania68 = new Option("Proudmoore");
var alemania69 = new Option("Rajaxx");
var alemania70 = new Option("Rexxar");
var alemania71 = new Option("Sen'jin");
var alemania72 = new Option("Shattrath");
var alemania73 = new Option("Taerar");
var alemania74 = new Option("Teldrassil");
var alemania75 = new Option("Terrordar");
var alemania76 = new Option("Theradras");
var alemania77 = new Option("Thrall");
var alemania78 = new Option("Tichondrius");
var alemania79 = new Option("Tirion");
var alemania80 = new Option("Todeswache");
var alemania81 = new Option("Ulduar");
var alemania82 = new Option("Un'Goro");
var alemania83 = new Option("Vek'lor");
var alemania84 = new Option("Wrathbringer");
var alemania85 = new Option("Ysera");
var alemania86 = new Option("Zirkel des Cenarius");
var alemania87 = new Option("Zuluhed");
combo[0] = alemania1;
combo[1] = alemania2;
combo[2] = alemania3;
combo[3] = alemania4;
combo[4] = alemania5;
combo[5] = alemania6;
combo[6] = alemania7;
combo[7] = alemania8;
combo[8] = alemania9;
combo[9] = alemania10;
combo[10] = alemania11;
combo[11] = alemania12;
combo[12] = alemania13;
combo[13] = alemania14;
combo[14] = alemania15;
combo[15] = alemania16;
combo[16] = alemania17;
combo[17] = alemania18;
combo[18] = alemania19;
combo[19] = alemania20;
combo[20] = alemania21;
combo[21] = alemania22;
combo[22] = alemania23;
combo[23] = alemania24;
combo[24] = alemania25;
combo[25] = alemania26;
combo[26] = alemania27;
combo[27] = alemania28;
combo[28] = alemania29;
combo[29] = alemania30;
combo[30] = alemania31;
combo[31] = alemania32;
combo[32] = alemania33;
combo[33] = alemania34;
combo[34] = alemania35;
combo[35] = alemania36;
combo[36] = alemania37;
combo[37] = alemania38;
combo[38] = alemania39;
combo[39] = alemania40;
combo[40] = alemania41;
combo[41] = alemania42;
combo[42] = alemania43;
combo[43] = alemania44;
combo[44] = alemania45;
combo[45] = alemania46;
combo[46] = alemania47;
combo[47] = alemania48;
combo[48] = alemania49;
combo[49] = alemania50;
combo[50] = alemania51;
combo[51] = alemania52;
combo[52] = alemania53;
combo[53] = alemania54;
combo[54] = alemania55;
combo[55] = alemania56;
combo[56] = alemania57;
combo[57] = alemania58;
combo[58] = alemania59;
combo[59] = alemania60;
combo[60] = alemania61;
combo[61] = alemania62;
combo[62] = alemania63;
combo[63] = alemania64;
combo[64] = alemania65;
combo[65] = alemania66;
combo[66] = alemania67;
combo[67] = alemania68;
combo[68] = alemania69;
combo[69] = alemania70;
combo[70] = alemania71;
combo[71] = alemania72;
combo[72] = alemania73;
combo[73] = alemania74;
combo[74] = alemania75;
combo[75] = alemania76;
combo[76] = alemania77;
combo[77] = alemania78;
combo[78] = alemania79;
combo[79] = alemania80;
combo[80] = alemania81;
combo[81] = alemania82;
combo[82] = alemania83;
combo[83] = alemania84;
combo[84] = alemania85;
combo[85] = alemania86;
combo[86] = alemania87;
combo[87] = alemania88;
}

if (selec[2].selected == true)
{
var inglaterra1 = new Option("Aerie Peak");
var inglaterra2 = new Option("Agamaggan");
var inglaterra3 = new Option("Aggramar");
var inglaterra4 = new Option("Ahn'Qiraj");
var inglaterra5 = new Option("Al'Akir");
var inglaterra6 = new Option("Alonsus");
var inglaterra7 = new Option("Anachronos");
var inglaterra8 = new Option("Arathor");
var inglaterra9 = new Option("Argent Dawn");
var inglaterra10 = new Option("Aszune");
var inglaterra11 = new Option("Auchindoun");
var inglaterra12 = new Option("Azjol-Nerub");
var inglaterra13 = new Option("Azuremyst");
var inglaterra14 = new Option("Balnazzar");
var inglaterra15 = new Option("Blade's Edge");
var inglaterra16 = new Option("Bladefist");
var inglaterra17 = new Option("Bloodfeather");
var inglaterra18 = new Option("Bloodhoof");
var inglaterra19 = new Option("Bloodscalp");
var inglaterra20 = new Option("Boulderfist");
var inglaterra21 = new Option("Bronze Dragonflight");
var inglaterra22 = new Option("Bronzebeard");
var inglaterra23 = new Option("Burning Blade");
var inglaterra24 = new Option("Burning Legion");
var inglaterra25 = new Option("Burning Steppes");
var inglaterra26 = new Option("Chamber of Aspects");
var inglaterra27 = new Option("Chromaggus");
var inglaterra28 = new Option("Crushridge");
var inglaterra29 = new Option("Daggerspine");
var inglaterra30 = new Option("Darkmoon Faire");
var inglaterra31 = new Option("Darksorrow");
var inglaterra32 = new Option("Darkspear");
var inglaterra33 = new Option("Deathwing");
var inglaterra34 = new Option("Defias Brotherhood");
var inglaterra35 = new Option("Dentarg");
var inglaterra36 = new Option("Doomhammer");
var inglaterra37 = new Option("Draenor");
var inglaterra38 = new Option("Dragonblight");
var inglaterra39 = new Option("Dragonmaw");
var inglaterra40 = new Option("Drak'thul");
var inglaterra41 = new Option("Dunemaul");
var inglaterra42 = new Option("Earthen Ring");
var inglaterra43 = new Option("Emerald Dream");
var inglaterra44 = new Option("Emeriss");
var inglaterra45 = new Option("Eonar");
var inglaterra46 = new Option("Executus");
var inglaterra47 = new Option("Frostmane");
var inglaterra48 = new Option("Frostwhisper");
var inglaterra49 = new Option("Genjuros");
var inglaterra50 = new Option("Ghostlands");
var inglaterra51 = new Option("Grim Batol");
var inglaterra52 = new Option("Hakkar");
var inglaterra53 = new Option("Haomarush");
var inglaterra54 = new Option("Hellfire");
var inglaterra55 = new Option("Hellscream");
var inglaterra56 = new Option("Jaedenar");
var inglaterra57 = new Option("Karazhan");
var inglaterra58 = new Option("Kazzak");
var inglaterra59 = new Option("Khadgar");
var inglaterra60 = new Option("Kilrogg");
var inglaterra61 = new Option("Kor'gall");
var inglaterra62 = new Option("Kul Tiras");
var inglaterra63 = new Option("Laughing Skull");
var inglaterra64 = new Option("Lightbringer");
var inglaterra65 = new Option("Lightning's Blade");
var inglaterra66 = new Option("Magtheridon");
var inglaterra67 = new Option("Mazrigos");
var inglaterra68 = new Option("Moonglade");
var inglaterra69 = new Option("Nagrand");
var inglaterra70 = new Option("Neptulon");
var inglaterra71 = new Option("Nordrassil");
var inglaterra72 = new Option("Outland");
var inglaterra73 = new Option("Quel'Thalas");
var inglaterra74 = new Option("Ragnaros");
var inglaterra75 = new Option("Ravencrest");
var inglaterra76 = new Option("Ravenholdt");
var inglaterra77 = new Option("Runetotem");
var inglaterra78 = new Option("Saurfang");
var inglaterra79 = new Option("Scarshield Legion");
var inglaterra80 = new Option("Shadowsong");
var inglaterra81 = new Option("Shattered Halls");
var inglaterra82 = new Option("Shattered Hand");
var inglaterra83 = new Option("Silvermoon");
var inglaterra84 = new Option("Skullcrusher");
var inglaterra85 = new Option("Spinebreaker");
var inglaterra86 = new Option("Sporeggar");
var inglaterra87 = new Option("Steamwheedle Cartel");
var inglaterra88 = new Option("Stormrage");
var inglaterra89 = new Option("Stormreaver");
var inglaterra90 = new Option("Stormscale");
var inglaterra91 = new Option("Sunstrider");
var inglaterra92 = new Option("Sylvanas");
var inglaterra93 = new Option("Talnivarr");
var inglaterra94 = new Option("Tarren Mill");
var inglaterra95 = new Option("Terenas");
var inglaterra96 = new Option("Terokkar");
var inglaterra97 = new Option("The Maelstrom");
var inglaterra98 = new Option("The Sha'tar");
var inglaterra99 = new Option("The Venture Co");
var inglaterra100 = new Option("Thunderhorn");
var inglaterra101 = new Option("Trollbane");
var inglaterra102 = new Option("Turalyon");
var inglaterra103 = new Option("Twilight's Hammer");
var inglaterra104 = new Option("Twisting Nether");
var inglaterra105 = new Option("Vashj");
var inglaterra106 = new Option("Vek'nilash");
var inglaterra107 = new Option("Wildhammer");
var inglaterra108 = new Option("Xavius");
var inglaterra109 = new Option("Zenedar");
combo[0] = inglaterra1;
combo[1] = inglaterra2;
combo[2] = inglaterra3;
combo[3] = inglaterra4;
combo[4] = inglaterra5;
combo[5] = inglaterra6;
combo[6] = inglaterra7;
combo[7] = inglaterra8;
combo[8] = inglaterra9;
combo[9] = inglaterra10;
combo[10] = inglaterra11;
combo[11] = inglaterra12;
combo[12] = inglaterra13;
combo[13] = inglaterra14;
combo[14] = inglaterra15;
combo[15] = inglaterra16;
combo[16] = inglaterra17;
combo[17] = inglaterra18;
combo[18] = inglaterra19;
combo[19] = inglaterra20;
combo[20] = inglaterra21;
combo[21] = inglaterra22;
combo[22] = inglaterra23;
combo[23] = inglaterra24;
combo[24] = inglaterra25;
combo[25] = inglaterra26;
combo[26] = inglaterra27;
combo[27] = inglaterra28;
combo[28] = inglaterra29;
combo[29] = inglaterra30;
combo[30] = inglaterra31;
combo[31] = inglaterra32;
combo[32] = inglaterra33;
combo[33] = inglaterra34;
combo[34] = inglaterra35;
combo[35] = inglaterra36;
combo[36] = inglaterra37;
combo[37] = inglaterra38;
combo[38] = inglaterra39;
combo[39] = inglaterra40;
combo[40] = inglaterra41;
combo[41] = inglaterra42;
combo[42] = inglaterra43;
combo[43] = inglaterra44;
combo[44] = inglaterra45;
combo[45] = inglaterra46;
combo[46] = inglaterra47;
combo[47] = inglaterra48;
combo[48] = inglaterra49;
combo[49] = inglaterra50;
combo[50] = inglaterra51;
combo[51] = inglaterra52;
combo[52] = inglaterra53;
combo[53] = inglaterra54;
combo[54] = inglaterra55;
combo[55] = inglaterra56;
combo[56] = inglaterra57;
combo[57] = inglaterra58;
combo[58] = inglaterra59;
combo[59] = inglaterra60;
combo[60] = inglaterra61;
combo[61] = inglaterra62;
combo[62] = inglaterra63;
combo[63] = inglaterra64;
combo[64] = inglaterra65;
combo[65] = inglaterra66;
combo[66] = inglaterra67;
combo[67] = inglaterra68;
combo[68] = inglaterra69;
combo[69] = inglaterra70;
combo[70] = inglaterra71;
combo[71] = inglaterra72;
combo[72] = inglaterra73;
combo[73] = inglaterra74;
combo[74] = inglaterra75;
combo[75] = inglaterra76;
combo[76] = inglaterra77;
combo[77] = inglaterra78;
combo[78] = inglaterra79;
combo[79] = inglaterra80;
combo[80] = inglaterra81;
combo[81] = inglaterra82;
combo[82] = inglaterra83;
combo[83] = inglaterra84;
combo[84] = inglaterra85;
combo[85] = inglaterra86;
combo[86] = inglaterra87;
combo[87] = inglaterra88;
combo[88] = inglaterra89;
combo[89] = inglaterra90;
combo[90] = inglaterra91;
combo[91] = inglaterra92;
combo[92] = inglaterra93;
combo[93] = inglaterra94;
combo[94] = inglaterra95;
combo[95] = inglaterra96;
combo[96] = inglaterra97;
combo[97] = inglaterra98;
combo[98] = inglaterra99;
combo[99] = inglaterra100;
combo[100] = inglaterra101;
combo[101] = inglaterra102;
combo[102] = inglaterra103;
combo[103] = inglaterra104;
combo[104] = inglaterra105;
combo[105] = inglaterra106;
combo[106] = inglaterra107;
combo[107] = inglaterra108;
combo[108] = inglaterra109;
combo[109] = inglaterra110;
}

if (selec[3].selected == true)
{
var españa1 = new Option("C'Thun");
var españa2 = new Option("Colinas Pardas");
var españa3 = new Option("Dun Modr");
var españa4 = new Option("Exodar");
var españa5 = new Option("Los Errantes");
var españa6 = new Option("Minahonda");
var españa7 = new Option("Sanguino");
var españa8 = new Option("Shen'dralar");
var españa9 = new Option("Tyrande");
var españa10 = new Option("Uldum");
var españa11 = new Option("Zul'jin");
combo[0] = españa1;
combo[1] = españa2;
combo[2] = españa3;
combo[3] = españa4;
combo[4] = españa5;
combo[5] = españa6;
combo[6] = españa7;
combo[7] = españa8;
combo[8] = españa9;
combo[9] = españa10;
combo[10] = españa11;
}

if (selec[4].selected == true)
{
var francia1 = new Option("Arak-arahm");
var francia2 = new Option("Arathi");
var francia3 = new Option("Archimonde");
var francia4 = new Option("Chants éternels");
var francia5 = new Option("Cho'gall");
var francia6 = new Option("Confrérie du Thorium");
var francia7 = new Option("Conseil des Ombres");
var francia8 = new Option("Culte de la Rive noire");
var francia9 = new Option("Dalaran");
var francia10 = new Option("Drek'Thar");
var francia11 = new Option("Eitrigg");
var francia12 = new Option("Eldre'Thalas");
var francia13 = new Option("Elune");
var francia14 = new Option("Garona");
var francia15 = new Option("Hyjal");
var francia16 = new Option("Illidan");
var francia17 = new Option("Kael'thas");
var francia18 = new Option("Khaz Modan");
var francia19 = new Option("Kirin Tor");
var francia20 = new Option("Krasus");
var francia21 = new Option("La Croisade écarlate");
var francia22 = new Option("Les Clairvoyants");
var francia23 = new Option("Les Sentinelles");
var francia24 = new Option("Marécage de Zangar");
var francia25 = new Option("Medivh");
var francia26 = new Option("Naxxramas");
var francia27 = new Option("Ner'zhul");
var francia28 = new Option("Rashgarroth");
var francia29 = new Option("Sargeras");
var francia30 = new Option("Sinstralis");
var francia31 = new Option("Suramar");
var francia32 = new Option("Temple noir");
var francia33 = new Option("Throk'Feroth");
var francia34 = new Option("Uldaman");
var francia35 = new Option("Varimathras");
var francia36 = new Option("Vol'jin");
var francia37 = new Option("Ysondre");
combo[0] = francia1;
combo[1] = francia2;
combo[2] = francia3;
combo[3] = francia4;
combo[4] = francia5;
combo[5] = francia6;
combo[6] = francia7;
combo[7] = francia8;
combo[8] = francia9;
combo[9] = francia10;
combo[10] = francia11;
combo[11] = francia12;
combo[12] = francia13;
combo[13] = francia14;
combo[14] = francia15;
combo[15] = francia16;
combo[16] = francia17;
combo[17] = francia18;
combo[18] = francia19;
combo[19] = francia20;
combo[20] = francia21;
combo[21] = francia22;
combo[22] = francia23;
combo[23] = francia24;
combo[24] = francia25;
combo[25] = francia26;
combo[26] = francia27;
combo[27] = francia28;
combo[28] = francia29;
combo[29] = francia30;
combo[30] = francia31;
combo[31] = francia32;
combo[32] = francia33;
combo[33] = francia34;
combo[34] = francia35;
combo[35] = francia36;
combo[36] = francia37;
combo[37] = francia38;
}

if (selec[5].selected == true)
{
var italia1 = new Option("Nemesis");
var italia2 = new Option("Pozzo dell'Eternità");
combo[0] = italia1;
combo[1] = italia2;
}

if (selec[6].selected == true)
{
var portugal1 = new Option("Aggra");
combo[0] = portugal1;
}

if (selec[7].selected == true)
{
var rusia1 = new Option("Ashenvale");
var rusia2 = new Option("Azuregos");
var rusia3 = new Option("Blackscar");
var rusia4 = new Option("Booty Bay");
var rusia5 = new Option("Borean Tundra");
var rusia6 = new Option("Deathguard");
var rusia7 = new Option("Deathweaver");
var rusia8 = new Option("Deephome");
var rusia9 = new Option("Eversong");
var rusia10 = new Option("Fordragon");
var rusia11 = new Option("Galakrond");
var rusia12 = new Option("Goldrinn");
var rusia13 = new Option("Gordunni");
var rusia14 = new Option("Greymane");
var rusia15 = new Option("Grom");
var rusia16 = new Option("Howling Fjord");
var rusia17 = new Option("Lich King");
var rusia18 = new Option("Razuvious");
var rusia19 = new Option("Soulflayer");
var rusia20 = new Option("Thermaplugg");
combo[0] = rusia1;
combo[1] = rusia2;
combo[2] = rusia3;
combo[3] = rusia4;
combo[4] = rusia5;
combo[5] = rusia6;
combo[6] = rusia7;
combo[7] = rusia8;
combo[8] = rusia9;
combo[9] = rusia10;
combo[10] = rusia11;
combo[11] = rusia12;
combo[12] = rusia13;
combo[13] = rusia14;
combo[14] = rusia15;
combo[15] = rusia16;
combo[16] = rusia17;
combo[17] = rusia18;
combo[18] = rusia19;
combo[19] = rusia20;
}
}
</script> 
</head>
<body>
<h1>TWoWtter</h1> 
<h3>Escribe los datos a continuación: </h3>
<p>
<form method="post" action="/nombre_pj"> 
Nombre del personaje:<input name="nombre" type="text" value="" /> 
</p>
<p>Seleccione el pais y el reino del personaje:</p>
<p>
<form name="reinos" method="post" target="_blank" action="/nombre_pj"> 
 
<select name="pais" onChange="agregarOpciones(this.form)"> 
 
<option value="">[Seleccione una opción]</option> 
 
<option value="alemania">Alemania</option> 
 
<option value="inglaterra">Inglaterra</option> 

<option value="españa">España</option> 

<option value="francia">Francia</option> 

<option value="italia">Italia</option> 

<option value="portugal">Portugal</option> 

<option value="rusia">Rusia</option> 
 
</select> 
 
<select name="reino" onChange="direccion(this.form)"> 
 
<option value="">Esperando selección</option> 
</select> 
<a href="{{authorize_url}}">¡Autoriza la aplicación para twittear!</a>
<input type="submit" value="Enviar"></form>
</p>
</body>
