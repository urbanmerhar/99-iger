import bottle

@bottle.get('/meni/')
def pozdravi():
    return bottle.template('meni.tpl')

bottle.run(debug=True, reloader=True)