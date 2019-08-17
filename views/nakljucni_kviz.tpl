% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<section class="hero is-small">
    <div class="hero-body is-small">
        <figure class="image">
            <img src="/static/slike/NAKLJUCNI-KVIZ.png"
                style="width:693px;height:103px;"
             />
        </figure>
    </div>
</section>
<hr>
<div class="container is-fluid">
    <h3 class="subtitle is-3">
    <p>Navodila so preprosta. Odgovori na dana vprašanja, tako da označiš svoj izbrani odgovor, če ne označiš ničesar se to šteje kot napačen odgovor.
        Odgovore oddaš s klikom na gumb Oddaj spodaj. Vsak odgovor je vreden eno točko. Če dobiš vsaj 8 točk dobiš nagrado.
    </p>
    </h3>
</div>
<hr>
<div class="container is-fluid">
    <form action='/Kviz_resitev/' method='POST'>
        <div class="container is-fluid">
            <ol>
                % for i in q:
                    <li>
                        <h3 class="subtitle is-3">
                            <u>Kaj je {{i}}</u>?
                        </h3>
                    </li>
                        % for j in o[i]:
                            <label class="radio">
                                <h4 class="subtitle is-4">
                                    <input type='radio' value='{{j}}' name='{{i}}' />{{j}}
                                </h4>
                            </label>
                        % end
                % end
            </ol>
        </div>
        <div class="container is-fluid">
            <br>
            <input class="button is-info is-large" type='submit' value="Oddaj" />
        </div>
    </form>
</div>
