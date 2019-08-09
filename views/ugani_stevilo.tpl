% rebase('skupna_predloga.tpl')
<h1>Ugani število</h1>
<hr>
<p>Preprosta igra ugibanja števil. Interval je vsakič znova ustvarjen naključno. Postavila pa bova par pravil:
<ul>
    <li>
        Vedno iščeva celoštevilo.
    </li>
    <li>
        Če vneseš prazno polje se to šteje kot en poskus.
    </li>
</ul>
</p>
<hr>
<p>Ugibaš na intervalu od <b>{{spodnja_meja}}</b> do <b>{{zgornja_meja}}</b>.</p>
<p>{{sporocilo}}</p>
<form action="/Ugani_stevilo/">
    Število: <input type="text" name="trenutno_stevilo">
    <input type='submit' value="Ugibaj" />
</form>
Iščemo: {{iskano_stevilo}}
Od {{spodnja_meja}}, do {{zgornja_meja}}
</form>