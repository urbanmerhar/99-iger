% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/IGRA-PREDSTAVITVE.png"
    style="width:865px;height:104px;"
 />
<hr>
<div class="container is-fluid">
    <h2 class="title is-2">
        Ker tega ne morem preveriti si vseeno zmagal!
    </h2>
</div>

<div class="container is-fluid">
    <p class="title is-3">
        Šala:
    </p>
    <p class="subtitle is-3">
        % from nagrade import seznam_sal, vrni_nagrado
            {{vrni_nagrado(seznam_sal)}}
        % end
    </p>
</div>