% rebase('skupna_predloga.tpl')
<h1>Igra predstavitve</h1>
<hr />
<br />
Ker tega ne morem preveriti si vseeno zmagal!
<br />

NAGRADA:
    % from nagrade import seznam_sal, vrni_nagrado
        <br />{{vrni_nagrado(seznam_sal)}}
    % end
