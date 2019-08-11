% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/IGRA-PREDSTAVITVE.png"
    style="width:865px;height:104px;"
 />
<hr>
<h2>Ker tega ne morem preveriti si vseeno zmagal!</h2>

<p>
<h3>Šala:</h3>
    % from nagrade import seznam_sal, vrni_nagrado
        {{vrni_nagrado(seznam_sal)}}
    % end
</p>