% rebase('skupna_predloga.tpl')
<!--NASLOV JE ZDAJ KAR TA SLIKA-->
<img src="/static/slike/NAKLJUCNI-KVIZ.png"
    style="width:693px;height:103px;"
 />
<hr>
<div class="container is-fluid">
    <h1 class="title is-1">
        Pravilno si odgovoril na {{pravilno}} od {{vse_mozne_tocke}} vprašanj.
    </h1>
</div>

<div class="container is-fluid">
    % if pravilno == 10:
        <h2 class="title is-2">
            Ker si pravilno odgovoril na vsa dana vprašanja dobiš kar dve nagradi!
        </h2>
        % from nagrade import seznam_sal, seznam_zanimivosti, vrni_nagrado
            <p class="title is-3">
                Šala:
            </p>
           <p class="subtitle is-3">
                {{vrni_nagrado(seznam_sal)}}
            </p>
            <p class="title is-3">
                Zanimivost:
            </p>
            <p class="subtitle is-3">
                {{vrni_nagrado(seznam_zanimivosti)}}
            </p>
        % end

    % if pravilno == 8 or pravilno == 9:
        <h2 class="title is-2">
            Ker si pravilno odgovoril na dovolj vprašanj dobiš nagrado.
        </h2>
        % from nagrade import seznam_sal, vrni_nagrado
            <p class="title is-3">
                Šala:
            </p>
            <p class="subtitle is-3">
                {{vrni_nagrado(seznam_sal)}}
            </p>
        % end
</div>

