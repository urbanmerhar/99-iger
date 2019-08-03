% rebase('skupna_predloga.tpl')
<h1>Naključni kviz</h1>
<hr />

Pravilno si odgovoril na {{pravilno}} od {{vse_mozne_tocke}} vprašanj.
<br />
% if pravilno == 10:
        Ker si pravilno odgovoril na vsa dana vprašanja dobiš kar dve nagradi.

        NAGRADA:
        <br />
        % from nagrade import seznam_sal, seznam_zanimivost, vrni_nagrado
                Šala:
                {{vrni_nagrado(seznam_sal)}}
                in zanimivost:
                {{vrni_nagrado(seznam_zanimivosti)}}
        % end


% if pravilno >= 8 and pravilno != 10:
NAGRADA:
<br />
    % from nagrade import seznam_sal, vrni_nagrado
            {{vrni_nagrado(seznam_sal)}}
    % end

