#Nagrade za zmage pri igrah.
import random

seznam_sal = [
    'Kaj dobiš, če daš dva polža skupaj? Celža!',
    'Kateri avto gre najhitreje po makadamu? Služben!',
    'Chuck Norris je posnel izumitev kamere!'
    
]

seznam_zanimivosti = [
    'Fobos je Marsov naravni satelit, ki ima nestabilno tirnico in se zato na približno vsakih 100 let Marsu približa za 9m.',
    'Največji proizvajalec pnevmatik na svetu je Lego.'

]

def vrni_nagrado(seznam):
    return random.choice(seznam)


