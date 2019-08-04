% rebase('skupna_predloga.tpl')
<h1>Ugani število</h1>
<hr />
Uganil si pravo število, to število je bilo: ???
<br />
Potreboval si ??? poskusov.
<br />
NAGRADA
% from nagrade import seznam_zanimivosti, vrni_nagrado
    Zanimivost:
    <br />
    {{vrni_nagrado(seznam_zanimivosti)}}
% end