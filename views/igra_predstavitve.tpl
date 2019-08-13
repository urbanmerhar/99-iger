% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/IGRA-PREDSTAVITVE.png"
    style="width:865px;height:104px;"
 />
<hr>
<div class="container is-fluid">

        <p>
            Igra predstavitve je igra kjer te vprašam kdo si. Vse kar moraš narediti je to da zapišeš svoje ime in ga nato potrdiš.
        </p>

    </div>
<hr>
<div class="container is-fluid">
    <p><em>Kdo si?</em></p>
</div>
<div class="container is-fluid">
    <nav class="level">
        <div class="level-left">
            <form action="/Igra_predstavitve/" method="POST">
                Ime: <input class="input is-rounded is-large" type="text" name="ime_igralca" placeholder="Ime">
                <input type="submit" value="Potrdi">
            </form>
        </div>
    </nav>
</div>

