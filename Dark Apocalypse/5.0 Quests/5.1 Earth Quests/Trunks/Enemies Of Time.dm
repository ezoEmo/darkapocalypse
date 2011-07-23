obj/Quests/Trunks

	Enemies_Of_Time
		name = "Enemies Of Time"
		icon = 'Skills.dmi'
		icon_state = "critical"
		density = 0

		verb

			View_Quest()
				set category = null
				var/examine_sensu = {"<body bgcolor=#000000 text=#FFFFFF>
<table border=0 cellspacing=1 width=492 id=AutoNumber1 height=210>
  <tr>
    <td colspan=2 rowspan="4"><div align="center"><font face=Tahoma color=#FF0000><img src="http://img247.imageshack.us/img247/1630/trunksqo2.jpg"></font></div></td>
    <td height=18 colspan=2><font face=Tahoma color=#FF0000>Quest: [src.name]
      </font></td>
  </tr>
  <tr>
    <td width=79><font size=1 color=red face=Tahoma>Objective:</font></td>
    <td width=143 height=12><font size=1><font face=Tahoma>Travel to the future
      and defeat the androids 17 and 18</font></font></td>
  </tr>
  <tr>
    <td width=79><font face=Tahoma size=1 color=#FF0000>Reward</font><font size=1 color=red face=Tahoma>:</font></td>
    <td width=143 height=12><font face=Tahoma size=1>Entrance Into CC (Future)</font></td>
  </tr>
  <tr>
    <td width=79><font face=Tahoma size=1 color=#FF0000>Quest Giver:</font></td>
    <td width=143 height=12><font face=Tahoma size=1>Trunks</font></td>
  </tr>
  <tr>
    <td colspan=4 height=48><font face=Tahoma size=1>[usr.name]. I'm in a desperate position
     and in need of help fast. I am trunks from the future and in my time there are 2 androids
     who have been programmed to destroy all life on earth... i have come to the present to ask
     you to come to the future and save my time from extinction.</font></td>
  </tr>
</table>
"}
				usr << browse(examine_sensu,"window=Hench;size=550x350;border=0;can_resize=0; can_minimize=0;")

			Abandon_Quest()
				set category = null
				switch(alert("Do you wish to abandon the Quest: [src.name]?","Abandon Quest","Yes","No"))
					if("Yes")
						usr.trunks_quest_start = 0
						del(src)
					if("No")
						return