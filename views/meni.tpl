% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/99-IGER.png"
    style="width:433px;height:129px;"
/>
<hr>
<div class="container is-fluid">
    TU NAPIŠI KAKŠNO BESEDILO O IDEJI TEGA PROJEKTA/IGRE
</div>
<div class="container is-fluid">
    <h2>Igre:</h2>
    <ul>
        <li>
            <form action="/Igra_predstavitve/">
                <input type="submit" value="Igra predstavitve">
            </form>
        </li>
        <li>
            <form action="/Ugani_stevilo/">
                <input type="submit" value="Ugani število">    
            </form>
        </li>
        <li>
            <form action="/Nakljucni_kviz/">
                <input type="submit" value="Naključni kviz">
            </form>
        </li>
    </ul>
</div>

<hr>
<div class="container is-fluid">
    <form action="/Opis_projekta/">
        <input type="submit" value="O projektu">
    </form>
</div>
