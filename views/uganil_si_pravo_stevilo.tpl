% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/UGANI-STEVILO.png"
    style="width:632px;height:102px;"
 />
<hr>
<p>Uganil si pravo število, to število je bilo: {{iskano_stevilo}}</p>

Potreboval si {{stevilo_ugibov}} 
% if stevilo_ugibov == 1:
    poskus.
% elif stevilo_ugibov == 2:
    poskusa.
% elif stevilo_ugibov == 3 or stevilo_ugibov == 4:
    poskuse.
% else:
    poskusov.
% end
<br>
<p>
% from nagrade import seznam_zanimivosti, vrni_nagrado
    <h3>Zanimivost:</h3>
    {{vrni_nagrado(seznam_zanimivosti)}}
% end
</p>