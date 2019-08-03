% rebase('skupna_predloga.tpl')
<h1>Naključni kviz</h1>
<hr />

Pravilno si odgovoril {{pravilno}} od {{vse_mozne_tocke}} vprašanj.
<br />
% if pravilno >= 8:
NAGRADA:
<br />
    % from nagrade import seznam_nagrad, vrni_nagrado
            {{vrni_nagrado(seznam_nagrad)}}
    % end

