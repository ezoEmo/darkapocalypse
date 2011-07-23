mob/learn
	verb
		Scan(mob/M in view(6))
			set category = "Techniques"
			if(M.race != "Android")
				var/form = ""
				if(!M.form_1)
					form = "Normal State"

				if(M.form_5)
					if(M.race == "Saiyan" || M.race == "Half Saiyan")
						form = "\yellow Super Saiyan 4"

					if(M.race == "Changling")
						form = "\white Form 5"

					if(M.race == "Human")
						form = "<font color = red>Super Human 2</font>"

				else
					if(M.form_4)
						if(M.race == "Saiyan")
							form = "\yellow Super Saiyan 3"
						if(M.race == "Half Saiyan")
							if(M.fused)
								form = "\yellow Super Saiyan 3"
							else
								form = "\yellow Super Saiyan 2 (Fully Ascended)"
						if(M.race == "Changling")
							form = "\white Form 4 100%"
						if(M.race == "Majin")
							form = "<font color=#E358B4>Kid Majin</font>"
						if(M.race == "Tuffle")
							form = "\yellow Super Tuffle 2"
						if(M.race == "Human")
							form = "<font color = #EB7F00>Super Human</font>"
						if(M.race == "Namek")
							form = "\green Super Namek 2"
						if(M.race == "Bio-Android")
							form = "\green Perfect Form (Power Weighted)"
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
								form = "\green Ascended Namek"
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
									form = "<font color = #EB7F00>High Tension</font>"
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
										form = "<font color = #EB7F00>Focus</font>"
									if(M.race == "Namek")
										form = "\green Super Namek"
									if(M.race == "Bio-Android")
										form = "\green Imperfect Form"
									if(M.race == "Android")
										form = "\blue Super Android"
									if(M.race == "Demon")
										form = "<font color=maroon>Demonic Will</font>"


				src << "Aquiring [M]'s Biological Signal..."
				sleep(25)
				if(!M)return
				src << "---------------------"
				src << "<font size = 4>[M]</size>"
				src << "Level: [M.level]"
				src << "Karma: [M.karma]"
				src << "Powerlevel: [num2text(M.powerlevel,10000000)] / [num2text(M.powerlevel_max,10000000)]"
				src << "Ki: [num2text(M.ki,10000000)] / [num2text(M.ki_max,10000000)]"
				src << "Strength: [num2text(M.strength,10000000)] / [num2text(M.strength_max,10000000)]"
				src << "Defence: [num2text(M.defence,10000000)] / [num2text(M.defence_max,10000000)]"
				src << ""
				src << "Block Skill: [M.block] %"
				src << "Counter Skill: [M.counter] %"
				src << "Reflect Skill: [M.reflect] %"
				src << "Dodge Skill: [M.dodge] %"
				src << "Critical Skill: [M.critical] %"
				src << ""
				src << "Currently In: [form]"
				src << "Energy Code: [num2text(M.energy_code,1000000)]"
				src << "---------------------"
				src.afk_time = 0
			else
				src << "They have no Energy to Scan!"
				return