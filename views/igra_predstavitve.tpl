% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/IGRA-PREDSTAVITVE.png"
    style="width:865px;height:104px;"
 />
<hr>
<p>Igra predstavitve je igra kjer te vprašam kdo si. Vse kar moraš narediti je to da zapišeš svoje ime in ga nato potrdiš.</p>
<hr>

<p><em>Kdo si?</em></p>

<form action="/Igra_predstavitve/" method="POST">
    Ime: <input type="text" name="ime_igralca">
    <input type="submit" value="Potrdi">
</form>

