import bottle
# MENI

@bottle.get('/meni/')
def glavni_meni():
    return bottle.template('meni.tpl')

# IGRA PREDSTAVITVE
@bottle.get('/Igra_predstavitve/')
def predstavi_se():
    return bottle.template('igra_predstavitve')

@bottle.post('/Igra_predstavitve/')
def predstavi_se_resnica():
    ime = bottle.request.forms.getunicode('ime_igralca')
    return bottle.template('igra_predstavitve_2.tpl', ime=ime)

@bottle.post('/Igra_predstavitve_konec/')
def predstavi_se_zmaga():
    resnica = bottle.request.forms.getunicode('odgovor')
    return bottle.template('igra_predstavitve_3.tpl')

# UGANI ŠTEVILO
from igra_ugani_stevilo import Interval, Stevilo

@bottle.get('/Ugani_stevilo/')
def ugani_stevilo():
    return bottle.template('ugani_stevilo.tpl')

@bottle.post('/Ugani_stevilo/')
def interval_ugibanja():
    a = int(bottle.request.forms.getunicode('a'))
    b = int(bottle.request.forms.getunicode('b'))
    return 'Ugibal boš na intervalu od {} do {}.'.format(a, b)


# NAKLJUČNI KVIZ
import random
import copy

#Vprašanja bodo našteta v obliki v obliki: 'vprašanje':[možnosti]
#Kaj je '___'?
vprasanja_za_kviz = {
    'Ama':['Japonska nabiralka biserov', 'Ena izmed Bondovih deklet', 'Otok v Pacifiku', 'Tibetansko govedo'],
    'paradižnik':['Sadje', 'Zelenjava', 'Meso', 'Goba'],
    'Mars':['Planet in rimski bog vojne', 'Samo planet', 'Planet in grški bog vojne', 'Planet in etruščanski bog'],
    'Jamb':['Vrsta ritma in igra', 'Vrsta ritma', 'Igra', 'Igra in pripovedno delo'],
    'State of Washington':['Zvezna država v ZDA', 'Glavno mesto ZDA', 'Nekdanji predsednik ZDA', 'Samostojna država'],
    'Jak':['Tibetansko govedo', 'Vrsta bizona', 'Afriška volovska antilopa', 'Azijska divja koza'],
    'Fobos':['Marsov naravni satelit', 'Jupitrov naravni satelit', 'Venerin naravni satelit', 'Zemljin naravni satelit' ],
    'Cerera':['Rimska boginja ljubezni in pritlikavi planet', 'Samo rimska boginja ljubezni', 'Egipčanska boginja neba', 'Grška boginja zdravilstva'],
    'bil vzdevek nemškega generalfeldmaršala Erwina Rommla':['Puščavska lisica', 'Afriški lev', 'Puščavski tiger', 'Nemški panter'],
    'Tar':['Azijska divja koza', 'Tibetansko govedo', 'Afriška volovska antilopa', 'Pritlikav indonezijski konj']
}

# da se ne bodo vprasanja_za_kviz kaj pokvarila
vprasanja = copy.deepcopy(vprasanja_za_kviz)

#Ustvarimo funkcijo za mešanje, da ne bo kviz ves čas enak.

def premesaj(v):
    '''Funkcija premeša elemente.'''
    premesani_kljuci = []
    i = 0
    while i < len(v):
        trenutno_izbran = random.choice(list(v.keys()))
        if trenutno_izbran not in premesani_kljuci:
            premesani_kljuci.append(trenutno_izbran)
            i += 1
    return premesani_kljuci

@bottle.get('/Nakljucni_kviz/')
def kviz():
    premesana_vprasanja = premesaj(vprasanja)
    for i in list(vprasanja.keys()):
        random.shuffle(vprasanja[i])
    return bottle.template('nakljucni_kviz.tpl', q=premesana_vprasanja, o=vprasanja)

@bottle.post('/Kviz_resitev/')
def kviz_resitev():
    pravilno = 0
    vsi = 0
    for i in vprasanja.keys():
        odgovori = bottle.request.forms.getunicode(i)
        vsi += 1
        if vprasanja_za_kviz[i][0] == odgovori:
            pravilno += 1
    return 'Pravilno je {} od {}'.format(pravilno, vsi)


#ZAGON BOTTLA
bottle.run(debug=True, reloader=True)