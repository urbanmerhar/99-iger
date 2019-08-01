import bottle
# MENI

@bottle.get('/meni/')
def pozdravi():
    return bottle.template('meni.tpl')

# IGRA PREDSTAVITVE
@bottle.get('/Igra_predstavitve/')
def predstavi_se():
    return bottle.template('igra_predstavitve.tpl')

#UGANI ŠTEVILO
@bottle.get('/Ugani_stevilo/')
def ugani_stevilo():
    return bottle.template('igra_predstavitve.tpl')

#NAKLJUČNI KVIZ
@bottle.get('/Nakljucni_kviz/')
def kviz():
    return bottle.template('igra_predstavitve.tpl')

bottle.run(debug=True, reloader=True)