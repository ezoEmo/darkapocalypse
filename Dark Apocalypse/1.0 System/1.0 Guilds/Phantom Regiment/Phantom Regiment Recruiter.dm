mob
	NPC

		Phantom_Regiment_Guild_Recruiter

			name = "{NPC} Phantom Regiment Guild Recruiter"
			icon = 'Guild Recruiter.dmi'
			density = 1
			safe = 1

			powerlevel = 100

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)

					if(!usr.in_guild)
						if(usr.level >= 25)
							switch(alert("Greetings [usr.name]! I see you currently do not belong to a Guild. Do you wish to become a member of Phantom Regiment?","","Yes","No"))
								if("Yes")
									usr.in_guild = 1
									usr.guild_name = "Phantom Regiment"
									usr.guild_name_html = "<FONT COLOR=#140436>P</FONT><FONT COLOR=#251442>h</FONT><FONT COLOR=#35254e>a</FONT><FONT COLOR=#46355a>n</FONT><FONT COLOR=#574566>t</FONT><FONT COLOR=#685572>o</FONT><FONT COLOR=#78667e>m</FONT><FONT COLOR=#887589> </FONT><FONT COLOR=#867689>R</FONT><FONT COLOR=#847788>e</FONT><FONT COLOR=#817787>g</FONT><FONT COLOR=#7f7886>i</FONT><FONT COLOR=#7c7985>m</FONT><FONT COLOR=#797a84>e</FONT><FONT COLOR=#777a83>n</FONT><FONT COLOR=#747a82>t</FONT>"
									usr.guild_rank = "Recruit"
									usr.Give_Guild_Verbs()
									usr << "<font color = white>[src.name]:</font> Welcome to the Guild, [usr.name]!"
									for(var/client/C)
										if(C.mob)
											var/mob/X = C.mob
											if(X.guild_name == usr.guild_name)
												X << "<font color = #BB0EDA>Guild Information:</font> [usr] has joined the Guild!"
								if("No")
									return
						else
							usr << "<font color = white>[src.name]:</font> Phantom Regiment only recruits the best of Warriors. Come back when your Stronger (Level 25)"
							return
					else
						if(usr.guild_name == "Phantom Regiment")
							switch(input("Greetings [usr.name]! What can I do for you today?","")in list("Seek Promotion","Aqquire New Items","Eject a Guild Member"))

								if("Seek Promotion")

									if(usr.combat_points >= 750)
										switch(input("What Promotion do you wish to Attain?") in list("Private","Corporal","Sergeant","First Lieutenant"))

											if("Private")
												if(usr.guild_rank != "Private" && usr.guild_rank == "Recruit")
													usr.guild_rank = "Private"
													usr.combat_points -= 750
													usr.combat_points_max = 1500

													if(usr.guild_rank == "Private")
														usr.contents += new/obj/Equipment/Buff_Items/EXP_Shard
												else
													usr << "You have this Rank already!"
													return

											if("Corporal")
												if(usr.guild_rank != "Corporal" && usr.guild_rank == "Private")
													usr.guild_rank = "Corporal"
													usr.combat_points -= 1500
													usr.combat_points_max = 2500

													if(usr.guild_rank == "Corporal")
														usr.contents += new/obj/Equipment/Buff_Items/STR_Shard
												else
													usr << "You have this Rank already!"
													return

											if("Sergeant")
												if(usr.guild_rank != "Sergeant" && usr.guild_rank == "Corporal")
													usr.guild_rank = "Sergeant"
													usr.combat_points -= 2500
													usr.combat_points_max = 5000

													if(usr.guild_rank == "Sergeant")
														usr.contents += new/obj/Equipment/Buff_Items/DEF_Shard
												else
													usr << "You have this Rank already!"
													return

											if("First Lieutenant")
												if(usr.guild_rank != "First Lieutenant" && usr.guild_rank == "Sergeant")
													usr.guild_rank = "First Lieutenant"
													usr.combat_points -= 5000
													usr.combat_points_max = 7500

													if(usr.guild_rank == "First Lieutenant")
														usr.contents += new/obj/Equipment/Buff_Items/PL_Shard
												else
													usr << "You have this Rank already!"
													return
									else
										usr << "You are not Eligible for Promotion!"
										return