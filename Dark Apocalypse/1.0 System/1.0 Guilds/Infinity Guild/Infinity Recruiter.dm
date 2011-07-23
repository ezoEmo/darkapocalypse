mob
	NPC

		AllStar_Guild_Recruiter

			name = "{NPC} All Star Guild Recruiter"
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
							switch(alert("Greetings [usr.name]! I see you currently do not belong to a Guild. Do you wish to become a member of All Star?","","Yes","No"))
								if("Yes")
									usr.in_guild = 1
									usr.guild_name = "All Star"
									usr.guild_name_html = {"<FONT COLOR="#8b0000">C</FONT><FONT COLOR="#9f0000">h</FONT><FONT COLOR="#b20000">a</FONT><FONT COLOR="#c60000">o</FONT><FONT COLOR="#d90000">s</FONT><FONT COLOR="#ed0000"> </FONT><FONT COLOR="#ff0000">o</FONT><FONT COLOR="#ed0000">f</FONT><FONT COLOR="#d90000"> </FONT><FONT COLOR="#c60000">t</FONT><FONT COLOR="#b20000">h</FONT><FONT COLOR="#9f0000">e</FONT><FONT COLOR="#8b0000"> </FONT><FONT COLOR="#9c0000">A</FONT><FONT COLOR="#ac0000">l</FONT><FONT COLOR="#bd0000">l</FONT><FONT COLOR="#ce0000"> </FONT><FONT COLOR="#df0000">S</FONT><FONT COLOR="#ef0000">t</FONT><FONT COLOR="#ff0000">a</FONT><FONT COLOR="#ed0000">r</FONT><FONT COLOR="#d90000"> </FONT><FONT COLOR="#c60000">C</FONT><FONT COLOR="#b20000">r</FONT><FONT COLOR="#9f0000">e</FONT><FONT COLOR="#8b0000">w</FONT> "}
									usr.guild_rank = "Recruit"
									usr.Give_Guild_Verbs()
									usr.verbs -= new/mob/PC/verb/Guild_Create()
									usr.verbs += typesof(/mob/Guild_Leader/verb)
									usr.verbs += typesof(/mob/Guild_Verbs/verb)

									usr << "<font color = white>[src.name]:</font> Welcome to the Guild, [usr.name]!"
									for(var/client/C)
										if(C.mob)
											var/mob/X = C.mob
											if(X.guild_name == usr.guild_name)
												X << "<font color = #BB0EDA>Guild Information:</font> [usr] has joined the Guild!"
								if("No")
									return
						else
							usr << "<font color = white>[src.name]:</font> Infinity only recruits the best of Warriors. Come back when your Stronger (Level 25)"
							return
					else
						if(usr.guild_name == "All Star")
							switch(input("Greetings [usr.name]! What can I do for you today?","")in list("Seek Promotion","Aqquire New Items","Eject a Guild Member"))

								if("Seek Promotion")

									if(usr.tp >= 750)
										switch(input("What Promotion do you wish to Attain?") in list("Private","Corporal","Sergeant","First Lieutenant"))

											if("Private")
												if(usr.guild_rank != "Private" && usr.guild_rank == "Recruit")
													usr.guild_rank = "Private"
													usr.tp -= 750
													usr.tp = 1500

													if(usr.guild_rank == "Private")
														usr.contents += new/obj/Equipment/Buff_Items/EXP_Shard
												else
													usr << "You have this Rank already!"
													return

											if("Corporal")
												if(usr.guild_rank != "Corporal" && usr.guild_rank == "Private")
													usr.guild_rank = "Corporal"
													usr.tp -= 1500
													usr.tp = 2500

													if(usr.guild_rank == "Corporal")
														usr.contents += new/obj/Equipment/Buff_Items/STR_Shard
												else
													usr << "You have this Rank already!"
													return

											if("Sergeant")
												if(usr.guild_rank != "Sergeant" && usr.guild_rank == "Corporal")
													usr.guild_rank = "Sergeant"
													usr.tp -= 2500
													usr.tp = 5000

													if(usr.guild_rank == "Sergeant")
														usr.contents += new/obj/Equipment/Buff_Items/DEF_Shard
												else
													usr << "You have this Rank already!"
													return

											if("First Lieutenant")
												if(usr.guild_rank != "First Lieutenant" && usr.guild_rank == "Sergeant")
													usr.guild_rank = "First Lieutenant"
													usr.tp -= 5000
													usr.tp = 7500

													if(usr.guild_rank == "First Lieutenant")
														usr.contents += new/obj/Equipment/Buff_Items/PL_Shard
												else
													usr << "You have this Rank already!"
													return
									else
										usr << "You are not Eligible for Promotion!"
										return