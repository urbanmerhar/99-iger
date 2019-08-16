% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<section class="hero is-small">
    <div class="hero-body is-small">
        <figure class="image">
            <img src="/static/slike/99-IGER.png"
                style="width:333px;height:99px;"
            />
        </figure>
    </div>
</section>
<hr>
<div class="container is-fluid">
    <h1 class="title is-1">
        Uživaj v igranju iger!
    </h1>
</div>
<div class="container is-fluid">
    <h1 class="subtitle is-1">Igre:</h1>
    <div class="container is-fluid">
        <div class="columns">
            <div class="column is-one-third">
                <form action="/Igra_predstavitve/">
                    <input class="button is-info is-large" type="submit" value="Igra predstavitve">
                </form>
            </div>
        </div>
        <div class="columns">
            <div class="column is-one-third">
                <form action="/Ugani_stevilo/">
                    <input class="button is-info is-large" type="submit" value="Ugani število">    
                </form>
            </div>
        </div>
        <div class="columns">
            <div class="column is-one-third">
                <form action="/Nakljucni_kviz/">
                    <input class="button is-info is-large" type="submit" value="Naključni kviz">
                </form>
            </div>
        </div>
    </div>
</div>

<hr>
<div class="container is-fluid">
    <form action="/Opis_projekta/">
        <input class="button is-info is-large" type="submit" value="O projektu">
    </form>
</div>
