#Nagrade za zmage pri igrah.
import random

seznam_nagrad = [
    'Kaj dobiš, če daš dva polža skupaj? Celža.',
    'Fobos je Marsov naravni satelit, ki ima nestabilno orbito in se zato na vsakih 100 let Marsu približa za 9m.'
    
]

def vrni_nagrado(seznam):
    return random.choice(seznam)