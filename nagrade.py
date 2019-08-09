#Nagrade za zmage pri igrah.
import random

seznam_sal = [
    'Kaj dobiš, če daš dva polža skupaj? Celža!',
    'Kateri avto gre najhitreje po makadamu? Služben!',
    'Chuck Norris je posnel izumitev kamere!',
    'Zakaj se policist v kinu, ko gleda komedijo, usede v zadnjo vrsto? Kdor se zadnji smeje, se najslajše smeje!',
    'Kako dobiš marmelado? Tako da olupiš krof!'
    
]

seznam_zanimivosti = [
    'Fobos je Marsov naravni satelit, ki ima nestabilno tirnico in se zato na približno vsakih 100 let Marsu približa za 9m.',
    'Največji proizvajalec pnevmatik na svetu je Lego.',
    'Vžigalnik(1823) je bil izumljen pred vžigalico(1826).',
    'Leta 1899 je prvi avto dosegel hitrost 100km/h. Ta avto je bil električen.',
    '"Potrkati po lesu" izvira iz poganske kulture, namen dejanja pa je odganjati zle duhove, ki živijo v drevesih.',
    'Prvi kralj Belgije je bil nemec, vojak ruske vojske, poročen z angleško princeso in je že zavrnil kronanje za kralja Grčije.',
    'V starem Egiptu so uporabljali kolendarje z 12 meseci po 30 dni ter 5 dni za praznike. Skupno torej 365 dni tako kot danes.',
    'Med drugo svetovno vojno se je nizozemska ladja HNLMS Abraham Crijnssen ob umiku iz Pacifika zakamuflirala kot tropski otok.',


]

def vrni_nagrado(seznam):
    return random.choice(seznam)


# WTF fun fact 7501 (stari egipt)