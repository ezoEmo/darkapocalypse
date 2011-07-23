mob/verb/Say(T as text)
	set category = "Channels"

	if(Channel_Mute && !src.GMLevel)
		src << "All Chat Channels are Muted!"
		return

	if(src.muted)
		src << "You have been muted"
		return

	if(src.say_delay >= 3)
		spawn() alert("Flood Supression: You must wait 5 seconds before using Say again.")
		src.muted = 1
		sleep(50)
		src.muted = 0
		return

	if(!T)
		spawn() alert("Your message may not be blank.")
		return

	T = html_encode(T)

	if(lentext(T) > 750)
		spawn() alert("Your message can not exceed 750 characters.")
		T = copytext(T,1,750)



	src << "You Say:<font color = #CCCCCC> [s_smileys(T)]"
	for(var/mob/M in oview())if(!M.Ignored.Find(usr))M<< "[src.name] Says:<font color = white> [s_smileys(T)]"
	if(sd_BalloonTails && sd_BalloonTails.len)
		for(var/Tail in sd_BalloonTails)
			del(Tail)

	// show it in a ballon that will be cleared in 15 seconds
	sd_ImprovedWordBalloon(T, src)

	// show the text in everyone's text window
	for(var/mob/M in moblist)
	//			if(M.Window)
	//				M.Window.Append("[src]: [T]")

	src.say_delay += 1
	sleep(50)
	src.say_delay = 0