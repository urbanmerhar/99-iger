% rebase('skupna_predloga.tpl')
<h1>Igra predstavitve</h1>
<hr>
<h2>Ker tega ne morem preveriti si vseeno zmagal!</h2>

<p>
NAGRADA:<br>
    % from nagrade import seznam_sal, vrni_nagrado
        <br>{{vrni_nagrado(seznam_sal)}}
    % end
</p>