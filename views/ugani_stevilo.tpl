% rebase('skupna_predloga.tpl')
<h1>Ugani število</h1>
<hr />
Izberi interval na katerem boš iskal naključno število.
<form action="/Ugani_stevilo/" method="POST">
    Od: <input type="text" name="a">
    Do: <input type="text" name="b">
    <input type="submit" value="Potrdi">
</form>