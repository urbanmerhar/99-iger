% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<section class="hero is-small">
    <div class="hero-body is-small">
        <figure class="image">
            <img src="/static/slike/IGRA-PREDSTAVITVE.png"
                style="width:865px;height:104px;"
            />
        </figure>
    </div>
</section>
<hr>
<div class="container is-fluid">
    <h3 class="subtitle is-3">
        <p>
            Igra predstavitve je igra kjer te vprašam kdo si. Vse kar moraš narediti je to da zapišeš svoje ime in ga nato potrdiš.
        </p>
    </h3>
</div>
<hr>
<div class="container is-fluid">
    <h3 class="subtitle is-3">
        <p>
            <em>Kdo si?</em>
        </p>
    </h3>
</div>
<div class="container is-fluid">
    <nav class="level">
        <div class="level-left">
            <form action="/Igra_predstavitve/" method="POST">
                <div class="field has-addons">
                    <div class="control">
                        <p class="control has-icons-left">
                            <input class="input is-rounded is-large is-info" type="text" name="ime_igralca" placeholder="Ime">
                            <span class="icon is-small is-left">
                                <i class="fas fa-user-alt"></i>
                            </span>
                        </p>
                    </div>
                    <div class="control">
                        <input class="button is-rounded is-large is-info" type="submit" value="Potrdi">
                    </div>
                </div>
            </form>
        </div>
    </nav>
</div>