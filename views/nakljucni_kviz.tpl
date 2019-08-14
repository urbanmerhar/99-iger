% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/NAKLJUCNI-KVIZ.png"
    style="width:693px;height:103px;"
 />
<hr>
<div class="container is-fluid">
    <h4 class="subtitle is-4">
    <p>Navodila so preprosta. Odgovori na dana vprašanja, tako da označiš svoj izbrani odgovor, če ne označiš ničesar se to šteje kot napačen odgovor.
        Odgovore oddaš s klikom na gumb Oddaj spodaj. 
        Vsak odgovor je vreden eno točko.
        Če dobiš vsaj 8 točk dobiš nagrado.
    </p>
    </h4>
</div>
<hr>
<div class="container is-fluid">
    <form action='/Kviz_resitev/' method='POST'>
        <ol>
            % for i in q:
                <li>
                    <h4 class="subtitle is-4">
                        Kaj je <u>{{i}}</u> ?</li>
                    </h4>
                    % for j in o[i]:
                        <label class="radio">
                            <h5 class="subtitle is-5">
                                <input type='radio' value='{{j}}' name='{{i}}' />{{j}}
                            </h5>
                        </label>
                    % end
            % end
        </ol>
        <div class="container is-fluid">
            <input class="button is-info" type='submit' value="Oddaj" />
        </div>
    </form>
</div>
