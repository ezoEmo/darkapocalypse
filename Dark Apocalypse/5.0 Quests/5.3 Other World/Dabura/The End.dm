obj/Quests/Dabura

	The_End
		name = "The End"
		icon = 'Skills.dmi'
		icon_state = "weapon"
		density = 0


		verb

			View_Quest()
				set category = null
				var/examine_sensu = {"<body bgcolor=#000000 text=#FFFFFF>
<table border=0 cellspacing=1 width=492 id=AutoNumber1 height=210>
  <tr>
    <td colspan=2 rowspan="4"><div align="center"><font face=Tahoma color=#FF0000><img src="http://img408.imageshack.us/img408/8199/11jf8.jpg"></font></div></td>
    <td height=18 colspan=2><font face=Tahoma color=#FF0000>Quest: [src.name]
      </font></td>
  </tr>
  <tr>
    <td width=79><font size=1 color=red face=Tahoma>Objective:</font></td>
    <td width=143 height=12><font size=1><font face=Tahoma>Obtain 20% Evil Karma
    and Kill Vegito in good sagas. </font></font></td>
  </tr>
  <tr>
    <td width=79><font face=Tahoma size=1 color=#FF0000>Reward</font><font size=1 color=red face=Tahoma>:</font></td>
    <td width=143 height=12><font face=Tahoma size=1>Demon Blade (Weapon)</font></td>
  </tr>
  <tr>
    <td width=79><font face=Tahoma size=1 color=#FF0000>Quest Giver:</font></td>
    <td width=143 height=12><font face=Tahoma size=1>Dabura</font></td>
  </tr>
  <tr>
    <td colspan=4 height=48><font face=Tahoma size=1>[usr.name] we demons have
      a speacial power that must be unlocked, the demon blade in which demons are
      able to summon is within your grasp, you are so close in obtaining it.
      but before i grant you this great power you must first do something for me,
      get Evil karma and kill Vegito and i will give you this blade!</font></td>
  </tr>
</table>

"}
				usr << browse(examine_sensu,"window=Hench;size=550x350;border=0;can_resize=0; can_minimize=0;")

			Abandon_Quest()
				set category = null
				switch(alert("Do you wish to abandon the Quest: [src.name]?","Abandon Quest","Yes","No"))
					if("Yes")
						usr.dabura_quest_start = 0
						del(src)
					if("No")
						return