#Nagrade za zmage pri igrah.
import random

seznam_sal = [
    'Kaj dobiš, če daš dva polža skupaj? <br>Celža!',
    'Kateri avto gre najhitreje po makadamu? <br>Služben!'
    
]

seznam_zanimivosti = [
    'Fobos je Marsov naravni satelit, ki ima nestabilno orbito in se zato na približno vsakih 100 let Marsu približa za 9m.'

]

def vrni_nagrado(seznam):
    return random.choice(seznam)


