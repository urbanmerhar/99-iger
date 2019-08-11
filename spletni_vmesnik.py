import bottle

#MENI
@bottle.get('/')
def glavni_meni():
    return bottle.template('meni.tpl')

#SLIKE
@bottle.get('/static/slike/<ime_dat>')
def server_static(ime_dat):
    return bottle.static_file(ime_dat, root='./static/slike')

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
    # Vsaj na par stvari smo lahko pozorni...
    if ime == '':
        napaka = 'Lažeš kradeš, bolhe ješ,...'
        return bottle.template('igra_predstavitve_napaka.tpl', napaka=napaka)
    elif ime[0] not in 'ABCČDEFGHIJKLMNOPRSŠTUVZŽQWXYĆĐ':
        napaka = 'Velika začetnica pa se spodobi. Tako slab pa nisem v slovnici.'
        return bottle.template('igra_predstavitve_napaka.tpl', napaka=napaka)
    else:
        return bottle.template('igra_predstavitve_2.tpl', ime=ime)

@bottle.post('/Igra_predstavitve_konec/')
def predstavi_se_zmaga():
    resnica = bottle.request.forms.getunicode('odgovor')
    # Za zmago naj vsaj odgovori na vprašanje.
    if resnica in ['Da', 'Ne', 'Mogoče']:
        return bottle.template('igra_predstavitve_3.tpl')
    else:
        napaka = 'Razočaral si me, ker nisi izbral nobene možnosti.'
        return bottle.template('igra_predstavitve_napaka.tpl', napaka=napaka)

#UGANI ŠTEVILO
from ugani_stevilo import Ugani_stevilo
import random

igra = Ugani_stevilo()
igra.ustvari_novo_igro(igra)
@bottle.get('/Ugani_stevilo/')
def ugani_stevilo():
    # Najdi način za resetiranje igre
    # COOKIES??
    zgornja_meja = igra.zgornja_meja
    spodnja_meja = igra.spodnja_meja
    iskano_stevilo = igra.iskano_stevilo
    stevilo_ugibov = igra.kolikokrat_smo_ze_ugibali

    trenutno_stevilo = bottle.request.query.trenutno_stevilo
    sporocilo = ''
    if trenutno_stevilo == '':
        igra.novo_ugibanje(trenutno_stevilo)
        return bottle.template('ugani_stevilo.tpl',  zgornja_meja=zgornja_meja, spodnja_meja=spodnja_meja, iskano_stevilo=iskano_stevilo, sporocilo=sporocilo)
    # NIŽJE
    elif int(trenutno_stevilo) > iskano_stevilo:
        sporocilo = 'Nižje.'
        igra.novo_ugibanje(trenutno_stevilo)
        return bottle.template('ugani_stevilo.tpl',  zgornja_meja=zgornja_meja, spodnja_meja=spodnja_meja, iskano_stevilo=iskano_stevilo, sporocilo=sporocilo)
    # VIŠJE
    elif int(trenutno_stevilo) < iskano_stevilo:
        sporocilo = 'Višje.'
        igra.novo_ugibanje(trenutno_stevilo)
        return bottle.template('ugani_stevilo.tpl',  zgornja_meja=zgornja_meja, spodnja_meja=spodnja_meja, iskano_stevilo=iskano_stevilo, sporocilo=sporocilo)
    # ZMAGA
    elif int(trenutno_stevilo) == iskano_stevilo:
        igra.ustvari_novo_igro(igra)
        return bottle.template('uganil_si_pravo_stevilo.tpl', iskano_stevilo=iskano_stevilo, stevilo_ugibov=stevilo_ugibov)
    # POMOJE JE TOLE NEPOTREBNO
    #else:
    #    igra.novo_ugibanje(trenutno_stevilo)
    #    return bottle.template('ugani_stevilo.tpl',  zgornja_meja=zgornja_meja, spodnja_meja=spodnja_meja, iskano_stevilo=iskano_stevilo, sporocilo=sporocilo)

#==============================  DELUJE DA TEGA NE BOM RABIL VEČ
@bottle.post('/Ugibaj_stevilo/')
def ugibaj_stevilo():
    ugibano_stevilo = int(bottle.request.forms.getunicode('trenutno_stevilo'))
    return bottle.redirect('/Ugani_stevilo/')

#    return 'Ugibaš na intervalu od {} do {}. Iskali smo {}. Poskusili smo z {}.'.format(spodnja_meja, zgornja_meja, iskano_stevilo, ugibano_stevilo)
#==============================
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

#ZAGON BOTTLA
bottle.run(debug=True, reloader=True)