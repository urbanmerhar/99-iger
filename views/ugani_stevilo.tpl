% rebase('skupna_predloga.tpl')
<h1>Ugani število</h1>
<hr />
<p>Preprosta igra ugibanja števil. Postavila pa bova par pravil:
<ul>
    <li>
        Vedno iščeva celoštevilo.
    </li>
    <li>
        V oknca spodaj najprej vneseš spodnjo mejo in nato zgornjo mejo ugibanja.
    </li>
</ul>
</p>
<hr />

<p>
    Izberi interval na katerem boš iskal naključno število.
</p>
<form action="/Ugani_stevilo/" method="POST">
    Od: <input type="text" name="a">
    Do: <input type="text" name="b">
    <input type="submit" value="Potrdi">
</form>