mob/var/rest = 0
mob/var/rest_delay = 0

mob/PC/verb/Rest()
	set category = "Training"

	if(src.rest_delay)
		src << "You must wait a moment before Resting!"
		return

	if(src.kaioken)
		return

	if(src.KO)
		return

	if(src.rest)
		src.rest_delay = 1
		src << "You stop resting"
		src.rest = 0
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0
		spawn(25)src.rest_delay = 0
		src.afk_time = 0
		return

	if(src.doing)
		return

	if(!src.fatigue)
		src << "You are already rested up"
		return
	else
		src.rest_delay = 1
		src << "You sit down and rest yourself"
		src.rest = 1
		src.frozen = 1
		src.doing = 1
		src.icon_state = "meditate"
		spawn(25)src.rest_delay = 0
		src.Rest_Gain()
		src.afk_time = 0
		return

mob/proc/Rest_Gain()
	if(!src.rest)
		return
	else
		if(src.fatigue <= 0)
			src << "You are all rested up"
			src.fatigue = 0
			src.rest = 0
			src.icon_state = ""
			src.frozen = 0
			src.doing = 0
			sleep(50)
			src.rest_delay = 0
			return

		sleep(10)

		if(!src.rest)
			return
		else
			var/gains = rand(6,33)
			src.fatigue -= gains

			if(src.fatigue <= 0)
				src << "You are all rested up"
				src.fatigue = 0
				src.rest = 0
				src.icon_state = ""
				src.frozen = 0
				src.doing = 0
				sleep(50)
				src.rest_delay = 0
				return
			spawn(5) src.Rest_Gain()
			return
