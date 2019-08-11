% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/NAKLJUCNI-KVIZ.png"
    style="width:693px;height:103px;"
 />
<hr>

<h2>Pravilno si odgovoril na {{pravilno}} od {{vse_mozne_tocke}} vprašanj.</h2>

% if pravilno == 10:
        <h3>Ker si pravilno odgovoril na vsa dana vprašanja dobiš kar dve nagradi.</h3>

        % from nagrade import seznam_sal, seznam_zanimivosti, vrni_nagrado
                <p><h3>Šala:</h3>
                {{vrni_nagrado(seznam_sal)}}
                <br>
                <h3>Zanimivost:</h3>
                {{vrni_nagrado(seznam_zanimivosti)}}
                </p>
        % end


% if pravilno == 8 or pravilno == 9:
    % from nagrade import seznam_sal, vrni_nagrado
        <p><h3>Šala:</h3>
        {{vrni_nagrado(seznam_sal)}}
        </p>
    % end

