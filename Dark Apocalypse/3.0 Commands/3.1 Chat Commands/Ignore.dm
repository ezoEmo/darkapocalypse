mob/var/list/Ignored[0]

/*mob/PC
	verb
		Ignore()
			set category = "Channels"
			src << "This verb is unavailable."
			return
			if(C == src)
				return

			if(istype(C,/mob/PC))
				var/X = alert("Do you want to ignore all messages from [C]?","Ignore [C]","Yes","No")
				if(X == "No")
					return
				else
					if(Ignored.Find(C))
						usr << "You have already ignored [C]."
						return

					Ignored += C
					usr << "You are now ignoring [C]."

					if(!C.Ignored.Find(usr))
						C << "[usr] has added you to their ignore list."
			else
				usr << "You can only Ignore Players!"
				return

			src.afk_time = 0

		Unignore(mob/C in Ignored)
			set category="Channels"

			var/X = alert("Do you want to un-ignore [C]?","Unignore [C]","Yes","No")
			if(X == "No")
				return
			else
				Ignored -= C
				usr << "You are no longer ignoring [C]."

				if(!C.Ignored.Find(usr))
					C << "[usr] has removed you from their ignore list."

			src.afk_time = 0*/