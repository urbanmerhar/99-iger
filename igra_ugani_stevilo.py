class Interval:
    def __init__(self, a, b):
        self.spodnja_meja = None
        self.zgornja_meja = None

    def nastavi_spodnjo_mejo(self, spodnja):
        self.spodnja_meja = spodnja

    def nastavi_zgornjo_mejo(self, zgornja):
        self.zgornja_meja = zgornja

class Stevilo:
    def __init__(self, trenutno_stevilo, kolikokrat_smo_ze_ugibali):
        self.trenutno_stevilo = None
        self.kolikokrat_smo_ze_ugibali = 0

    def novo_stevilo(self, stevilo_ki_ga_vnese_igralec):
        self.trenutno_stevilo = stevilo_ki_ga_vnese_igralec
        self.kolikokrat_smo_ze_ugibali += 1