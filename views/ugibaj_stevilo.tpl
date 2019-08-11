% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/UGANI-STEVILO.png"
    style="width:632px;height:102px;"
 />
<hr>
<p>
    Zdaj ko si si izbral svoj interval poskusi na njem uganiti naključno izbrano število.
</p>

Ugibaš na intervalu od <b>{{a}}</b> do <b>{{b}}.</b>
<form action="/Ugibaj_stevilo/" method="POST">
    Število: <input type="text" name="trenutno_stevilo">
    <input type='submit' value="Ugibaj" />
</form>
