% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/IGRA-PREDSTAVITVE.png"
    style="width:865px;height:104px;"
 />
<hr>
<div class="container is-fluid">
    <h4 class="subtitle is-4">
        <p>
            <em>Ali si res {{ime}}?</em>
        </p>
    </h4>
</div>
<div class="container is-fluid">
    <form action="/Igra_predstavitve_konec/" method="POST">

        <h5 class="subtitle is-5">
            <input type="radio" name="odgovor" value="Da">
            Da
        </h5>

        <h5 class="subtitle is-5">
            <input type="radio" name="odgovor" value="Ne">
            Ne
        </h5>

        <h5 class="subtitle is-5">
            <input type="radio" name="odgovor" value="Mogoče">
            Mogoče
        </h5>

        <div class="container is-fluid">
            <br>
            <input class="button is-info" type="submit" value="Hmmm">
        </div>
    </form>
</div>
