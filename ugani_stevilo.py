import random

class Ugani_stevilo:
    def __init__(self):
        self.trenutno_stevilo = None
        self.kolikokrat_smo_ze_ugibali = 0
        a = random.randint(-1, 3)
        b = random.randint(-1, 3)
        self.spodnja_meja = min(a, b)
        self.zgornja_meja = max(a, b)
        self.iskano_stevilo = random.randint(self.spodnja_meja, self.zgornja_meja)
        #Pogoj še čekiraj kako deluje.
        self.pogoj_za_nagrado = (self.spodnja_meja + self.zgornja_meja) // 4
        
        

    def novo_ugibanje(self, stevilo_ki_ga_vnese_igralec):
        self.trenutno_stevilo = stevilo_ki_ga_vnese_igralec
        self.kolikokrat_smo_ze_ugibali += 1

#    def interval_ugibanja(self, spodnja, zgornja):
#        self.spodnja = spodnja
#        self.zgornja = zgornja
