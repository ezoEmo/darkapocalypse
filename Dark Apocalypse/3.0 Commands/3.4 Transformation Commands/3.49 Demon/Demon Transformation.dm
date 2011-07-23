mob/proc/Demon_Trans()
	var/transtime = 5
	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 75000)
				src.safe = 1
				src.doing = 1
				src.icon_state = "enrage"
				src.frozen = 1
				sleep(transtime)

				src.powerlevel = src.powerlevel_max
				src.ki = src.ki_max
				src.critical = src.critical_max
				src.dodge = src.dodge_max
				src.reflect = src.reflect_max
				src.strength = src.strength_max
				src.defence = src.defence_max
				src.block = src.block_max

				src.powerlevel *= 12
				src.ki *= 10
				src.strength *= 12
				src.defence *= 8

				src.critical += rand(1,3)
				src.dodge += rand(1,4)
				src.reflect += rand(1,2)
				src.block += rand(1)
				src.counter += rand(1,3)

				src.speed = 3.7


				view(6) << "<font color = maroon>[src.name] transforms into their Demonic Will Form!"
				src.icon_state = ""
				src.icon = 'Demon - Form 2.dmi'
				new/obj/techs/Overlays/Crater_Small(src.loc)

				src.form_1 = 1
				src.frozen = 0
				src.doing = 0
				src.safe = 0
				return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 350000)

					src.safe = 1
					src.doing = 1
					src.icon_state = "enrage"
					src.frozen = 1
					sleep(transtime)

					src.powerlevel = src.powerlevel_max
					src.ki = src.ki_max
					src.critical = src.critical_max
					src.dodge = src.dodge_max
					src.strength = src.strength_max
					src.defence = src.defence_max
					src.reflect = src.reflect_max
					src.block = src.block_max

					src.powerlevel *= 17
					src.ki *= 15
					src.strength *= 17
					src.defence *= 13

					src.critical += rand(2,7)
					src.dodge += rand(2,7)
					src.reflect += rand(2,7)
					src.block += rand(2,7)
					src.counter += rand(2,7)

					src.speed = 2.7
					src.overlays += demon_elec_2



					view(6) << "<font color = maroon>[src.name] transforms into their Demonic Ascension Form!"
					src.icon_state = ""
					src.icon = 'Demon - Form 3.dmi'
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.form_2 = 1
					src.frozen = 0
					src.doing = 0
					src.safe = 0
					return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 1500000)
						src.safe = 1
						src.doing = 1
						src.icon_state = "enrage"
						src.frozen = 1
						sleep(transtime)

						src.powerlevel = src.powerlevel_max
						src.ki = src.ki_max
						src.critical = src.critical_max
						src.dodge = src.dodge_max
						src.strength = src.strength_max
						src.defence = src.defence_max
						src.reflect = src.reflect_max
						src.block = src.block_max

						src.powerlevel *= 27
						src.ki *= 25
						src.strength *= 27
						src.defence *= 24

						src.speed = 1.3

						src.block += 3
						src.dodge += 3
						src.critical += 3
						src.reflect += 3
						src.counter += 3

						view(6) << "<font color = maroon>[src.name] Morphs into their Pure Evil Form!"
						src.icon_state = ""
						src.icon = 'Demon - Form 4.dmi'
						src.overlays -= demon_elec_2
						src.overlays += demon_elec
						new/obj/techs/Overlays/Crater_Center(src.loc)
						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						return

				else
					if(!src.form_4)
						if(src.powerlevel_max >= 4900000)
							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(transtime)

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.critical = src.critical_max
							src.dodge = src.dodge_max
							src.strength = src.strength_max
							src.defence = src.defence_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							src.powerlevel *= 32
							src.ki *= 30
							src.strength *= 31
							src.defence *= 28

							src.speed = 1.3

							src.block += 5
							src.dodge += 5
							src.critical += 5
							src.reflect += 5
							src.counter += 5

							view(6) << "<font color = maroon>[src.name] raises his power to maximum!"
							src.icon_state = ""
							src.icon = 'Demon - Form 4.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
					else
						if(!src.form_5)
							if(src.powerlevel_max >= 750000000)
								src.safe = 1
								src.doing = 1
								src.icon_state = "enrage"
								src.frozen = 1
								sleep(transtime)

								src.powerlevel = src.powerlevel_max
								src.ki = src.ki_max
								src.critical = src.critical_max
								src.dodge = src.dodge_max
								src.strength = src.strength_max
								src.defence = src.defence_max
								src.reflect = src.reflect_max
								src.block = src.block_max

								src.powerlevel *= 32
								src.ki *= 30
								src.strength *= 31
								src.defence *= 28

								src.speed = 1.3

								src.block += 5
								src.dodge += 5
								src.critical += 5
								src.reflect += 5
								src.counter += 5

								view(6) << "<font color = maroon>[src.name] raises his power to the true form!"
								src.icon_state = ""
								src.icon = 'Demon - Form 5.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.form_5 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0
								return
						else
							if(!src.form_6)
								if(src.powerlevel_max >= 10000000000)
									src.safe = 1
									src.doing = 1
									src.icon_state = "enrage"
									src.frozen = 1
									sleep(transtime)

									src.powerlevel = src.powerlevel_max
									src.ki = src.ki_max
									src.critical = src.critical_max
									src.dodge = src.dodge_max
									src.strength = src.strength_max
									src.defence = src.defence_max
									src.reflect = src.reflect_max
									src.block = src.block_max

									src.powerlevel *= 32
									src.ki *= 30
									src.strength *= 31
									src.defence *= 28

									src.speed = 1.3

									src.block += 5
									src.dodge += 5
									src.critical += 5
									src.reflect += 5
									src.counter += 5

									view(6) << "<font color = maroon>[src.name] raises his power to the red form!"
									src.icon_state = ""
									src.icon = 'Demon - Form 6.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0
									return
							else
								if(!src.form_7)
									if(src.powerlevel_max >= 1000000000000)
										src.safe = 1
										src.doing = 1
										src.icon_state = "enrage"
										src.frozen = 1
										sleep(transtime)

										src.powerlevel = src.powerlevel_max
										src.ki = src.ki_max
										src.critical = src.critical_max
										src.dodge = src.dodge_max
										src.strength = src.strength_max
										src.defence = src.defence_max
										src.reflect = src.reflect_max
										src.block = src.block_max

										src.powerlevel *= 32
										src.ki *= 30
										src.strength *= 31
										src.defence *= 28

										src.speed = 1.3

										src.block += 5
										src.dodge += 5
										src.critical += 5
										src.reflect += 5
										src.counter += 5

										view(6) << "<font color = maroon>[src.name] raises his power to the King of Demon form!"
										src.icon_state = ""
										src.icon = 'Demon - Form 7.dmi'
										new/obj/techs/Overlays/Crater_Center(src.loc)
										src.form_7 = 1
										src.frozen = 0
										src.doing = 0
										src.safe = 0
										return

