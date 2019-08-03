#Nagrade za zmage pri igrah.
import random

seznam_nagrad = [
    'Kaj dobiš, če daš dva polža skupaj? Celža.'
    
]

def vrni_nagrado(seznam):
    return random.choice(seznam)