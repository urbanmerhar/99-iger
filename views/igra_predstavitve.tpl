% rebase('skupna_predloga.tpl')
<h1>Igra predstavitve</h1>
<hr />
Kdo si?
<form action="/Igra_predstavitve/" method="POST">
    Ime: <input type="text" name="ime_igralca">
    <input type="submit" value="Potrdi">
</form>

<form action="/meni/">
    <input type="submit" value="Nazaj na meni">
</form>
