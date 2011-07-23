mob/var/adminsay_delay = 0
mob/var/admin_muted = 0

mob/PC/verb/Admin_Help(T as text)
	set category = "Channels"

	if(!T)
		spawn() alert("Your message may not be blank.")
		return

	if(src.admin_muted)
		src << "You have been muted!"
		return

	if(src.adminsay_delay >= 3)
		spawn() alert("Flood Supression: You must wait 10 seconds before using Admin Say again.")
		src.admin_muted = 1
		return

	T = html_encode(T)

	if(lentext(T) > 750)
		spawn() alert("Your message can not exceed 750 characters.")
		T = copytext(T,1,750)

	for(var/client/C)
		if(!C)continue
		if(!C.mob) continue
		if(C.mob.Ignored.Find(usr)) continue
		if(!C.mob.GMLevel && C != usr) continue
		C << "\blue (ADMIN HELP) [src.name] Says: [T]"

	src.adminsay_delay ++
	sleep(100)
	src.adminsay_delay = 0
	src.admin_muted = 0
	src.afk_time = 0
