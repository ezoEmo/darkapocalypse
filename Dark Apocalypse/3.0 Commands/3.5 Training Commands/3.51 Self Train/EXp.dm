mob/proc/Exp_Check()

	if(src.rank == "Noob")
		if(src.level >= 125)
			src.rank = "Rookie"
			src.tnl = 250
			src <<"<font color=red> <center> *** You have ranked up to a Rookie ***"
			world.SetMedal("Rookie",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Rookie' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Rookie' Medal."


	if(src.rank == "Rookie")
		if(src.level >= 500)
			src.rank = "Novice"
			src.tnl = 500
			src <<"<font color=red> <center> *** You have ranked up to a Novice ***"
			world.SetMedal("Novice",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Novice' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Novice' Medal."

	if(src.rank == "Novice")
		if(src.level >= 1000)
			src.rank = "Expert"
			src.tnl = 750
			src <<"<font color=red> <center> *** You have ranked up to a Expert ***"
			world.SetMedal("Expert",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Expert' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Expert' Medal."

	if(src.rank == "Expert")
		if(level>=10000)
			src.rank = "Champion"
			src.tnl = 1000
			src <<"<font color=red> <center> *** You have ranked up to a Champion ***"
			world.SetMedal("Champion",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Champion' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Champion' Medal."

	if(src.rank=="Champion")
		if(src.level >= 30000)
			src.rank = "Elder"
			src.tnl = 1750
			src <<"<font color=red> <center> *** You have ranked up to a Elder ***"
			world.SetMedal("Elder",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Elder' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Elder' Medal."

	if(src.rank=="Elder")
		if(src.level >= 50000)
			src.rank = "Sage"
			src.tnl = 2500
			src <<"<font color=red> <center> *** You have ranked up to a Sage ***"
			world.SetMedal("Sage",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Sage' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Sage' Medal."

	if(src.rank == "Sage")
		if(src.level >= 100000)
			src.rank = "Guru"
			src.tnl = 5000
			src <<"<font color=red> <center> *** You have ranked up to a Guru ***"
			world.SetMedal("Guru",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Guru' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Guru' Medal."

	if(src.rank == "Guru")
		if(src.level >= 250000)
			src.rank = "Master"
			src.tnl = 10000
			src <<"<font color=red> <center> *** You have ranked up to a Master ***"
			world.SetMedal("Master",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Master' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Master' Medal."

	if(src.rank == "Master")
		if(src.level >= 500000)
			src.rank = "Grandmaster"
			src.tnl = 50000
			src <<"<font color=red> <center> *** You have ranked up to a Grandmaster ***"
			world.SetMedal("Grandmaster",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Grandmaster' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Grandmaster' Medal."

	if(src.rank == "Grandmaster")
		if(src.level >= 750000)
			src.rank = "Deity"
			src.tnl = 75000
			src <<"<font color=red> <center> *** You have ranked up to a Deity ***"
			world.SetMedal("Deity",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Deity' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Deity' Medal."
	if(src.rank == "Deity")
		if(src.level >= 1000000)
			src.rank = "Kings of Kings"
			src.tnl = 75000
			src <<"<font color=red> <center> *** You have ranked up to a Kings of Kings***"
			world.SetMedal("Kings of Kings",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'Kings of Kings' Medal)))"
			world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Kings of Kings' Medal."
	if(src.rank == "Kings of Kings")
		if(src.level >= 10000000)
			src.rank = "All Star"
			src.tnl = 75000
			src <<"<font color=red> <center> *** You have ranked up to a All Star ***"
			world <<"<font color = red>Dark Apocalypse Information: <font color = white>[src] has join the few as he becomes a All Star."
			world.SetMedal("All Star Player",usr)
			usr <<"<font color=blue> <center> ((( You have Unlocked 'All Star Player' Medal)))"
