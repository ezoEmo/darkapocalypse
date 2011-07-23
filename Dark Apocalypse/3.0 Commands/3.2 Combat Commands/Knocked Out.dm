mob/var/KO = 0
var/fatename



mob/proc
	KO(mob/M)
		if(src.powerlevel <= 0)

			view() << "[src.name] has been knocked out!"
			src.KO = 1
			src.frozen = 1
			src.ki_lock = 1
			src.sight |= BLIND

			sleep(60)

			src.KO = 0
			src.frozen = 0
			src.ki_lock = 0
			src.sight &= ~BLIND
			src << "You wake up!"
			return
		else
			return

	Tired_KO()
		if(src.fatigue >= src.fatigue_max)
			view() << "[src.name] has been knocked out!"
			src.KO = 1
			src.frozen = 1
			src.ki_lock = 1
			src.sight |= BLIND

			sleep(70)

			src.fatigue = src.fatigue_max
			src.KO = 0
			src.ki_lock = 0
			src.frozen = 0
			src.sight &= ~BLIND
			src << "You wake up!"
			return
		else
			return
	Saga_Decision(mob/Saga/M)
		for(var/mob/PC/O in world)
			if(O.tab_saga)
				O << "<font color = lime>Saga Information:</font> [fatename] has been defeated by [src.name], what fate does [src.name] choose for [fatename]?"

			switch(input("What is your decision?")in list("1.You may keep your life, but I will be here to protect this planet and my friends.","2.That's it? Never come back here again weakling!","3.You deserve this fate. You're a disgrace to all warriors. Die!"))
				if("1.You may keep your life, but I will be here to protect this planet and my friends.")
					if(src.karma == "Evil")
						src.karma_rating --
						usr << "<i>You feel as if a celestial force has blessed you.</i>"
					else
						src.karma_rating ++
						usr << "<i>You feel as if a celestial force has blessed you</i>"

					if(src.karma_rating < 0)
						if(src.karma == "Good")
							src << "<I>You feel an Evil inside of you begin to awaken..."
							src.karma = "Evil"
							src.karma_rating = 0
						else
							src << "<I>You feel the Good inside of you begin to awaken..."
							src.karma = "Good"
							src.karma_rating = 0
					if(O.tab_saga)

						O << "<font color = lime>Saga Information:</font> [src.name] has chosen the path of caring and defeats [fatename] with a quick finish!"
					if(saga_difficulty == "Easy")
						return
					else
						saga_difficulty = "Medium"
						world << "\red Saga Difficulty has been set to: [saga_difficulty]"

				if("2.That's it? Never come back here again weakling!")

					if(O.tab_saga)
						O << "<font color = lime>Saga Information:</font> [src.name] has chosen a neutral path and defeats [fatename]!"
					if(saga_difficulty == "Easy")
						return
					else
						saga_difficulty = "Hard"
						world << "\red Saga Difficulty has been set to: [saga_difficulty]"

				if("3.You deserve this fate. You're a disgrace to all warriors. Die!")


					if(src.karma == "Evil")
						src.karma_rating ++
						usr << "<i>You feel more hatred overcome you.</i>"
					else
						src.karma_rating --
						usr << "<i>You feel more hatred overcome you</i>"

					if(src.karma_rating < 0)
						if(src.karma == "Good")
							src << "<I>You feel an Evil inside of you begin to awaken..."
							src.karma = "Evil"
							src.karma_rating = 0
						else
							src << "<I>You feel the Good inside of you begin to awaken..."
							src.karma = "Good"
							src.karma_rating = 0
					if(O.tab_saga)

						O << "<font color = lime>Saga Information:</font> [src.name] has chosen the path of hatred and defeats [fatename] with a slow and painful death!"
					if(saga_difficulty == "Easy")
						return
					else
						saga_difficulty = "Extreme"
						world << "\red Saga Difficulty has been set to: [saga_difficulty]"
