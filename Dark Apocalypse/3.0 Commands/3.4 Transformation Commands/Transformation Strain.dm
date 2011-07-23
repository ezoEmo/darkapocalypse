mob/proc/Transformation_Strain()
	set background = 1

	if(!src.form_1)
		return

	var/drain = src.ki_max * (src.upkeep / 100)
	var/msg = 0

	if(src.race == "Saiyan" || src.race == "Half Saiyan")

		if(src.ascended_ssj)
			drain = 0

		if(src.form_2)
			drain = src.ki_max * (src.upkeep / 100)

		if(src.form_3)
			drain = src.ki_max * (src.upkeep / 100)

		if(src.form_4)
			drain *= 2

		if(src.form_5)
			drain *= 3

	if(src.ki > 0)
		src.ki -= round(drain)
		if(src.ki <= (src.ki_max * 0.05))
			if(!msg)
				src << "You start to feel low on Ki"
				msg = 1
		spawn(50) src.Transformation_Strain()
	else
		src.ki = 0
		msg = 0

		src << "The strain of your Transformation overcomes you"

		if(src.race == "Human")
			src.Human_Revert()
		if(src.race == "Half Saiyan")
			src.Half_Saiyan_Revert()
		if(src.race == "Changling")
			src.Changling_Revert()
		if(src.race == "Saiyan")
			src.Saiyan_Revert()
		if(src.race == "Tuffle")
			src.Tuffle_Revert()
		if(src.race == "Bio-Android")
			src.Bio_Revert()
		if(src.race == "Bojack")
			src.Bojack_Revert()

		if(src.rest)
			src.rest = 0

		if(src.buku)
			sleep(10)
			src.icon_state = "flight"
			src.buku = 1
			src.density = 0
			src.doing = 1
		src.trans_delay = 1
		sleep(350)
		src.trans_delay = 0
		return