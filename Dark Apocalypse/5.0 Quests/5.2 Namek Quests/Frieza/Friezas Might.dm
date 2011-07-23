obj/Quests/Frieza

	Friezas_Might
		name = "Frieza's Might"
		icon = 'Skills.dmi'
		icon_state = "block"
		density = 0

		verb

			View_Quest()
				set category = null
				var/examine_sensu = {"<body bgcolor=#000000 text=#FFFFFF>
<table border=0 cellspacing=1 width=492 id=AutoNumber1 height=210>
  <tr>
    <td colspan=2 rowspan="4"><div align="center"><font face=Tahoma color=#FF0000><img src="http://img220.imageshack.us/img220/9726/frieza5bk.jpg"></font></div></td>
    <td height=18 colspan=2><font face=Tahoma color=#FF0000>Quest: [src.name]
      </font></td>
  </tr>
  <tr>
    <td width=79><font size=1 color=red face=Tahoma>Objective:</font></td>
    <td width=143 height=12><font size=1><font face=Tahoma>Put an End to Goku
      Vegeta and Gohan in the namekian saga using only melee attacks(Note: Must kill all gokus in namek) </font></font></td>
  </tr>
  <tr>
    <td width=79><font face=Tahoma size=1 color=#FF0000>Reward</font><font size=1 color=red face=Tahoma>:</font></td>
    <td width=143 height=12><font face=Tahoma size=1>2000000 exp and 50000 zenni</font></td>
  </tr>
  <tr>
    <td width=79><font face=Tahoma size=1 color=#FF0000>Quest Giver:</font></td>
    <td width=143 height=12><font face=Tahoma size=1>Lord Frieza</font></td>
  </tr>
  <tr>
    <td colspan=4 height=48><font face=Tahoma size=1>That Insolant Saiyan Monkey Goku
      has pushed me to my limits. Him and his friends Vegeta and Gohan are relentless
      it is time to put an end to their insubbordinate actions. You [usr.name] will fit my task
      nicely, however. I'm not requesting this of you, it is an order which I
      want carried out immidiately. Now get out of my sight...</font></td>
  </tr>
</table>
"}
				usr << browse(examine_sensu,"window=Hench;size=550x350;border=0;can_resize=0; can_minimize=0;")

			Abandon_Quest()
				set category = null
				switch(alert("Do you wish to abandon the Quest: [src.name]?","Abandon Quest","Yes","No"))
					if("Yes")
						usr.frieza_quest2_start = 0
						del(src)

					if("No")
						return