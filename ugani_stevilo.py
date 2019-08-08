import random

class Ugani_stevilo:
    def __init__(self):
        self.iskano_stevilo = None
        self.trenutno_stevilo = None
        self.kolikokrat_smo_ze_ugibali = 0
        a = random.randint(-10000, 10000)
        b = random.randint(-10000, 10000)
        if a < b:
            self.spodnja_meja = a
            self.zgornja_meja = b
        elif a > b:
            self.spodnja_meja = b
            self.zgornja_meja = a
        
        

    def novo_ugibanje(self, stevilo_ki_ga_vnese_igralec):
        self.trenutno_stevilo = stevilo_ki_ga_vnese_igralec
        self.kolikokrat_smo_ze_ugibali += 1

#    def interval_ugibanja(self, spodnja, zgornja):
#        self.spodnja = spodnja
#        self.zgornja = zgornja
