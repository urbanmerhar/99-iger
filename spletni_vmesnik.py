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
@bottle.get('/Nakljucni_kviz/')
def kviz():
    return bottle.template('nakljucni_kviz.tpl')

bottle.run(debug=True, reloader=True)