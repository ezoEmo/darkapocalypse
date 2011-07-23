mob/learn
	verb
		Psycho_Barrier()
			set category = "Techniques"

			if(src.buku)
				return

			if(src.absorbing)
				src << "You stop Your Barrier."
				src.absorbing = 0
				src.frozen = 0
				src.doing = 0
			else
				if(src.doing)
					return
				src << "Your Psycho Barrier is ready for attacks"
				src.absorbing = 1
				src.frozen = 1
				src.doing = 1
				src.icon_state = "absorb"
				src.afk_time = 0
