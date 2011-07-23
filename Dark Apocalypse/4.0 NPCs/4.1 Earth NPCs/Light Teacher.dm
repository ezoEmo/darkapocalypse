mob/var/goodtest=0
mob/var/eviltest=0

mob
	NPC

		Light_Teacher

			name = "{NPC} Light Teacher"
			icon = 'npcs.dmi'
			icon_state = "Light Teacher"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7227362

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)
					if(usr.race == "Demon")
						if(usr.karma == "Good" && usr.karma_rating >= 50)
							usr << "<font color = white>Light Teacher:</font> Greetings [usr.name].You have much good in your heart. I will teach you how to control that power."
							sleep(10)
							usr.learn_chaos_blitz = 1
							usr.race = "Chaos Demon"
							usr.icon = 'Chaos Demon 1.dmi'
							usr << "<font color = white>Light Teacher:</font> You have now Transformed into Chaos Demon. You have the power of now Light and Dark within you."
							world.SetMedal("Complete Chaos",usr)
							usr <<"<font color=blue> <center> ((( You have Unlocked 'Complete Chaos' Medal)))"
							world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Complete Chaos' Medal."
							usr << "<center><font color=white>..:: You learned Chaos Blitz ::..</center></font>"
							usr.verbs += new/mob/learn/verb/Chaos_Demon_Ki_Blast


						else
							usr << "<font color=white>Light Teacher:</font> Even Demons can have good heart. Get 50 % Good Karma and I'll give you more power."
					if (usr.karma == "Good" && usr.karma_rating >= 100)
						if (usr.goodtest==0)
							usr << "<font color = white>Light Teacher:</font> You are a Good person. Good is the way to go."
							world.SetMedal("Good is the Way to Go",usr)
							usr <<"<font color=blue> <center> ((( You have Unlocked 'Good is the Way to Go' Medal)))"
							world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Good is the Way to Go' Medal."
							usr.goodtest+=1

					else
						usr << "<font color=white>Light Teacher:</font> I only help Demons. Good Day Sir."
						return


mob
	NPC

		Dark_Teacher

			name = "{NPC} Dark Teacher"
			icon = 'npcs.dmi'
			icon_state = "Dark Teacher"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 7227363

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(1)
					if(usr.race == "Good Demon")
						if(usr.karma == "Evil" && usr.karma_rating >= 50)
							usr << "<font color = maroon>Dark Teacher:</font> Greetings [usr.name].You have much Evil in your heart. I will teach you how to control that power."
							sleep(10)
							usr.learn_chaos_blitz = 1
							usr.race = "Chaos Demon"
							usr.icon = 'Chaos Demon 1.dmi'
							usr << "<font color = maroon>Dark Teacher:</font> You have now Transformed into Chaos Demon. You have the power of now Light and Dark within you."
							world.SetMedal("Complete Chaos",usr)
							usr <<"<font color=blue> <center> ((( You have Unlocked 'Complete Chaos' Medal)))"
							world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Complete Chaos' Medal."
							usr << "<center><font color=white>..:: You learned Chaos Blitz ::..</center></font>"
							usr.verbs += new/mob/learn/verb/Chaos_Demon_Ki_Blast
						else
							usr << "<font color=maroon>Dark Teacher:</font> You make me sick.You are a demon with a good heart. Get 50 % Evil Karma and I'll give you more power."


					if (usr.karma == "Evil" && usr.karma_rating >= 100)
						if (usr.eviltest==0)
							usr << "<font color = maroon>Dark Teacher:</font> You are a  Evil person. Evil is the life."
							world.SetMedal("Evil is the Life",usr)
							usr <<"<font color=blue> <center> ((( You have Unlocked 'Evil is the Life' Medal)))"
							world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Evil is the Life' Medal."
							usr.eviltest+=1


					else
						usr << "<font color=maroon>Dark Teacher:</font> I only help Good Demons. Go away."
						return
