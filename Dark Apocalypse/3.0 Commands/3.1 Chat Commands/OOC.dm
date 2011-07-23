mob/var/say_delay = 0
mob/var/muted = 0
mob/var/mute_time = 0
mob/var/spammed = 0
var/World_Mute=0
var/Channel_Mute = 0



mob/verb/OOC(T as text)
	set category = "Channels"

	if(src.muted)
		src << "You have been muted!"
		return

	if(World_Mute && !src.GMLevel)
		src << "The world is Muted!"
		return



	if(!T)
		spawn() alert("Your message may not be blank.")
		return


	if(lentext(T) > 150)
		spawn() alert("Your message can not exceed 100 characters.")
		T = copytext(T,1,150)

	else
		ChatLog(src,"OOC: [T]")
		for(var/client/C)
			if(!C)continue
			if(!C.mob) continue
			if(C.mob.Ignored.Find(usr)) continue
			if(!src.in_guild)
				if(C.mob.ooc_on)
					C << {"<font color="#000066">{<font color="#FFFFFF">[src.title]<font color="#000066">}</font></font><font color=#999999>{[src.rank]} [src.name] OOC:<font color = [textcolor]> [s_smileys(T)]"}//[s_smileys(T)]
					src.afk_time = 0
			else
				if(C.mob.ooc_on)
					C << {"<font color="#000066">{<font color="#FFFFFF">[src.guild_name_html]<font color="#000066">}</font><font color="#000066">{<font color="#FFFFFF">[src.title]<font color="#000066">}</font></font><font color=#999999>{[src.rank]} [src.name] OOC:<font color = [textcolor]> [s_smileys(T)]"}
					src.afk_time = 0

	src.say_delay ++
	src.afk_time = 0
	spawn(100) src.say_delay = 0
	spawn(100) src.muted = 0




mob/PC/verb/Emote(T as text)
	set category = "Channels"
	var/list/L
	L = list("font size")

	if(!src.GMLevel)
		if(World_Mute == 1)
			src << "The world is muted!"
			return


	if(Channel_Mute && !src.GMLevel)
		src << "All Chat Channels are Muted!"
		return

	if(src.muted)
		src << "You have been muted!"
		return

	if(src.say_delay >= 3)
		alert("Flood Supression: You must wait 8 seconds before using Emote again.")
		src.spammed ++
		src.AUTO_BAN()
		src.muted = 1
		sleep(300)
		src.muted = 0
		sleep(1200)
		src.spammed = 0
		return

	for(var/X in L)
		if(findtext(T,X))
			alert("You may not change your font size.")
			return

	if(isnull(T) | T == "" | !T)
		alert("Your message may not be blank.")
		return

	if(lentext(T) > 50)
		alert("Your message can not exceed 50 characters.")
		return

	T = html_encode(T)

	ChatLog(src,"Emote: [T]")
	for(var/client/C)
		if(C.mob.ooc_on)
			C << {"<font color="#0099CC">[src.name] [T]"}
	src.say_delay += 1
	sleep(80)
	src.say_delay = 0
	src.muted = 0