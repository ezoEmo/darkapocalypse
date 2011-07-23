mob/var/meditate = 0

obj/Training
	density = 0

	Meditation_Pad
		verb
			Meditate()
				set src in view(0)
				set category = "Training"

				if(usr.rage > 0)
					usr << "Your mind must be completely Calm to Meditate"
					return

				if(usr.kaioken)
					return

				if(usr.meditate)
					usr << "You stop Meditating"
					usr.meditate = 0
					usr.icon_state = ""
					usr.frozen = 0
					usr.doing = 0
					return

				if(usr.doing)
					return

				if(usr.fatigue >= usr.fatigue_max)
					src << "You are too Tired to Meditate"
					return
				else
					usr.meditate = 1
					usr << "You sit down and begin to focus your mind as you Meditate."
					usr.meditate = 1
					usr.frozen = 1
					usr.doing = 1
					usr.icon_state = "meditate"
					usr.Meditate_Gain()
					return

mob/proc/Meditate_Gain()

	if(!src.meditate)
		return

	if(src.fatigue >= src.fatigue_max)
		src << "You are too Tired to continue Meditating"
		src.fatigue = src.fatigue_max
		src.meditate = 0
		src.frozen = 0
		src.doing = 0
		src.icon_state = ""
		return

	if(prob(65))
		src.fatigue += rand(0,5)

	sleep(12)

	if(!src.meditate)
		return

	if(prob(30))
		var/gain = rand(1,5)
		switch(gain)

			if(1)
				var/exp_gain = rand(src.level,(src.tnl * 0.005))
				src.exp += round(exp_gain)
				src << "\white <i>You feel more Experienced..."
			if(2)
				var/str = rand((src.strength_max * 0.02),(src.strength_max * 0.05))
				src.strength_max += round(str)
				src.strength = src.strength_max
				src << "\white <i>You feel Stronger..."
			if(3)
				var/def = rand((src.defence_max * 0.02),(src.defence_max * 0.05))
				src.defence_max += round(def)
				src.defence = src.defence_max
				src << "\white <i>You feel more Durable..."
			if(4)
				var/power = rand((src.powerlevel_max * 0.002),(src.powerlevel_max * 0.05))
				src.powerlevel_max += round(power)
				src << "\white <i>You feel more Power..."
			if(5)
				var/ki_gain = rand((src.ki_max * 0.002),(src.ki_max * 0.05))
				src.ki_max += round(ki_gain)
				src << "\white <i>You feel more Energy..."

	src.Level_Up()
	spawn(35) src.Meditate_Gain()
	return