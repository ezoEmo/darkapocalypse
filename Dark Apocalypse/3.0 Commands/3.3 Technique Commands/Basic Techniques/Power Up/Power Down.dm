mob/learn
	verb/Power_Down()
		set category = "Techniques"

		if(src.doing)
			src << "You are already doing something!"
			return

		if(src.buku)
			src << "You cannot Power Down whilst flying!"
			return

		if(src.KO)
			return

		if(src.powerlevel <= 0)
			src << "You are too weak to Power Down!"
			return

		var/power_down = input("What do you wish to Power Down to?")as num | null

		if(power_down <= 0)
			src << "You cannot Power Down that much!"
			return
		if(power_down >= src.powerlevel)
			src << "You must Power Up for that!"
			return

		if(power_down < src.powerlevel)
			src << "You lower your Powerlevel to \white[num2text(power_down,10000000)]"
			src.icon_state = "enrage"
			oview(150) << "\white A Powerlevel drops in the Distance"
			sleep(10)
			src.powerlevel = power_down
			src.icon_state = ""
