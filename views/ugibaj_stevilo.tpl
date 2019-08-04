% rebase('skupna_predloga.tpl')
<h1>Ugibaj število</h1>
<hr />
<p>
    Zdaj ko si si izbral svoj interval poskusi na njem uganiti naključno izbrano število.
</p>

Ugibaš na intervalu od <b>{{a}}</b> do <b>{{b}}.</b>
<form action="/Ugibaj_stevilo/" method="POST">
    Število: <input type="text" name="trenutno_stevilo">
    <input type='submit' value="Ugibaj" />
</form>
