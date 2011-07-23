mob
	proc
		Train()
			set category = "Training"
			switch(input("Train What?")in list("Power Level","Ki","Strength","Defense","Nothing"))

				if("Nothing")
					return

				if("Power Level")
					src.PL_TRAIN()
					return

				if("Strength")
					src.STR_TRAIN()
					return

				if("Defense")
					src.DEF_TRAIN()
					return

				if("Ki")
					src.KI_TRAIN()
					return




/mob/proc/PL_TRAIN()
	var/train_x = rand(350,550)
	var/train_pl = input("How many points do you want to put into your Power Level?","1 Point = Power Level Max +50",) as num
	if(train_pl < 1)
		alert("You need to train at least 1 point!")
		return
	if(train_pl>src:tp)
		alert("You do not have enough training points!")
		return
	else
		src.tp -= train_pl
		train_pl *= train_x
		src.powerlevel_max += train_pl
		src << "<font color = white>Yamcha:</font> Great you've gained [train_pl] Power! Keep training!"
		return

//-----

/mob/proc/KI_TRAIN()
	var/train_x = rand(350,750)
	var/train_ki = input("How many points do you want to put into Ki?","1 Point = Ki Level Max +50",) as num
	if(train_ki < 1)
		alert("You need to train at least 1 point!")
		return
	if(train_ki>src:tp)
		alert("You do not have enough training points!")
		return
	else
		src.tp -= train_ki
		train_ki *= train_x
		src.ki_max += train_ki
		src << "<font color = white>Yamcha:</font> Great you've gained [train_ki] Ki! Keep training!"
		return


//-----

/mob/proc/DEF_TRAIN()
	var/train_x = rand(500,3000)
	var/train_defence = input("How many points do you want to put into Defense?","1 Point = Defense Level Max +15",) as num
	if(train_defence < 1)
		alert("You need to train at least 1 point!")
		return
	if(train_defence>src:tp)
		alert("You do not have enough training points!")
		return
	else
		src.tp -= train_defence
		train_defence *= train_x
		src.defence += train_defence
		src.defence_max += train_defence
		src << "<font color = white>Yamcha:</font> Great you've gained [train_defence] Defense! Keep training!"
		return

//-----

/mob/proc/STR_TRAIN()
	var/train_x = rand(500,3000)
	var/train_strength = input("How many points do you want to put into Strength?","1 Point = Strength Level Max +25",) as num
	if(train_strength < 1)
		alert("You need to train at least 1 point!")
		return
	if(train_strength>src:tp)
		alert("You do not have enough training points!")
		return
	else
		src.tp -= train_strength
		train_strength *= train_x
		src.strength += train_strength
		src.strength_max += train_strength
		src << "<font color = white>Yamcha:</font> Great you've gained [train_strength] Strength! Keep training!"
		return




