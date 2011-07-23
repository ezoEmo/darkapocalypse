obj/Quests/Future_Bulma

	Time_Emergency
		name = "Time Emergency"
		icon = 'Skills.dmi'
		icon_state = "weapon"
		density = 0


		verb

			View_Quest()
				set category = null
				var/examine_sensu = {"<body bgcolor=#000000 text=#FFFFFF>
<table border=0 cellspacing=1 width=492 id=AutoNumber1 height=210>
  <tr>
    <td colspan=2 rowspan="4"><div align="center"><font face=Tahoma color=#FF0000><img src="http://img341.imageshack.us/img341/6510/bulkimek8ed.jpg"></font></div></td>
    <td height=18 colspan=2><font face=Tahoma color=#FF0000>Quest: [src.name]
      </font></td>
  </tr>
  <tr>
    <td width=79><font size=1 color=red face=Tahoma>Objective:</font></td>
    <td width=143 height=12><font size=1><font face=Tahoma>Kill Cell in the Future
    . </font></font></td>
  </tr>
  <tr>
    <td width=79><font face=Tahoma size=1 color=#FF0000>Reward</font><font size=1 color=red face=Tahoma>:</font></td>
    <td width=143 height=12><font face=Tahoma size=1>Radar For Namek Dragonballs</font></td>
  </tr>
  <tr>
    <td width=79><font face=Tahoma size=1 color=#FF0000>Quest Giver:</font></td>
    <td width=143 height=12><font face=Tahoma size=1>Bulma</font></td>
  </tr>
  <tr>
    <td colspan=4 height=48><font face=Tahoma size=1>[usr.name], We have a problem in
      our time, some sort of a mosnter has appeared on earth and is killing all
      the survivors who are left.Can you please help us , he is trying to get to the space ship
      to travel back in time to kill people in your time...</font></td>
  </tr>
</table>

"}
				usr << browse(examine_sensu,"window=Hench;size=550x350;border=0;can_resize=0; can_minimize=0;")

			Abandon_Quest()
				set category = null
				switch(alert("Do you wish to abandon the Quest: [src.name]?","Abandon Quest","Yes","No"))
					if("Yes")
						usr.bulma_quest2_start = 0
						del(src)
					if("No")
						return