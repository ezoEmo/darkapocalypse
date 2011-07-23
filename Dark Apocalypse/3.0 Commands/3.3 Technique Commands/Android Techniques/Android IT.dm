mob/learn
	verb
		Android_Instant_Transmission(mob/PC/M in world)
			set category = "Techniques"
			set name = "Instant Transmission"
			if(src.doing)
				src << "You are already doing something!"
				return
			if(src.android_dead)
				src << "Your circuits are currently going through repairs."
				return
			if(src.buku)
				return

			if(src.dead)
				return

			if(src.it_lock)
				src << "Cannot use this Technique at his time"
				return

			if(src.ki_lock)
				src << "Cannot use this Technique at his time"
				return

			if(usr.it_lock == 0)
				if(M.it_lock == 0)
					if(usr.dead == 0)
						if(M.dead == 0)
							if(!M.it_blocked)
								usr.icon_state = "IT"
								sleep(6)
								usr.icon_state = ""
								usr.x = M:x
								usr.y = M:y-1
								usr.z = M:z
								view(6) << "<font size=1><B>[usr.name] appears from nowhere!"
								usr.icon_state = "IT"
								sleep(6)
								usr.icon_state = ""
							else
								src << "You cannot seem to get a clear lock on [M]'s energy signal..."
								return