mob/proc/Good_Demon_Trans()
	var/transtime = 5
	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 75000)
				src.safe = 1
				src.doing = 1
				src.icon_state = "enrage"
				src.frozen = 1
				sleep(transtime)

				src.powerlevel = src.powerlevel_max
				src.ki = src.ki_max
				src.critical = src.critical_max
				src.dodge = src.dodge_max
				src.reflect = src.reflect_max
				src.strength = src.strength_max
				src.defence = src.defence_max
				src.block = src.block_max

				src.powerlevel *= 12
				src.ki *= 10
				src.strength *= 12
				src.defence *= 8

				src.critical += rand(1,3)
				src.dodge += rand(1,4)
				src.reflect += rand(1,2)
				src.block += rand(1)
				src.counter += rand(1,3)

				src.speed = 3.7


				view(6) << "<font color = White>[src.name] transforms into their Good Demonic Will Form!"
				src.icon_state = ""
				src.icon = 'Good Demon 2.dmi'
				new/obj/techs/Overlays/Crater_Small(src.loc)

				src.form_1 = 1
				src.frozen = 0
				src.doing = 0
				src.safe = 0
				return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 350000)

					src.safe = 1
					src.doing = 1
					src.icon_state = "enrage"
					src.frozen = 1
					sleep(transtime)

					src.powerlevel = src.powerlevel_max
					src.ki = src.ki_max
					src.critical = src.critical_max
					src.dodge = src.dodge_max
					src.strength = src.strength_max
					src.defence = src.defence_max
					src.reflect = src.reflect_max
					src.block = src.block_max

					src.powerlevel *= 17
					src.ki *= 15
					src.strength *= 17
					src.defence *= 13

					src.critical += rand(2,7)
					src.dodge += rand(2,7)
					src.reflect += rand(2,7)
					src.block += rand(2,7)
					src.counter += rand(2,7)

					src.speed = 2.7
					src.overlays += demon_elec_2



					view(6) << "<font color = white>[src.name] transforms into their Good Demonic Ascension Form!"
					src.icon_state = ""
					src.icon = 'Good Demon 3.dmi'
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.form_2 = 1
					src.frozen = 0
					src.doing = 0
					src.safe = 0
					return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 1500000)
						src.safe = 1
						src.doing = 1
						src.icon_state = "enrage"
						src.frozen = 1
						sleep(transtime)

						src.powerlevel = src.powerlevel_max
						src.ki = src.ki_max
						src.critical = src.critical_max
						src.dodge = src.dodge_max
						src.strength = src.strength_max
						src.defence = src.defence_max
						src.reflect = src.reflect_max
						src.block = src.block_max

						src.powerlevel *= 27
						src.ki *= 25
						src.strength *= 27
						src.defence *= 24

						src.speed = 1.3

						src.block += 3
						src.dodge += 3
						src.critical += 3
						src.reflect += 3
						src.counter += 3

						view(6) << "<font color = white>[src.name] Morphs into their Pure Good Form!"
						src.icon_state = ""
						src.icon = 'Good Demon 4.dmi'
						src.overlays -= demon_elec_2
						src.overlays += demon_elec
						new/obj/techs/Overlays/Crater_Center(src.loc)
						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						return

				else
					if(!src.form_4)
						if(src.powerlevel_max >= 4900000)
							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(transtime)

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.critical = src.critical_max
							src.dodge = src.dodge_max
							src.strength = src.strength_max
							src.defence = src.defence_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							src.powerlevel *= 32
							src.ki *= 30
							src.strength *= 31
							src.defence *= 28

							src.speed = 1.3

							src.block += 5
							src.dodge += 5
							src.critical += 5
							src.reflect += 5
							src.counter += 5

							view(6) << "<font color = white>[src.name] raises his power to maximum!"
							src.icon_state = ""
							src.icon = 'Good Demon 4.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
					else
						if(!src.form_5)
							if(src.powerlevel_max >= 750000000)
								src.safe = 1
								src.doing = 1
								src.icon_state = "enrage"
								src.frozen = 1
								sleep(transtime)

								src.powerlevel = src.powerlevel_max
								src.ki = src.ki_max
								src.critical = src.critical_max
								src.dodge = src.dodge_max
								src.strength = src.strength_max
								src.defence = src.defence_max
								src.reflect = src.reflect_max
								src.block = src.block_max

								src.powerlevel *= 32
								src.ki *= 30
								src.strength *= 31
								src.defence *= 28

								src.speed = 1.3

								src.block += 5
								src.dodge += 5
								src.critical += 5
								src.reflect += 5
								src.counter += 5

								view(6) << "<font color = white>[src.name] raises his power to the true form!"
								src.icon_state = ""
								src.icon = 'Good Demon 5.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.form_5 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0
								return
						else
							if(!src.form_6)
								if(src.powerlevel_max >= 10000000000)
									src.safe = 1
									src.doing = 1
									src.icon_state = "enrage"
									src.frozen = 1
									sleep(transtime)

									src.powerlevel = src.powerlevel_max
									src.ki = src.ki_max
									src.critical = src.critical_max
									src.dodge = src.dodge_max
									src.strength = src.strength_max
									src.defence = src.defence_max
									src.reflect = src.reflect_max
									src.block = src.block_max

									src.powerlevel *= 32
									src.ki *= 30
									src.strength *= 31
									src.defence *= 28

									src.speed = 1.3

									src.block += 5
									src.dodge += 5
									src.critical += 5
									src.reflect += 5
									src.counter += 5

									view(6) << "<font color = white>[src.name] raises his power to the blue form!"
									src.icon_state = ""
									src.icon = 'Good Demon 6.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0
									return
							else
								if(!src.form_7)
									if(src.powerlevel_max >= 1000000000000)
										src.safe = 1
										src.doing = 1
										src.icon_state = "enrage"
										src.frozen = 1
										sleep(transtime)

										src.powerlevel = src.powerlevel_max
										src.ki = src.ki_max
										src.critical = src.critical_max
										src.dodge = src.dodge_max
										src.strength = src.strength_max
										src.defence = src.defence_max
										src.reflect = src.reflect_max
										src.block = src.block_max

										src.powerlevel *= 32
										src.ki *= 30
										src.strength *= 31
										src.defence *= 28

										src.speed = 1.3

										src.block += 5
										src.dodge += 5
										src.critical += 5
										src.reflect += 5
										src.counter += 5

										view(6) << "<font color = white>[src.name] raises his power to the King of Good Demon form!"
										src.icon_state = ""
										src.icon = 'Good Demon 7.dmi'
										new/obj/techs/Overlays/Crater_Center(src.loc)
										src.form_7 = 1
										src.frozen = 0
										src.doing = 0
										src.safe = 0
										return


