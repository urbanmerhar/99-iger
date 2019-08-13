% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/UGANI-STEVILO.png"
    style="width:632px;height:102px;"
 />
<hr>
<div class="container is-fluid">
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
</div>
<hr>
<div class="container is-fluid">
    <p>
        Ugibaš na intervalu od <b>{{spodnja_meja}}</b> do <b>{{zgornja_meja}}</b>.
    </p>
    <p>
        {{sporocilo}}
    </p>
    <form action="/Ugani_stevilo/">
        Število: <input type="text" name="trenutno_stevilo">
        <input type='submit' value="Ugibaj" />
    </form>
</div>
Iščemo: {{iskano_stevilo}}
Od {{spodnja_meja}}, do {{zgornja_meja}}