/////////////////////////King-manga-man's Tournament System!///////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////yes i actually coded something lol ///////////////////////////////
////////////////////////i coded this from scratch so if your///////////////////////////////
///////////////////going to use this code please give credit to me/////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////

mob
	var
		tmp/tourny = 0

var/tournament = 0




mob/Tournament
	verb
		Enter_Tournament()
			set category = "Tournament"
			set name = "Enter Tournament"
			if(usr.tourny == 1)
				usr<<"<font color=white><b><u>Your already in the tournament!</font></b></u>"
				return
			else
				usr.loc=locate(120,17,1)
				usr.tourny=1
				usr.safe=0
				usr<<"<font color=white><b><u>You joined the tournament!</font></b></u>"
		Leave_Tournament()
			set category = "Tournament"
			set name = "Leave Tournament"
			if(usr.tourny == 0)
				usr<<"<font color=white><b><u>Your not in the tournament!</font></b></u>"
				return
			else
				usr.loc=locate(150,60,1)
				usr.tourny=0
				usr.safe=1
				usr<<"<font color=white><b><u>You left the tournament!</font></b></u>"





mob/Logout()
	src.verbs -= new/mob/Tournament/verb/Enter_Tournament()
	src.verbs -= new/mob/Tournament/verb/Leave_Tournament()


