% rebase('skupna_predloga.tpl')
<h1>Igra predstavitve</h1>
<hr>
<p><em>Ali si res {{ime}}?</em>
</p>

<form action="/Igra_predstavitve_konec/" method="POST">
    <ul>
        <li>
            <input type="radio" name="odgovor" value="Da">
            Da
        </li>
        <li>
            <input type="radio" name="odgovor" value="Ne">
            Ne
        </li>
        <li>
            <input type="radio" name="odgovor" value="Mogoče">
            Mogoče
        </li>
    </ul>
    <input type="submit" value="Hmmm">
</form>
