% rebase('skupna_predloga.tpl')
<h1>Naključni kviz</h1>
<hr />

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