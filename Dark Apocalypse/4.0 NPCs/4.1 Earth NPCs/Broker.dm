mob
	NPC
		Broker
			name = "{NPC} Broker"
			icon = 'npcs.dmi'
			icon_state = "Toma"
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 9384736

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(2)
					usr << "<font color=white>Broker: </font>What can i do for you today [usr]?"
					switch(input("Broker: How can i help you?") in list("Sell Item","Cancel"))
						if("Cancel")
							return

						if("Sell Item")
							usr.Sell()


mob/proc/Sell()
	var/list/Menu = list()
	for(var/obj/Equipment/M in src.contents)
		Menu.Add(M)
	var/obj/O = input("Sell which Item?","{NPC} Broker") as null | anything in Menu

	if(istype(O,/obj/Dragonballs))
		usr << "I cannot buy this from you."
		return
	if(istype(O,/obj/Equipment/guild/GuildWear))
		usr << "I cannot buy this from you."
		return
	if(istype(O,/obj/Equipment/Buff_Items))
		usr << "I cannot buy this from you."
		return


	if(O.equiped)
		usr << "You must unequip the item first."
		return

	usr.zenni += O.value
	usr << "<font color=white>Broker: </font>Thank you [usr]!"
	del O
