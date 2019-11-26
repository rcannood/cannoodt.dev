+++
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 15  # Order that this section will appear.

title = "Inschrijven"
subtitle = ""

[design.spacing]
  # Customize the section spacing. Order is top, right, bottom, left.
  padding = ["30px", "0", "30px", "0"]
+++

<form name="contact" method="POST" data-netlify="true">
  <p>
    <label><b>Naam</b><br/><input type="text" name="naam" /></label>   
  </p>
  <p>
    <label><b>Receptie</b></br>
    <input type="radio" name="receptie" value="ja" checked> Ja <br/> <input type="radio" name="receptie" value="nee"> Nee
    </label>
  </p>
  <p>
    <label><b>Aantal personen</b><br/><input type="text" name="number" /></label>   
  </p>
  <p>
    <button type="submit">Send</button>
  </p>
</form>

