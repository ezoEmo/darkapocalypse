obj/Quests/Goku

	Legendary_Saiyan
		name = "Legendary Saiyan"
		icon = 'Skills.dmi'
		icon_state = "weapon"
		density = 0

		verb

			View_Quest()
				set category = null
				var/examine_sensu = {"<body bgcolor=#000000 text=#FFFFFF>
<table border=0 cellspacing=1 width=492 id=AutoNumber1 height=210>
  <tr>
    <td colspan=2 rowspan="4"><div align="center"><font face=Tahoma color=#FF0000><img src="http://img412.imageshack.us/img412/7406/200pxnormalsaiyantn3.jpg"></font></div></td>
    <td height=18 colspan=2><font face=Tahoma color=#FF0000>Quest: [src.name]
      </font></td>
  </tr>
  <tr>
    <td width=79><font size=1 color=red face=Tahoma>Objective:</font></td>
    <td width=143 height=12><font size=1><font face=Tahoma>Kill Brolly!</font></font></td>
  </tr>
  <tr>
    <td width=79><font face=Tahoma size=1 color=#FF0000>Reward</font><font size=1 color=red face=Tahoma>:</font></td>
    <td width=143 height=12><font face=Tahoma size=1>Hech Battle Armor (Item)
    Instant Transmission(Skill)</font></td>
  </tr>
  <tr>
    <td width=79><font face=Tahoma size=1 color=#FF0000>Quest Giver:</font></td>
    <td width=143 height=12><font face=Tahoma size=1>Goku</font></td>
  </tr>
  <tr>
    <td colspan=4 height=48><font face=Tahoma size=1>Greetings [src.name]. KingKai and I has sensed a great evil power on Planet Namek,
    if nothing is done soon it will be destroyed and Earth will be next. Could you go to Planet Namek and take care of the
    situation,  Thanks!</font></td>
  </tr>
</table>"}
				usr << browse(examine_sensu,"window=Hench;size=550x350;border=0;can_resize=0; can_minimize=0;")

			Abandon_Quest()
				set category = null
				switch(alert("Do you wish to abandon the Quest: [src.name]?","Abandon Quest","Yes","No"))
					if("Yes")
						usr.goku_quest_start = 0
						del(src)
					if("No")
						return


