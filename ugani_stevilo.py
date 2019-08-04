class Ugani_stevilo:
    def __init__(self):
        self.iskano_stevilo = None
        self.trenutno_stevilo = None
        self.kolikokrat_smo_ze_ugibali = 0

    def novo_ugibanje(self, stevilo_ki_ga_vnese_igralec):
        self.trenutno_stevilo = stevilo_ki_ga_vnese_igralec
        self.kolikokrat_smo_ze_ugibali += 1

    def interval_ugibanja(self, spodnja, zgornja):
        self.spodnja = spodnja
        self.zgornja = zgornja
