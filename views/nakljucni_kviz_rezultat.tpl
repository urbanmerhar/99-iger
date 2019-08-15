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
        <h1 class="subtitle is-1">
            Ker si pravilno odgovoril na vsa dana vprašanja dobiš kar dve nagradi!
        </h1>
        % from nagrade import seznam_sal, seznam_zanimivosti, vrni_nagrado
            <h1 class="title is-1">
                Šala:
            </h1>
           <h1 class="subtitle is-1">
                {{vrni_nagrado(seznam_sal)}}
           </h1>
            <h1 class="title is-1">
                Zanimivost:
            </h1>
            <h1 class="subtitle is-1">
                {{vrni_nagrado(seznam_zanimivosti)}}
            </h1>
        % end

    % if pravilno == 8 or pravilno == 9:
        <h1 class="title is-1">
            Ker si pravilno odgovoril na dovolj vprašanj dobiš nagrado.
        </h1>
        % from nagrade import seznam_sal, vrni_nagrado
            <h1 class="title is-1">
                Šala:
            </h1>
            <h1 class="subtitle is-1">
                {{vrni_nagrado(seznam_sal)}}
            </h1>
        % end
</div>

