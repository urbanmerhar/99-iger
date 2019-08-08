import random
import copy

#Vprašanja bodo našteta v obliki v obliki: 'vprašanje':[možnosti]
#Pod prvo možnostjo je naveden pravilni odgovor!
#Kaj je '___'?
vprasanja_za_kviz = {
    'Ama':['Japonska nabiralka biserov', 'Ena izmed Bondovih deklet', 'Otok v Pacifiku', 'Tibetansko govedo'],
    'je dosegel Vasco de Gama':['Obplu Afriko in odkril pot do Indije', 'Obplu svet', 'Pristal v Južni Ameriki', 'Odkril Azore'],
    'Mars':['Planet in rimski bog vojne', 'Samo planet', 'Planet in grški bog vojne', 'Planet in etruščanski bog'],
    'Jamb':['Vrsta ritma in igra', 'Vrsta ritma', 'Igra', 'Igra in pripovedno delo'],
    'State of Washington':['Zvezna država v ZDA', 'Glavno mesto ZDA', 'Nekdanji predsednik ZDA', 'Samostojna država'],
    'Jak':['Tibetansko govedo', 'Vrsta bizona', 'Afriška volovska antilopa', 'Azijska divja koza'],
    'Fobos':['Marsov naravni satelit', 'Jupitrov naravni satelit', 'Venerin naravni satelit', 'Zemljin naravni satelit' ],
    'Cerera':['Rimska boginja ljubezni in pritlikavi planet', 'Samo rimska boginja ljubezni', 'Egipčanska boginja neba', 'Grška boginja zdravilstva'],
    'bil vzdevek generala Erwina Rommla':['Puščavska lisica', 'Afriški lev', 'Puščavski tiger', 'Nemški panter'],
    'Tar':['Azijska divja koza', 'Tibetansko govedo', 'Afriška volovska antilopa', 'Pritlikav indonezijski konj']
}

#Da se ne bodo vprasanja_za_kviz kaj pokvarila
vprasanja = copy.deepcopy(vprasanja_za_kviz)

#Ustvarimo funkcijo za mešanje, da ne bo kviz ves čas enak.

def premesaj(v):
    '''Funkcija premeša elemente.'''
    premesani_kljuci = []
    i = 0
    while i < len(v):
        trenutno_izbran = random.choice(list(v.keys()))
        if trenutno_izbran not in premesani_kljuci:
            premesani_kljuci.append(trenutno_izbran)
            i += 1
    return premesani_kljuci
