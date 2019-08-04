% rebase('skupna_predloga.tpl')
<h1>Ugani število</h1>
<hr />
<p>Uganil si pravo število, to število je bilo: ???</p>

Potreboval si ??? poskusov.
<br />
NAGRADA
% from nagrade import seznam_zanimivosti, vrni_nagrado
    <p>
    Zanimivost:
    <br />
    {{vrni_nagrado(seznam_zanimivosti)}}
    </p>
% end