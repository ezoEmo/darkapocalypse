obj/Equipment/Consumable

	Capsule
		name = "Storage Capsule"
		icon = 'Capsule.dmi'
		density = 0

		Click()
			if(src in usr:contents)
				switch(alert("Do you wish to use the Storage Capsule?","Item","Yes","No"))
					if("Yes")
						usr.inven_min --
						usr.inven_max += 25
						usr << "Your Maximum Item Storage has increased to \white 50!"
						del(src)
						return
					else
						return


		verb

			Examine()
				set category = null
				var/examine_capsule = {"<body bgcolor=#000000 text=#FFFFFF>
<table border=0 cellspacing=1 width=250 id=AutoNumber1 height=95>
  <tr>
    <td width=273 colspan=2 height=18><font color="#FF0000" face="Tahoma">Storage
      Capsule </font></td>
  </tr>
  <tr>
    <td width=273 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td>
    <td width=174 height=12><font face=Tahoma size=1>Increases Max Inventory
      by 25</font></td>
  </tr>
  <tr>
    <td width=273 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td>
    <td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td>
  </tr>
  <tr>
    <td width=273 colspan=2 height=48><font face=Tahoma size=1>The Famous Capsules
      designed and Engineered by Capsule Corp have various functions. The most
      popular of the Capsule's is the Storage Capsule, with it's ability to allow
      people to hold more Item's than they would Originally be able to</font></td>
  </tr>
</table>
"}
				usr << browse(examine_capsule,"window=Hench;size=300x275;border=0;can_resize=0; can_minimize=0;")