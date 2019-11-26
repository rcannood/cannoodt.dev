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
    <label><b>Naam</b><br/>
    <input type="text" name="naam" required/></label>
  </p>
  <p>
    <label><b>Receptie</b><br/><select name="role[]">
      <option value="ja">Ja</option>
      <option value="nee">Nee</option>
    </select></label>
  </p>
  <p> 
    <label><b>Aantal personen</b><br/>
    <input type="text" name="number" value="1" required/></label>
  </p>
  <p>
    <button type="submit">Send</button>
  </p>
</form>

