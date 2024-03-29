% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<section class="hero is-small">
    <div class="hero-body is-small">
        <figure class="image">
            <img src="/static/slike/UGANI-STEVILO.png"
                style="width:632px;height:102px;"
             />
        </figure>
    </div>
</section>
<hr>
<div class="container is-fluid">
    <h3 class="subtitle is-3">
        <p>Preprosta igra ugibanja števil. Interval je vsakič znova ustvarjen naključno. Postavila pa bova par pravil:
            <div class="content">
                <ol type="1">
                    <li>
                        Vedno iščeva celo število.
                    </li>
                    <li>
                        Če vneseš prazno polje ali nekaj kar ni celo število se to šteje kot en poskus.
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
    </h3>
</div>
<div class="container is-fluid">
    <h3 class="subtitle is-3">
        {{sporocilo}}
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
<!-- ZA ČEKIRANJE: Iščemo: {{iskano_stevilo}} Od {{spodnja_meja}}, do {{zgornja_meja}}-->