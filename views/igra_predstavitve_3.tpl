% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/IGRA-PREDSTAVITVE.png"
    style="width:865px;height:104px;"
 />
<hr>
<div class="container is-fluid">
    Ker tega ne morem preveriti si vseeno zmagal!
</div>

<div class="container is-fluid">
    <p>
    Šala:
        % from nagrade import seznam_sal, vrni_nagrado
            {{vrni_nagrado(seznam_sal)}}
        % end
    </p>
</div>