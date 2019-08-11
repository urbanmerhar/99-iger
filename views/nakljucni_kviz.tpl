% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/NAKLJUCNI-KVIZ.png"
    style="width:693px;height:103px;"
 />
<hr>
<p>Navodila so preprosta. Odgovori na dana vprašanja, tako da označiš svoj izbrani odgovor, če ne označiš ničesar se to šteje kot napačen odgovor.
Odgovore oddaš s klikom na gumb Oddaj spodaj. 
Vsak odgovor je vreden eno točko.
Če dobiš vsaj 8 točk dobiš nagrado.
</p>
<hr>

<form action='/Kviz_resitev/' method='POST'>
    <ol>
        % for i in q:
            <li>Kaj je <u>{{i}}</u> ?</li>
                % for j in o[i]:
                    <input type='radio' value='{{j}}' name='{{i}}' />{{j}}
                % end
        % end
    </ol>
    <input type='submit' value="Oddaj" />
</form>