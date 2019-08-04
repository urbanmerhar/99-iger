% rebase('skupna_predloga.tpl')
<h1>Naključni kviz</h1>
<hr>

<p>Pravilno si odgovoril na {{pravilno}} od {{vse_mozne_tocke}} vprašanj.</p>

% if pravilno == 10:
        Ker si pravilno odgovoril na vsa dana vprašanja dobiš kar dve nagradi.

        <p>NAGRADA:</p>
        <br />
        % from nagrade import seznam_sal, seznam_zanimivosti, vrni_nagrado
                <p>Šala:
                {{vrni_nagrado(seznam_sal)}}
                <br>
                in zanimivost:
                {{vrni_nagrado(seznam_zanimivosti)}}
                </p>
        % end


% if pravilno == 8 or pravilno == 9:
<p>NAGRADA:</p>
<br>
    % from nagrade import seznam_sal, vrni_nagrado
        <p>{{vrni_nagrado(seznam_sal)}}</p>
    % end

