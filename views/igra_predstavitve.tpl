% rebase('skupna_predloga.tpl')
<h1>Igra predstavitve</h1>
<hr />
Igra predstavitve je igra kjer te vprašam kdo si. Vse kar moraš narediti je to da zapišeš svoje ime in ga nato potrdiš.
<hr />
<em>Kdo si?</em>

<form action="/Igra_predstavitve/" method="POST">
    Ime: <input type="text" name="ime_igralca">
    <input type="submit" value="Potrdi">
</form>

