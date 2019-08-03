import bottle

#MENI
@bottle.get('/meni/')
def glavni_meni():
    return bottle.template('meni.tpl')

#O PROJEKTU
@bottle.get('/Opis_projekta/')
def opis_projekta():
    return bottle.template('opis_projekta.tpl')

#IGRA PREDSTAVITVE
@bottle.get('/Igra_predstavitve/')
def predstavi_se():
    return bottle.template('igra_predstavitve')

@bottle.post('/Igra_predstavitve/')
def predstavi_se_resnica():
    ime = bottle.request.forms.getunicode('ime_igralca')
    return bottle.template('igra_predstavitve_2.tpl', ime=ime)

@bottle.post('/Igra_predstavitve_konec/')
def predstavi_se_zmaga():
    # resnica = bottle.request.forms.getunicode('odgovor')
    # če jo bom slučajno potreboval (DA, NE, MOGOČE)
    return bottle.template('igra_predstavitve_3.tpl')

#UGANI ŠTEVILO
from igra_ugani_stevilo import Interval, Stevilo

@bottle.get('/Ugani_stevilo/')
def ugani_stevilo():
    return bottle.template('ugani_stevilo.tpl')

@bottle.post('/Ugani_stevilo/')
def interval_ugibanja():
    a = int(bottle.request.forms.getunicode('a'))
    b = int(bottle.request.forms.getunicode('b'))
    return bottle.template('ugibaj_stevilo.tpl', a=a, b=b)

@bottle.post('/Ugibaj_stevilo/')
def ugibaj_stevilo():
    stevilo_ki_ga_odda_igralec = int(bottle.request.forms.getunicode('trenutno_stevilo'))
    return 'Ugibal si število {}.'.format(stevilo_ki_ga_odda_igralec)

@bottle.get('/Uganil_si_pravo_stevilo/')
def uganil_si_pravo_stevilo():
    return bottle.template('uganil_si_pravo_stevilo.tpl')


#NAKLJUČNI KVIZ
import random
from nakljucni_kviz import vprasanja_za_kviz, vprasanja, premesaj

@bottle.get('/Nakljucni_kviz/')
def kviz():
    premesana_vprasanja = premesaj(vprasanja)
    for i in list(vprasanja.keys()):
        random.shuffle(vprasanja[i])
    return bottle.template('nakljucni_kviz.tpl', q=premesana_vprasanja, o=vprasanja)

@bottle.post('/Kviz_resitev/')
def kviz_resitev():
    pravilno = 0
    vse_mozne_tocke = 0
    for i in vprasanja.keys():
        odgovori = bottle.request.forms.getunicode(i)
        vse_mozne_tocke += 1
        if vprasanja_za_kviz[i][0] == odgovori:
            pravilno += 1
    return bottle.template('nakljucni_kviz_rezultat', pravilno=pravilno, vse_mozne_tocke=vse_mozne_tocke)

# MISLIM DA ŠUMNIKI PRI DVEH ODGOVORIH NAGAJATA,
# paradiŽnik in nemŠki generalmarŠal ne delata
# program moti to, da je v ključu key() šumnik
# NAPAKA JE POTEM MOGOČE PRI getunicode(i)


#ZAGON BOTTLA
bottle.run(debug=True, reloader=True)