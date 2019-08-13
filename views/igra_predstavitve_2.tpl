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
        <ul>
            <li>
                <input type="radio" name="odgovor" value="Da">
                Da
            </li>
            <li>
                <input type="radio" name="odgovor" value="Ne">
                Ne
            </li>
            <li>
                <input type="radio" name="odgovor" value="Mogoče">
                Mogoče
            </li>
        </ul>
        <div class="control">
            <input class="button is-info" type="submit" value="Hmmm">
        </div>
    </form>
</div>
