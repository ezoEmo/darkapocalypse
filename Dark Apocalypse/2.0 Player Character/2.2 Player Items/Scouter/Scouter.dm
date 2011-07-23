obj/Equipment/Head

	Scouter
		name = "Scouter"
		icon = 'Scouter.dmi'
		density = 0

		equiped = 0
		value = 750

		condition = 500
		condition_max = 500


		var
			scouter = 'Scouter.dmi'

		Click()
			if(src in usr:contents)
				if(!usr.scouter_eq)
					if(usr.head == "EMPTY")
						if(!usr.scouter)
							usr.overlays += scouter
							usr << "You have equiped the: <u>[src]</u>."
							suffix = "(Worn)"
							usr.head = src.name
							usr.scouter = 1
							usr.scouter_eq = 1
							src.equiped = 1
					else
						usr << "Error: You already have somethign equipped on your Head!"
						return
				else
					if(usr.scouter)
						if(src.equiped)
							usr.overlays -= scouter
							usr << "You have unequiped the: <u>[src]</u>."
							suffix = null
							usr.head = "EMPTY"
							usr.scouter = 0
							usr.scouter_eq = 0
							src.equiped = 0
							usr.scouter_channel = 0
						else
							usr << "Error: </b>You may only have one of: <u>[src.name]</u> equiped."
							return


		verb

			Examine()
				set category = null
				var/examine_scouter = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Scouter</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Examine people's Stats</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>A one eye piece head set worn on one side of the head, it is a device used to determine the power, speed and distance of opponents. All information can be seen through the green eye piece. It can also be used as a communicator. </font></b></td></tr></table>"
				usr << browse(examine_scouter,"window=Hench;size=300x275;border=0;can_resize=0; can_minimize=0;")

			Pick_Up()
				set src in oview(0)
				set category = null
				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
					else
						usr << "No more room for items."
				else
					usr << "You are unable to pick up the: <u>[src]</u>."

			Drop()
				set category = null
				if(!src.equiped)
					src.loc = usr.loc
					usr << "You have dropped the: <u>[src]</u>."
					usr.inven_min -= 1
				else
					usr << "You are unable to drop: <u>[src.name]</u>, it's already equipped."

			Scouter_Channel()
				set category = null
				if(src.equiped)
					var/scouter_chan = input("What channel do you want to tune you scouter to?","Scouter Channel") as num
					if(!scouter_chan)
						return
					usr.scouter_channel = scouter_chan
					return
				else
					usr << "You must have the: <u>[src.name]</u> equiped before proceeding."

			Scouter(msg as text)
				set category = null
				if(src.equiped)
					for(var/mob/PC/M in world)
						if(M.scouter_channel == usr.scouter_channel)
							M << "<font color=#000066>{<font color=lime><font face = Tahoma>Scouter<font color=#000066>} \white [usr]: \green [msg]"
							return
						else
							return
				else
					usr << "You must have your: <u>[src.name]</u> equiped."
					return

			Scan(mob/M in oview(6))
				set category = null
				var/form = ""
				if(src.equiped)
					if(!M.form_1)
						form = "Normal State"

					if(!M.form_1 && M.inverted)
						form = "\white Inverted Power"

					if(M.form_5)
						if(M.race == "Saiyan")
							form = "\yellow Super Saiyan 4"

						if(M.race == "Half Saiyan")
							if(M.fused)
								form = "\yellow Super Saiyan 3"
							else
								form = "\white Mystic"

						if(M.race == "Changling")
							form = "\white Form 5"

						if(M.race == "Human")
							form = "<font color = red>Super Human</font>"

					else
						if(M.form_4)
							if(M.race == "Saiyan")
								form = "\yellow Super Saiyan 3"
							if(M.race == "Half Saiyan")
								form = "\yellow Super Saiyan 2 (Fully Ascended)"
							if(M.race == "Changling")
								form = "\white Form 4 100%"
							if(M.race == "Majin")
								form = "<font color=#E358B4>Kid Majin</font>"
							if(M.race == "Tuffle")
								form = "\yellow Super Tuffle 2"
							if(M.race == "Human")
								form = "<font color = #EB7F00>Full Potential</font>"
							if(M.race == "Namek")
								form = "\green Super Namek 2"
							if(M.race == "Bio-Android")
								form = "\green Perfect Form (Power Weighted)"
							if(M.race == "Demon")
								form = "<font color=maroon>Full Power</font>"
						else
							if(M.form_3)
								if(M.race == "Saiyan" || M.race == "Half Saiyan")
									form = "\yellow Super Saiyan 2"
								if(M.race == "Changling")
									form = "\white Form 4"
								if(M.race == "Majin")
									form = "<font color=#E358B4>Super Majin 2</font>"
								if(M.race == "Tuffle")
									form = "\yellow Infected Tuffle 2"
								if(M.race == "Human")
									form = "<font color = #EB7F00>Advanced Focus</font>"
								if(M.race == "Namek")
									form = "\green Super Namek 2"
								if(M.race == "Bio-Android")
									form = "\green Perfect Form"
								if(M.race == "Demon")
									form = "<font color=maroon>Pure Evil</font>"

							else
								if(M.form_2)
									if(M.race == "Saiyan" || M.race == "Half Saiyan")
										form = "\yellow Ascended Super Saiyan"
									if(M.race == "Changling")
										form = "\white Form 3"
									if(M.race == "Majin")
										form = "<font color=#E358B4>Super Majin</font>"
									if(M.race == "Tuffle")
										form = "\yellow Super Tuffle"
									if(M.race == "Human")
										form = "<font color = #EB7F00>Focus</font>"
									if(M.race == "Namek")
										form = "\green Ascended Namek"
									if(M.race == "Bio-Android")
										form = "\green Perfect Form"
									if(M.race == "Android")
										form = "\blue Ultimate Android"
									if(M.race == "Demon")
										form = "<font color=maroon>Demon Ascension</font>"

								else
									if(M.form_1)
										if(M.race == "Saiyan" || M.race == "Half Saiyan")
											form = "\yellow Super Saiyan"
										if(M.race == "Changling")
											form = "\white Form 2"
										if(M.race == "Majin")
											form = "<font color=#E358B4>Thin Majin</font>"
										if(M.race == "Tuffle")
											form = "\yellow Infected Tuffle"
										if(M.race == "Human")
											form = "<font color = #EB7F00>Potential Unlocked</font>"
										if(M.race == "Namek")
											form = "\green Super Namek"
										if(M.race == "Bio-Android")
											form = "\green Imperfect Form"
										if(M.race == "Android")
											form = "\blue Super Android"
										if(M.race == "Demon")
											form = "<font color=maroon>Demonic Will</font>"

					usr << "<center>---------------------</center>"
					usr << "<center><font size = 4>[M]</size></center>"
					usr << "<center><font size = 2>Key: [M.key]</size></center>"
					usr << ""
					usr << "<center>Karma: [M.karma] :[M.karma_rating]%</center>"
					usr << "<center>Level: [M.level]</center>"
					usr << "<center>Powerlevel: [num2text(M.powerlevel,10000000)] / [num2text(M.powerlevel_max,10000000)]</center>"
					usr << "<center>Ki: [num2text(M.ki,10000000)] / [num2text(M.ki_max,10000000)]</center>"
					usr << "<center>Strength: [num2text(M.strength,10000000)] / [num2text(M.strength_max,10000000)]</center>"
					usr << "<center>Defence: [num2text(M.defence,10000000)] / [num2text(M.defence_max,10000000)]</center>"
					usr << ""
					usr << "<center>Currently In: [form]</center>"
					usr << "<center>Energy Code: [num2text(M.energy_code,1000000)]</center>"
					usr << "<center>---------------------</center>"
					usr.afk_time = 0
				else
					usr << "You must have: <u>[src.name]</u> equiped."
					return