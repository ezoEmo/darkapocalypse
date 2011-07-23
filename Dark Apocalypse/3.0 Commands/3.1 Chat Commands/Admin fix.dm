mob/verb/Admin_Fix()
	set category = "Channels"

	if(src.GMLevel > 0)
		src.ApplyGM()
		src << " You should have your tab back now."
	else
		src << "This is for GM"

mob/verb/Visit_Forums()
	set category = "Channels"
	src << "http://allstarsda.top-site-list.com/forum.html"
	src.forum=1
	usr.FSMedal()

mob/verb/Visit_Sponsers()
	set category = "Channels"
	usr << "www.Zejeeforums.tk and www.Zejee.tk"
	usr.sponser=1
	usr.FSMedal()