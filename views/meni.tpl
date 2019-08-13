% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/99-IGER.png"
    style="width:433px;height:129px;"
/>
<hr>
<div class="container is-fluid">
    <h1 class="title is-1">
        Uživaj v igranju iger.
    </h1>
</div>
<div class="container is-fluid">
    <h1 class="subtitle is-1">Igre</h1>
    <ul>
        <li>
            <form action="/Igra_predstavitve/">
                <input class="button is-info" type="submit" value="Igra predstavitve">
            </form>
        </li>
        <li>
            <form action="/Ugani_stevilo/">
                <input class="button is-info" type="submit" value="Ugani število">    
            </form>
        </li>
        <li>
            <form action="/Nakljucni_kviz/">
                <input class="button is-info" type="submit" value="Naključni kviz">
            </form>
        </li>
    </ul>
</div>

<hr>
<div class="container is-fluid">
    <form action="/Opis_projekta/">
        <input class="button is-info" type="submit" value="O projektu">
    </form>
</div>
