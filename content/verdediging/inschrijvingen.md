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
    <label><b>Naam</b></label><br/>
    <input type="text" name="naam" />
  </p>
  <p>
    <label><b>Receptie</b></label></br>
    <input type="radio" name="receptie" value="ja" checked/> Ja <br/> 
    <input type="radio" name="receptie" value="nee"/> Nee
  </p>
  <p> 
    <label><b>Aantal personen</b></label><br/>
    <input type="text" name="number" />
  </p>
  <p>
    <button type="submit">Send</button>
  </p>
</form>

