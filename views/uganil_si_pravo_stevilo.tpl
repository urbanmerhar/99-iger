% rebase('skupna_predloga.tpl')
<h1>Ugani število</h1>
<hr>
<p>Uganil si pravo število, to število je bilo: {{iskano_stevilo}}</p>

Potreboval si {{stevilo_ugibov}} poskusov.
<br>
<p>
% from nagrade import seznam_zanimivosti, vrni_nagrado
    <h3>Zanimivost:</h3>
    {{vrni_nagrado(seznam_zanimivosti)}}
% end
</p>