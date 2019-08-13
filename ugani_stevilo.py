import random

class Ugani_stevilo:
    def __init__(self, test=False):
        self.test = test
        self.trenutno_stevilo = None
        self.kolikokrat_smo_ze_ugibali = 0
        self.spodnja_meja = None
        self.zgornja_meja = None
        self.iskano_stevilo = None
        
    def ustvari_stevila(self):
        a = random.randint(-100, 100)
        b = random.randint(-100, 100)
        self.spodnja_meja = min(a, b)
        self.zgornja_meja = max(a, b)
        self.iskano_stevilo = random.randint(self.spodnja_meja, self.zgornja_meja)

    def novo_ugibanje(self, stevilo_ki_ga_vnese_igralec):
        self.trenutno_stevilo = stevilo_ki_ga_vnese_igralec
        self.kolikokrat_smo_ze_ugibali += 1
    
    def stikalo(self, preklopi):
        self.test = True

    def stevilo_ugibanj_postavi_na_nic(self):
        self.kolikokrat_smo_ze_ugibali = 0

        
