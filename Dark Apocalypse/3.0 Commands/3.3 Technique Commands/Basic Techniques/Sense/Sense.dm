mob/learn/verb
	Sense()
		set category = "Techniques"
		var/huge = 0
		var/strong = 0
		var/weak = 0
		var/ext = 0
		src << ""
		src << "You sense:"
		for(var/mob/PC/M in world)
			if(M.powerlevel >= src.powerlevel * 10000)
				ext += 1
			if(M.powerlevel >= src.powerlevel * 1000)
				huge += 1
			if(M.powerlevel >= src.powerlevel * 100)
				strong += 1
			if(M.powerlevel < src.powerlevel)
				weak += 1
		spawn(3)
			if(ext >= 1)
				src << "\cyan [ext] <font color = yellow>Extremely Huge Powers can be detected!"
				src << "---------------------------------------"
			src << "\cyan [huge] <font color = yellow>Huge Powers detected!"
			src << "---------------------------------------"
			src << "\cyan [strong] <font color = green>Strong Powers detected!"
			src << "---------------------------------------"
			src << "\cyan [weak] <font color = white>Weak Powers detected!"

		src.afk_time = 0