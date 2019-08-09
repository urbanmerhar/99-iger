% rebase('skupna_predloga.tpl')
<h1>Ugani število</h1>
<hr>
<p>Preprosta igra ugibanja števil. Postavila pa bova par pravil:
<ul>
    <li>
        Vedno iščeva celoštevilo.
    </li>
</ul>
</p>
<hr>
<p>Ugibaš na intervalu od <b>{{spodnja_meja}}</b> do <b>{{zgornja_meja}}</b>.</p>
<form action="/Ugibaj_stevilo/" method="POST">
    Število: <input type="text" name="trenutno_stevilo">
    <input type='submit' value="Ugibaj" />
</form>
Iščemo: {{iskano_stevilo}}
Od {{spodnja_meja}}, do {{zgornja_meja}}
</form>