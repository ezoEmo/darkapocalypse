mob/learn
	verb
		Energy_Field()
			set category = "Techniques"

			if(src.buku)
				return

			if(src.absorbing)
				src << "You stop your Energy Field."
				src.absorbing = 0
				src.frozen = 0
				src.doing = 0
			else
				if(src.doing)
					return
				src << "Your Energy Field is ready for attacks"
				src.absorbing = 1
				src.frozen = 1
				src.doing = 1
				src.icon_state = "absorb"
				src.afk_time = 0




mob/learn
	verb
		Legend_Shield()
			set category = "Techniques"

			if(src.buku)
				return

			if(src.absorbing)
				src << "You stop your Shield."
				src.absorbing = 0
				src.frozen = 0
				src.doing = 0
			else
				if(src.doing)
					return
				src << "Your Legend Shield is ready for attacks"
				src.absorbing = 1
				src.frozen = 1
				src.doing = 1
				src.icon_state = "absorb"
				src.afk_time = 0