mob/proc/Chaos_Demon_Trans()
	var/transtime = 5
	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(src.powerlevel_max >= 75000)
				src.safe = 1
				src.doing = 1
				src.icon_state = "enrage"
				src.frozen = 1
				sleep(transtime)

				src.powerlevel = src.powerlevel_max
				src.ki = src.ki_max
				src.critical = src.critical_max
				src.dodge = src.dodge_max
				src.reflect = src.reflect_max
				src.strength = src.strength_max
				src.defence = src.defence_max
				src.block = src.block_max

				src.powerlevel *= 12
				src.ki *= 10
				src.strength *= 12
				src.defence *= 8

				src.critical += rand(1,3)
				src.dodge += rand(1,4)
				src.reflect += rand(1,2)
				src.block += rand(1)
				src.counter += rand(1,3)

				src.speed = 3.7


				view(6) << {"<font color = White>[src.name] <FONT COLOR="#800000">t</FONT><FONT COLOR="#8c1717">r</FONT><FONT COLOR="#972f2f">a</FONT><FONT COLOR="#a34646">n</FONT><FONT COLOR="#af5d5d">s</FONT><FONT COLOR="#ba7474">f</FONT><FONT COLOR="#c68c8c">o</FONT><FONT COLOR="#d1a3a3">r</FONT><FONT COLOR="#ddbaba">m</FONT><FONT COLOR="#e9d1d1">s</FONT><FONT COLOR="#f4e9e9"> </FONT><FONT COLOR="#ffffff">i</FONT><FONT COLOR="#f4e9e9">n</FONT><FONT COLOR="#e9d1d1">t</FONT><FONT COLOR="#ddbaba">o</FONT><FONT COLOR="#d1a3a3"> </FONT><FONT COLOR="#c68c8c">t</FONT><FONT COLOR="#ba7474">h</FONT><FONT COLOR="#af5d5d">e</FONT><FONT COLOR="#a34646">i</FONT><FONT COLOR="#972f2f">r</FONT><FONT COLOR="#8c1717"> </FONT><FONT COLOR="#800000">C</FONT><FONT COLOR="#8c1717">h</FONT><FONT COLOR="#972f2f">a</FONT><FONT COLOR="#a34646">o</FONT><FONT COLOR="#af5d5d">s</FONT><FONT COLOR="#ba7474"> </FONT><FONT COLOR="#c68c8c">D</FONT><FONT COLOR="#d1a3a3">e</FONT><FONT COLOR="#ddbaba">m</FONT><FONT COLOR="#e9d1d1">o</FONT><FONT COLOR="#f4e9e9">n</FONT><FONT COLOR="#ffffff">i</FONT><FONT COLOR="#f4e9e9">c</FONT><FONT COLOR="#e9d1d1"> </FONT><FONT COLOR="#ddbaba">W</FONT><FONT COLOR="#d1a3a3">i</FONT><FONT COLOR="#c68c8c">l</FONT><FONT COLOR="#ba7474">l</FONT><FONT COLOR="#af5d5d"> </FONT><FONT COLOR="#a34646">F</FONT><FONT COLOR="#972f2f">o</FONT><FONT COLOR="#8c1717">r</FONT><FONT COLOR="#800000">m</FONT> !"}
				src.icon_state = ""
				src.icon = 'Chaos Demon 2.dmi'
				new/obj/techs/Overlays/Crater_Small(src.loc)

				src.form_1 = 1
				src.frozen = 0
				src.doing = 0
				src.safe = 0
				return
		else
			if(!src.form_2)
				if(src.powerlevel_max >= 350000)

					src.safe = 1
					src.doing = 1
					src.icon_state = "enrage"
					src.frozen = 1
					sleep(transtime)

					src.powerlevel = src.powerlevel_max
					src.ki = src.ki_max
					src.critical = src.critical_max
					src.dodge = src.dodge_max
					src.strength = src.strength_max
					src.defence = src.defence_max
					src.reflect = src.reflect_max
					src.block = src.block_max

					src.powerlevel *= 17
					src.ki *= 15
					src.strength *= 17
					src.defence *= 13

					src.critical += rand(2,7)
					src.dodge += rand(2,7)
					src.reflect += rand(2,7)
					src.block += rand(2,7)
					src.counter += rand(2,7)

					src.speed = 2.7
					src.overlays += demon_elec_2



					view(6) << {"<font color = white>[src.name] <FONT COLOR="#800000">t</FONT><FONT COLOR="#8b1515">r</FONT><FONT COLOR="#952b2b">a</FONT><FONT COLOR="#a04040">n</FONT><FONT COLOR="#ab5555">s</FONT><FONT COLOR="#b56b6b">f</FONT><FONT COLOR="#c08080">o</FONT><FONT COLOR="#cb9595">r</FONT><FONT COLOR="#d5abab">m</FONT><FONT COLOR="#e0c0c0">s</FONT><FONT COLOR="#ebd5d5"> </FONT><FONT COLOR="#f5ebeb">i</FONT><FONT COLOR="#ffffff">n</FONT><FONT COLOR="#f5ebeb">t</FONT><FONT COLOR="#ebd5d5">o</FONT><FONT COLOR="#e0c0c0"> </FONT><FONT COLOR="#d5abab">t</FONT><FONT COLOR="#cb9595">h</FONT><FONT COLOR="#c08080">e</FONT><FONT COLOR="#b56b6b">i</FONT><FONT COLOR="#ab5555">r</FONT><FONT COLOR="#a04040"> </FONT><FONT COLOR="#952b2b">G</FONT><FONT COLOR="#8b1515">o</FONT><FONT COLOR="#800000">o</FONT><FONT COLOR="#8a1414">d</FONT><FONT COLOR="#942727"> </FONT><FONT COLOR="#9e3b3b">D</FONT><FONT COLOR="#a74f4f">e</FONT><FONT COLOR="#b16262">m</FONT><FONT COLOR="#bb7676">o</FONT><FONT COLOR="#c58a8a">n</FONT><FONT COLOR="#cf9e9e">i</FONT><FONT COLOR="#d9b1b1">c</FONT><FONT COLOR="#e2c5c5"> </FONT><FONT COLOR="#ecd9d9">A</FONT><FONT COLOR="#f6ecec">s</FONT><FONT COLOR="#ffffff">c</FONT><FONT COLOR="#f5ebeb">e</FONT><FONT COLOR="#ebd5d5">n</FONT><FONT COLOR="#e0c0c0">s</FONT><FONT COLOR="#d5abab">i</FONT><FONT COLOR="#cb9595">o</FONT><FONT COLOR="#c08080">n</FONT><FONT COLOR="#b56b6b"> </FONT><FONT COLOR="#ab5555">F</FONT><FONT COLOR="#a04040">o</FONT><FONT COLOR="#952b2b">r</FONT><FONT COLOR="#8b1515">m</FONT><FONT COLOR="#800000">!</FONT> "}
					src.icon_state = ""
					src.icon = 'Chaos Demon 3.dmi'
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.form_2 = 1
					src.frozen = 0
					src.doing = 0
					src.safe = 0
					return
			else
				if(!src.form_3)
					if(src.powerlevel_max >= 1500000)
						src.safe = 1
						src.doing = 1
						src.icon_state = "enrage"
						src.frozen = 1
						sleep(transtime)

						src.powerlevel = src.powerlevel_max
						src.ki = src.ki_max
						src.critical = src.critical_max
						src.dodge = src.dodge_max
						src.strength = src.strength_max
						src.defence = src.defence_max
						src.reflect = src.reflect_max
						src.block = src.block_max

						src.powerlevel *= 27
						src.ki *= 25
						src.strength *= 27
						src.defence *= 24

						src.speed = 1.3

						src.block += 3
						src.dodge += 3
						src.critical += 3
						src.reflect += 3
						src.counter += 3

						view(6) << {"<font color = white>[src.name] <FONT COLOR="#800000">M</FONT><FONT COLOR="#902020">o</FONT><FONT COLOR="#a04040">r</FONT><FONT COLOR="#b06060">p</FONT><FONT COLOR="#c08080">h</FONT><FONT COLOR="#d0a0a0">s</FONT><FONT COLOR="#e0c0c0"> </FONT><FONT COLOR="#f0e0e0">i</FONT><FONT COLOR="#ffffff">n</FONT><FONT COLOR="#f0e0e0">t</FONT><FONT COLOR="#e0c0c0">o</FONT><FONT COLOR="#d0a0a0"> </FONT><FONT COLOR="#c08080">t</FONT><FONT COLOR="#b06060">h</FONT><FONT COLOR="#a04040">e</FONT><FONT COLOR="#902020">i</FONT><FONT COLOR="#800000">r</FONT><FONT COLOR="#902020"> </FONT><FONT COLOR="#a04040">P</FONT><FONT COLOR="#b06060">u</FONT><FONT COLOR="#c08080">r</FONT><FONT COLOR="#d0a0a0">e</FONT><FONT COLOR="#e0c0c0"> </FONT><FONT COLOR="#f0e0e0">G</FONT><FONT COLOR="#ffffff">o</FONT><FONT COLOR="#f0e0e0">o</FONT><FONT COLOR="#e0c0c0">d</FONT><FONT COLOR="#d0a0a0"> </FONT><FONT COLOR="#c08080">F</FONT><FONT COLOR="#b06060">o</FONT><FONT COLOR="#a04040">r</FONT><FONT COLOR="#902020">m</FONT><FONT COLOR="#800000">!</FONT> "}
						src.icon_state = ""
						src.icon = 'Chaos Demon 4.dmi'
						src.overlays -= demon_elec_2
						src.overlays += demon_elec
						new/obj/techs/Overlays/Crater_Center(src.loc)
						src.form_3 = 1
						src.frozen = 0
						src.doing = 0
						src.safe = 0
						return

				else
					if(!src.form_4)
						if(src.powerlevel_max >= 4900000)
							src.safe = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.frozen = 1
							sleep(transtime)

							src.powerlevel = src.powerlevel_max
							src.ki = src.ki_max
							src.critical = src.critical_max
							src.dodge = src.dodge_max
							src.strength = src.strength_max
							src.defence = src.defence_max
							src.reflect = src.reflect_max
							src.block = src.block_max

							src.powerlevel *= 32
							src.ki *= 30
							src.strength *= 31
							src.defence *= 28

							src.speed = 1.3

							src.block += 5
							src.dodge += 5
							src.critical += 5
							src.reflect += 5
							src.counter += 5

							view(6) <<{"<font color = white>[src.name]<FONT COLOR="#800000">r</FONT><FONT COLOR="#952b2b">a</FONT><FONT COLOR="#ab5555">i</FONT><FONT COLOR="#c08080">s</FONT><FONT COLOR="#d5abab">e</FONT><FONT COLOR="#ebd5d5">s</FONT><FONT COLOR="#ffffff"> </FONT><FONT COLOR="#eedbdb">h</FONT><FONT COLOR="#dbb7b7">i</FONT><FONT COLOR="#c99292">s</FONT><FONT COLOR="#b76e6e"> </FONT><FONT COLOR="#a54949">p</FONT><FONT COLOR="#922525">o</FONT><FONT COLOR="#800000">w</FONT><FONT COLOR="#922525">e</FONT><FONT COLOR="#a54949">r</FONT><FONT COLOR="#b76e6e"> </FONT><FONT COLOR="#c99292">t</FONT><FONT COLOR="#dbb7b7">o</FONT><FONT COLOR="#eedbdb"> </FONT><FONT COLOR="#ffffff">m</FONT><FONT COLOR="#eedbdb">a</FONT><FONT COLOR="#dbb7b7">x</FONT><FONT COLOR="#c99292">i</FONT><FONT COLOR="#b76e6e">m</FONT><FONT COLOR="#a54949">u</FONT><FONT COLOR="#922525">m</FONT><FONT COLOR="#800000">!</FONT> "}
							src.icon_state = ""
							src.icon = 'Chaos Demon 4.dmi'
							new/obj/techs/Overlays/Crater_Center(src.loc)
							src.form_4 = 1
							src.frozen = 0
							src.doing = 0
							src.safe = 0
							return
					else
						if(!src.form_5)
							if(src.powerlevel_max >= 750000000)
								src.safe = 1
								src.doing = 1
								src.icon_state = "enrage"
								src.frozen = 1
								sleep(transtime)

								src.powerlevel = src.powerlevel_max
								src.ki = src.ki_max
								src.critical = src.critical_max
								src.dodge = src.dodge_max
								src.strength = src.strength_max
								src.defence = src.defence_max
								src.reflect = src.reflect_max
								src.block = src.block_max

								src.powerlevel *= 32
								src.ki *= 30
								src.strength *= 31
								src.defence *= 28

								src.speed = 1.3

								src.block += 5
								src.dodge += 5
								src.critical += 5
								src.reflect += 5
								src.counter += 5

								view(6) << {"<font color = white>[src.name]<FONT COLOR="#800000">r</FONT><FONT COLOR="#902020">a</FONT><FONT COLOR="#a04040">i</FONT><FONT COLOR="#b06060">s</FONT><FONT COLOR="#c08080">e</FONT><FONT COLOR="#d0a0a0">s</FONT><FONT COLOR="#e0c0c0"> </FONT><FONT COLOR="#f0e0e0">h</FONT><FONT COLOR="#ffffff">i</FONT><FONT COLOR="#f0e0e0">s</FONT><FONT COLOR="#e0c0c0"> </FONT><FONT COLOR="#d0a0a0">p</FONT><FONT COLOR="#c08080">o</FONT><FONT COLOR="#b06060">w</FONT><FONT COLOR="#a04040">e</FONT><FONT COLOR="#902020">r</FONT><FONT COLOR="#800000"> </FONT><FONT COLOR="#902020">t</FONT><FONT COLOR="#a04040">o</FONT><FONT COLOR="#b06060"> </FONT><FONT COLOR="#c08080">t</FONT><FONT COLOR="#d0a0a0">h</FONT><FONT COLOR="#e0c0c0">e</FONT><FONT COLOR="#f0e0e0"> </FONT><FONT COLOR="#ffffff">t</FONT><FONT COLOR="#f0e0e0">r</FONT><FONT COLOR="#e0c0c0">u</FONT><FONT COLOR="#d0a0a0">e</FONT><FONT COLOR="#c08080"> </FONT><FONT COLOR="#b06060">f</FONT><FONT COLOR="#a04040">o</FONT><FONT COLOR="#902020">r</FONT><FONT COLOR="#800000">m</FONT> !"}
								src.icon_state = ""
								src.icon = 'Chaos Demon 5.dmi'
								new/obj/techs/Overlays/Crater_Center(src.loc)
								src.form_5 = 1
								src.frozen = 0
								src.doing = 0
								src.safe = 0
								return
						else
							if(!src.form_6)
								if(src.powerlevel_max >= 10000000000)
									src.safe = 1
									src.doing = 1
									src.icon_state = "enrage"
									src.frozen = 1
									sleep(transtime)

									src.powerlevel = src.powerlevel_max
									src.ki = src.ki_max
									src.critical = src.critical_max
									src.dodge = src.dodge_max
									src.strength = src.strength_max
									src.defence = src.defence_max
									src.reflect = src.reflect_max
									src.block = src.block_max

									src.powerlevel *= 32
									src.ki *= 30
									src.strength *= 31
									src.defence *= 28

									src.speed = 1.3

									src.block += 5
									src.dodge += 5
									src.critical += 5
									src.reflect += 5
									src.counter += 5

									view(6) << {"<font color = white>[src.name]<FONT COLOR="#800000">r</FONT><FONT COLOR="#8e1c1c">a</FONT><FONT COLOR="#9c3939">i</FONT><FONT COLOR="#ab5555">s</FONT><FONT COLOR="#b97272">e</FONT><FONT COLOR="#c78e8e">s</FONT><FONT COLOR="#d5abab"> </FONT><FONT COLOR="#e4c7c7">h</FONT><FONT COLOR="#f2e4e4">i</FONT><FONT COLOR="#ffffff">s</FONT><FONT COLOR="#f2e4e4"> </FONT><FONT COLOR="#e4c7c7">p</FONT><FONT COLOR="#d5abab">o</FONT><FONT COLOR="#c78e8e">w</FONT><FONT COLOR="#b97272">e</FONT><FONT COLOR="#ab5555">r</FONT><FONT COLOR="#9c3939"> </FONT><FONT COLOR="#8e1c1c">t</FONT><FONT COLOR="#800000">o</FONT><FONT COLOR="#8d1a1a"> </FONT><FONT COLOR="#9a3333">t</FONT><FONT COLOR="#a64d4d">h</FONT><FONT COLOR="#b36666">e</FONT><FONT COLOR="#c08080"> </FONT><FONT COLOR="#cd9a9a">b</FONT><FONT COLOR="#dab3b3">l</FONT><FONT COLOR="#e6cdcd">u</FONT><FONT COLOR="#f3e6e6">e</FONT><FONT COLOR="#ffffff">/</FONT><FONT COLOR="#f2e4e4">r</FONT><FONT COLOR="#e4c7c7">e</FONT><FONT COLOR="#d5abab">d</FONT><FONT COLOR="#c78e8e"> </FONT><FONT COLOR="#b97272">f</FONT><FONT COLOR="#ab5555">o</FONT><FONT COLOR="#9c3939">r</FONT><FONT COLOR="#8e1c1c">m</FONT><FONT COLOR="#800000">!</FONT>"}
									src.icon_state = ""
									src.icon = 'Chaos Demon 6.dmi'
									new/obj/techs/Overlays/Crater_Center(src.loc)
									src.form_6 = 1
									src.frozen = 0
									src.doing = 0
									src.safe = 0
									return
							else
								if(!src.form_7)
									if(src.powerlevel_max >= 1000000000000)
										src.safe = 1
										src.doing = 1
										src.icon_state = "enrage"
										src.frozen = 1
										sleep(transtime)

										src.powerlevel = src.powerlevel_max
										src.ki = src.ki_max
										src.critical = src.critical_max
										src.dodge = src.dodge_max
										src.strength = src.strength_max
										src.defence = src.defence_max
										src.reflect = src.reflect_max
										src.block = src.block_max

										src.powerlevel *= 32
										src.ki *= 30
										src.strength *= 31
										src.defence *= 28

										src.speed = 1.3

										src.block += 5
										src.dodge += 5
										src.critical += 5
										src.reflect += 5
										src.counter += 5

										view(6) << {"<font color = white>[src.name] <FONT COLOR="#800000">r</FONT><FONT COLOR="#8b1515">a</FONT><FONT COLOR="#952b2b">i</FONT><FONT COLOR="#a04040">s</FONT><FONT COLOR="#ab5555">e</FONT><FONT COLOR="#b56b6b">s</FONT><FONT COLOR="#c08080"> </FONT><FONT COLOR="#cb9595">h</FONT><FONT COLOR="#d5abab">i</FONT><FONT COLOR="#e0c0c0">s</FONT><FONT COLOR="#ebd5d5"> </FONT><FONT COLOR="#f5ebeb">p</FONT><FONT COLOR="#ffffff">o</FONT><FONT COLOR="#f5ebeb">w</FONT><FONT COLOR="#ebd5d5">e</FONT><FONT COLOR="#e0c0c0">r</FONT><FONT COLOR="#d5abab"> </FONT><FONT COLOR="#cb9595">t</FONT><FONT COLOR="#c08080">o</FONT><FONT COLOR="#b56b6b"> </FONT><FONT COLOR="#ab5555">t</FONT><FONT COLOR="#a04040">h</FONT><FONT COLOR="#952b2b">e</FONT><FONT COLOR="#8b1515"> </FONT><FONT COLOR="#800000">K</FONT><FONT COLOR="#8b1515">i</FONT><FONT COLOR="#952b2b">n</FONT><FONT COLOR="#a04040">g</FONT><FONT COLOR="#ab5555"> </FONT><FONT COLOR="#b56b6b">o</FONT><FONT COLOR="#c08080">f</FONT><FONT COLOR="#cb9595"> </FONT><FONT COLOR="#d5abab">C</FONT><FONT COLOR="#e0c0c0">h</FONT><FONT COLOR="#ebd5d5">a</FONT><FONT COLOR="#f5ebeb">o</FONT><FONT COLOR="#ffffff">s</FONT><FONT COLOR="#f5ebeb"> </FONT><FONT COLOR="#ebd5d5">D</FONT><FONT COLOR="#e0c0c0">e</FONT><FONT COLOR="#d5abab">m</FONT><FONT COLOR="#cb9595">o</FONT><FONT COLOR="#c08080">n</FONT><FONT COLOR="#b56b6b"> </FONT><FONT COLOR="#ab5555">f</FONT><FONT COLOR="#a04040">o</FONT><FONT COLOR="#952b2b">r</FONT><FONT COLOR="#8b1515">m</FONT><FONT COLOR="#800000">!</FONT> "}
										src.icon_state = ""
										src.icon = 'Chaos Demon 7.dmi'
										new/obj/techs/Overlays/Crater_Center(src.loc)
										src.form_7 = 1
										src.frozen = 0
										src.doing = 0
										src.safe = 0
										return
								else
									if(!src.form_8)
										if(src.powerlevel_max >= 100000000000000)
											src.safe = 1
											src.doing = 1
											src.icon_state = "enrage"
											src.frozen = 1
											sleep(transtime)

											src.powerlevel = src.powerlevel_max
											src.ki = src.ki_max
											src.critical = src.critical_max
											src.dodge = src.dodge_max
											src.strength = src.strength_max
											src.defence = src.defence_max
											src.reflect = src.reflect_max
											src.block = src.block_max

											src.powerlevel *= 32
											src.ki *= 30
											src.strength *= 31
											src.defence *= 28

											src.speed = 1.3

											src.block += 5
											src.dodge += 5
											src.critical += 5
											src.reflect += 5
											src.counter += 5

											view(6) << {"<font color = white>[src.name] <FONT COLOR="#800000">r</FONT><FONT COLOR="#902020">a</FONT><FONT COLOR="#a04040">i</FONT><FONT COLOR="#b06060">s</FONT><FONT COLOR="#c08080">e</FONT><FONT COLOR="#d0a0a0">s</FONT><FONT COLOR="#e0c0c0"> </FONT><FONT COLOR="#f0e0e0">h</FONT><FONT COLOR="#ffffff">i</FONT><FONT COLOR="#f0e0e0">s</FONT><FONT COLOR="#e0c0c0"> </FONT><FONT COLOR="#d0a0a0">p</FONT><FONT COLOR="#c08080">o</FONT><FONT COLOR="#b06060">w</FONT><FONT COLOR="#a04040">e</FONT><FONT COLOR="#902020">r</FONT><FONT COLOR="#800000"> </FONT><FONT COLOR="#902020">i</FONT><FONT COLOR="#a04040">n</FONT><FONT COLOR="#b06060">t</FONT><FONT COLOR="#c08080">o</FONT><FONT COLOR="#d0a0a0"> </FONT><FONT COLOR="#e0c0c0">p</FONT><FONT COLOR="#f0e0e0">u</FONT><FONT COLOR="#ffffff">r</FONT><FONT COLOR="#f0e0e0">e</FONT><FONT COLOR="#e0c0c0"> </FONT><FONT COLOR="#d0a0a0">C</FONT><FONT COLOR="#c08080">h</FONT><FONT COLOR="#b06060">a</FONT><FONT COLOR="#a04040">o</FONT><FONT COLOR="#902020">s</FONT><FONT COLOR="#800000">!</FONT>"}
											src.icon_state = ""
											src.icon = 'Chaos Demon 8.dmi'
											new/obj/techs/Overlays/Crater_Center(src.loc)
											src.form_7 = 1
											src.frozen = 0
											src.doing = 0
											src.safe = 0
											return