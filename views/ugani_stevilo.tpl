% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/UGANI-STEVILO.png"
    style="width:632px;height:102px;"
 />
<hr>
<div class="container is-fluid">
    <h3 class="subtitle is-3">
        <p>Preprosta igra ugibanja števil. Interval je vsakič znova ustvarjen naključno. Postavila pa bova par pravil:
            <div class="content">
                <ol type="1">
                    <li>
                        Vedno iščeva celoštevilo.
                    </li>
                    <li>
                        Če vneseš prazno polje ali nekaj kar ni celoštevilo se to šteje kot en poskus.
                    </li>
                    <li>
                        Dokler ne uganeš trenutnega iskanega števila bo igra tekla naprej.
                    </li>
                </ol>
            </div>
        </p>
    </h3>
</div>
<hr>
<div class="container is-fluid">
    <h3 class="subtitle is-3">
        <p>
            Ugibaš na intervalu od <b>{{spodnja_meja}}</b> do <b>{{zgornja_meja}}</b>.
        </p>
        <p>
            {{sporocilo}}
        </p>
    </h3>
</div>

<div class="container is-fluid">
    <nav class="level">
        <div class="level-left">
            <form action="/Ugani_stevilo/">
                <div class="field has-addons">
                    <div class="control">
                        <p class="control has-icons-left">
                            <input class="input is-rounded is-large is-info" type="text" name="trenutno_stevilo" placeholder="Število">
                            <span class="icon is-small is-left">
                                <i class="fas fa-dice"></i>
                            </span>
                        </p>
                    </div>
                    <div class="control">
                        <input class="button is-rounded is-large is-info" type='submit' value="Ugibaj" />
                    </div>
                </div>
            </form>
        </div>
    </nav>
</div>
Iščemo: {{iskano_stevilo}}
Od {{spodnja_meja}}, do {{zgornja_meja}}