obj/Equipment/Consumable

	Spanner
		name = "Spanner"
		icon = 'Spanner.dmi'
		density = 0
		suffix = "{Quest Item}"

		verb

			Examine()
				set category = null
				var/examine_sensu = {"<body bgcolor=#000000 text=#FFFFFF>
<table border=0 cellspacing=1 width=250 id=AutoNumber1 height=95>
  <tr>
    <td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Spanner</font></td>
  </tr>
  <tr>
    <td width=273 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td>
    <td width=174 height=12><font face=Tahoma size=1>Quest Item</font></td>
  </tr>
  <tr>
    <td width=273 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td>
    <td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td>
  </tr>
  <tr>
    <td width=273 colspan=2 height=48><font face=Tahoma size=1>A simple Spanner,
      yet an important part of any sort of Mechanic fields. Bulma has requested
      you deliver it to Dr Briefs</font></td>
  </tr>
</table>
"}
				usr << browse(examine_sensu,"window=Hench;size=300x275;border=0;can_resize=0; can_minimize=0;")