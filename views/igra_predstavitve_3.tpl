% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<section class="hero is-small">
    <div class="hero-body is-small">
        <figure class="image">
            <img src="/static/slike/IGRA-PREDSTAVITVE.png"
                style="width:865px;height:104px;"
            />
        </figure>
    </div>
</section>
<hr>
<div class="container is-fluid">
    <h1 class="title is-1">
        Ker tega ne morem preveriti si vseeno zmagal!
    </h1>
</div>

<div class="container is-fluid">
    <h1 class="title is-1">
        Šala:
    </h1>
    <h1 class="subtitle is-1">
        % from nagrade import seznam_sal, vrni_nagrado
            {{vrni_nagrado(seznam_sal)}}
        % end
    </h1>
</div>