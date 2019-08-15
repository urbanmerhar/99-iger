% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<section class="hero is-small">
    <div class="hero-body is-small">
        <figure class="image">
            <img src="/static/slike/UGANI-STEVILO.png"
                style="width:632px;height:102px;"
             />
        </figure>
    </div>
</section>
<hr>
<div class="container is-fluid">
    <h1 class="title is-1">
        Uganil si pravo število, to število je bilo: {{iskano_stevilo}}
    </h1>
    <h1 class="subtitle is-1">
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
    </h1>
<br>
</div>
<div class="container is-fluid">
    % from nagrade import seznam_zanimivosti, vrni_nagrado
    <h1 class="title is-1">Zanimivost:</h1>
        <h1 class="subtitle is-1">
        {{vrni_nagrado(seznam_zanimivosti)}}
        </h1>
    % end
</div>