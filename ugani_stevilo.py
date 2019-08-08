import random

class Ugani_stevilo:
    def __init__(self):
        self.trenutno_stevilo = None
        self.kolikokrat_smo_ze_ugibali = 0
        a = random.randint(-10000, 10000)
        b = random.randint(-10000, 10000)
        c = random.randint(-10000, 10000)
        self.spodnja_meja = min(a, b, c)
        self.zgornja_meja = max(a, b, c)
        self.iskano_stevilo = a + b + c - self.spodnja_meja - self.zgornja_meja
        #Pogoj še čekiraj kako deluje.
        self.pogoj_za_nagrado = (self.spodnja_meja + self.zgornja_meja) // 4
        
        

    def novo_ugibanje(self, stevilo_ki_ga_vnese_igralec):
        self.trenutno_stevilo = stevilo_ki_ga_vnese_igralec
        self.kolikokrat_smo_ze_ugibali += 1

#    def interval_ugibanja(self, spodnja, zgornja):
#        self.spodnja = spodnja
#        self.zgornja = zgornja
