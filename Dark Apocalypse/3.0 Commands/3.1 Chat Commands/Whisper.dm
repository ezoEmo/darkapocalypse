mob/var/whispers_off = 0
mob/PC/verb/Whisper()
	set category = "Channels"
	var/list/L
	L = list("font size")
	var/varPeople = list()

	if(World_Mute)
		usr << "The world is muted"
		return

	if(Channel_Mute && !src.GMLevel)
		src << "All Chat Channels are Muted!"
		return

	if(usr.muted)
		usr << "You are muted"
		return

	for(var/mob/PC/M in world)
		if(!M.whispers_off)
			if(M.key) varPeople += M



	var/varTo = input("Who would you like to Whisper?","Whisper") in varPeople + list("Cancel")

	if(varTo == "Cancel")
		return

	var/varSay = input("What would you like to say to [varTo]?","Whisper") as text|null

	if(src.muted)
		src << "You have been muted!"
		return

	for(var/X in L)
		if(findtext(varSay,X))
			alert("You may not change your font size.")
			return

	if(!varSay)
		spawn() alert("Your message may not be blank.")
		return

	if(lentext(varSay) > 750)
		spawn() alert("Your message can not exceed 750 characters.")
		varSay = copytext(varSay,1,750)

	if(!varTo)return
	if(usr in varTo:Ignored)
		usr << "<font color=red>[varTo] is ignoring you, you may not whisper them."
		return

	src << "<font color = purple>To [varTo:name]: [varSay]"

	if(src.GMLevel > 0)
		varTo << "<font color = #F819F5>([src.title]) <font color = blue><a href=?src=\ref[src];action=Whisper>[src.name]</a></font> Whispers: [varSay]"
	else
		varTo << "<font color = #F819F5><font color = blue><a href=?src=\ref[src];action=Whisper>[src.name]</a></font> Whispers: [varSay]"




	src.afk_time = 0

mob/Topic(href,href_list[])
	switch(href_list["action"])
		if("Whisper")
			var/message = input("What would you like to reply?","Whisper") as null|text
			if(!message)
				spawn() alert("Your message may not be blank.")
				return

			if(usr.GMLevel >= 1)
				src << "<font color = #F819F5>([src.title]) <font color = blue><a href=?src=\ref[usr];action=Whisper>[usr.name]</a></font> Whispers: [message]"
				usr << "<font color = purple>To [src.name]: [message]"
			else
				src << "<font color = #F819F5><font color = blue><a href=?src=\ref[usr];action=Whisper>[usr.name]</a></font> Whispers: [message]"
				usr << "<font color = purple>To [src.name]: [message]"

	. = ..()