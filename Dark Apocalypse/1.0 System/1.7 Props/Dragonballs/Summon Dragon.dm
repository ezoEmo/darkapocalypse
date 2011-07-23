mob/proc/Summon_Dragon()

	if(src.wishes < 5)
		if(src.e_db_1 && src.e_db_2 && src.e_db_3 && src.e_db_4 && src.e_db_5 && src.e_db_6 && src.e_db_7)
			for(var/obj/Dragonballs/O in src)
				del O

			src.e_db_1 = 0
			src.e_db_2 = 0
			src.e_db_3 = 0
			src.e_db_4 = 0
			src.e_db_5 = 0
			src.e_db_6 = 0
			src.e_db_7 = 0

			world << "<font color = green>The Sky Darkens on Earth as Shenron is summoned!</font>"
			src << browse('Shenron.BMP',"display=0")
			src << browse("<body bgcolor=\"black\"><center><img src=Shenron.BMP><p><font color = \"yellow\" size = 4>You Have Summoned Shenron! </center>")

			sleep(30)

			switch(input("What is your wish?", "", text) in list ("Zenni","Level","Power","Good Karma","Evil Karma","Change EC","Metal"))
				if("Change EC")
					src.energy_code = rand(0000001,9999999)
					src.wishes ++
					alert("Shenron: Your wish has been granted!")
					src << browse("")
					src << "Your new energy code is <font color=green>[src.energy_code]</font>!"

					world << "<font color = green>The sky turns to it's normal color as Shenron grants the wish and departs from Earth!</font>"
					world.dragonball_loader()
				if("Metal")
					src.wishes ++
					alert("Shenron: Your wish has been granted!")
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Shenron grants the wish and departs from Earth!</font>"
					world.dragonball_loader()
					world.SetMedal("Shenron Grants",usr)
					usr <<"<font color=blue> <center> ((( You have Unlocked 'Shenron Grants' Medal)))"
					world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Shenron Grants' Medal."

				if("Evil Karma")
					src.karma = "Evil"
					src.karma_rating = 50
					src.wishes ++
					alert("Shenron: Your wish has been granted!")
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Shenron grants the wish and departs from Earth!</font>"

					world.dragonball_loader()

				if("Good Karma")
					src.karma = "Good"
					src.karma_rating = 50
					src.wishes ++
					alert("Shenron: Your wish has been granted!")
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Shenron grants the wish and departs from Earth!</font>"

					world.dragonball_loader()

				if("Zenni")
					src.zenni += 1000000
					src.wishes ++
					alert("Shenron: Your wish has been granted!")
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Shenron grants the wish and departs from Earth!</font>"

					world.dragonball_loader()

				if("Level")
					var/amount = rand(100000,150000)
					while(amount > 0)
						usr.exp = usr.tnl
						usr.Level_Up()
						amount -= 1
						sleep(5)
					alert("Shenron: Your wish has been granted!")
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Shenron grants the wish and departs from Earth!</font>"


					src.wishes ++
					world.dragonball_loader()

				if("Power")
					var/pboost = rand(100000,200000)
					src.wishes ++
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Shenron grants the wish and departs from Earth!</font>"
					world.dragonball_loader()
					src << "<font color=white>Shenron: </font>You gained <font color =white>[pboost]</font> power!"
					src.powerlevel_max += pboost


				if("Ultimate Wish") // we will not tell anyone what this dose they have to find out or just not use it..
					var/num = rand(2,3)
					src.wishes ++
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Shenron grants the wish and departs from Earth!</font>"
					world.dragonball_loader()
					src.wishes -= num

					if(src.wishes < 0)
						src.wishes = 0

	else
		alert("Shenron: You have used all your wishes up!")
		return

//********************************************************************************************//
//********************************************************************************************//
//************************************Namekian Dragonballs************************************//
//********************************************************************************************//
//********************************************************************************************//



mob/proc/Summon_Porunga()

	if(src.namek_wishes < 3)
		if(src.n_db_1 && src.n_db_2 && src.n_db_3 && src.n_db_4 && src.n_db_5 && src.n_db_6 && src.n_db_7)
			for(var/obj/Namek_Dragonballs/O in src)
				del O

			src.n_db_1 = 0
			src.n_db_2 = 0
			src.n_db_3 = 0
			src.n_db_4 = 0
			src.n_db_5 = 0
			src.n_db_6 = 0
			src.n_db_7 = 0

			world << "<font color = green>The Sky Darkens on Namek as Porunga is summoned!</font>"
			src << browse('porunga.BMP',"display=0")
			src << browse("<body bgcolor=\"black\"><center><img src=porunga.BMP><p><font color = \"yellow\" size = 4>You Have Summoned Porunga! </center>")


			sleep(30)

			switch(input("What is your wish?", "", text) in list ("Zenni","Level","Power","Training Points","Good Karma","Evil Karma","Metal"))


				if("Zenni")
					src.zenni += 2500000
					src.namek_wishes ++
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Porunga grants the wish and departs from Namek!</font>"

					world.dragonball_loadern()
					alert("Porunga: Your wish has been granted!")

				if("Evil Karma")
					src.karma = "Evil"
					src.karma_rating = 50
					src.wishes ++
					alert("Porunga: Your wish has been granted!")
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Porunga grants the wish and departs from Namek!</font>"

					world.dragonball_loadern()

				if("Metal")
					src.wishes ++
					alert("Porunga: Your wish has been granted!")
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Porunga grants the wish and departs from Namek!</font>"
					world.dragonball_loadern()
					world.SetMedal("Porunga Grants",usr)
					usr <<"<font color=blue> <center> ((( You have Unlocked 'Porunga Grants' Medal)))"
					world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Porunga Grants' Medal."

				if("Good Karma")
					src.karma = "Good"
					src.karma_rating = 50
					src.wishes ++
					alert("Porunga: Your wish has been granted!")
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Porunga grants the wish and departs from Namek!</font>"

					world.dragonball_loadern()

				if("Level")
					var/amount = rand(15000,250000)
					while(amount > 0)
						usr.exp = usr.tnl
						usr.Level_Up()
						amount -= 1
						sleep(5)
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Porunga grants the wish and departs from Namek!</font>"

					src.namek_wishes ++
					world.dragonball_loadern()
					alert("Porunga: Your wish has been granted!")


				if("Training Points")
					src.tp += rand(300,600)
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Porunga grants the wish and departs from Namek!</font>"

					src.namek_wishes ++
					world.dragonball_loadern()
					alert("Porunga: Your wish has been granted!")

				if("Power")
					var/pboost = rand(250000,450000)
					src.namek_wishes ++
					src << browse("")
					world << "<font color = green>The sky turns to it's normal color as Porunga grants the wish and departs from Namek!</font>"
					world.dragonball_loadern()

					src << "<font color=white>Porunga: </font>You gained <font color =white>[pboost]</font> power!"
					src.powerlevel_max += pboost
					alert("Porunga: Your wish has been granted!")



	else
		alert("Porunga: You have used all your wishes up!")
		return


//********************************************************************************************//
//********************************************************************************************//
//************************************Black Star Dragonballs**********************************//
//********************************************************************************************//
//********************************************************************************************//



mob/proc/Summon_Omega_Shenron()

	if(src.bs_wishes < 3)
		if(src.bs_db_1 && src.bs_db_2 && src.bs_db_3 && src.bs_db_4 && src.bs_db_5 && src.bs_db_6 && src.bs_db_7)
			for(var/obj/Black_Star_Dragonballs/O in src)
				del O

			src.bs_db_1 = 0
			src.bs_db_2 = 0
			src.bs_db_3 = 0
			src.bs_db_4 = 0
			src.bs_db_5 = 0
			src.bs_db_6 = 0
			src.bs_db_7 = 0

			world << "<font color = gray>The Sky Darkens Over The Whole Universe as Omega Shenron is Summoned!</font>"
			src << browse('porunga.BMP',"display=0")
			src << browse("<body bgcolor=\"black\"><center><img src=porunga.BMP><p><font color = \"red\" size = 4>You Have Summoned Shinron! </center>")


			sleep(30)

			switch(input("What is your wish?", "", text) in list ("Zenni","Level","Power","Training Points","Change EC","Good Karma","Evil Karma","Metal"))


				if("Zenni")
					src.zenni += 200000000
					src.namek_wishes ++
					src << browse("")
					world << "<font color = grey>The sky clams as Omega Shenron departs!</font>"

					world.dragonball_loaderbs()
					alert("Shenron: Your wish has been granted!")


				if("Level")
					var/amount = rand(80000,125000)
					while(amount > 0)
						usr.exp = usr.tnl
						usr.Level_Up()
						amount -= 1
						sleep(5)
					src << browse("")
					world << "<font color = grey>The sky clams as Omega Shenron departs!</font>"

					src.bs_wishes ++
					world.dragonball_loaderbs()
					alert("Shenron: Your wish has been granted!")

				if("Metal")
					src.wishes ++
					alert("Shenron: Your wish has been granted!")
					src << browse("")
					world << "<font color = grey>The sky clams as Omega Shenron departs!</font>"
					world.dragonball_loaderbs()
					world.SetMedal("Omega Shenron's Nightmire",usr)
					usr <<"<font color=blue> <center> ))) You have Unlocked 'Omega Shenron's Nightmire' Medal((("
					world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Omega Shenron's Nightmire' Medal."


				if("Training Points")
					src.tp += rand(10000,50000)
					src << browse("")
					world << "<font color = gray>The sky clams as Omega Shenron departs!</font>"

					src.bs_wishes ++
					world.dragonball_loaderbs()
					alert("Shenron: Your wish has been granted!")

				if("Power")
					var/pboost = rand(10000000,20000000)
					src.bs_wishes ++
					src << browse("")
					world << "<font color = gray>The sky clams as Omega Shenron departs!</font>"
					world.dragonball_loaderbs()
					src << "<font color=white>Shinron: </font>You gained <font color =white>[pboost]</font> power!"
					src.powerlevel_max += pboost
					alert("Shenron: Your wish has been granted!")

				if("Change EC")
					src.energy_code = rand(0001,9999)
					src.bs_wishes ++
					alert("Shenron: Your wish has been granted!")
					src << browse("")
					src << "Your new energy code is <font color=green>[src.energy_code]</font>!"
					world << "<font color = green>The sky clams as Omega Shenron departs!</font>"
					world.dragonball_loaderbs()

				if("Evil Karma")
					src.karma = "Evil"
					src.karma_rating = 100
					src.bs_wishes ++
					alert("Shenron: Your wish has been granted!")
					src << browse("")
					world << "<font color = green>The sky clams as Omega Shenron departs!</font>"
					world.dragonball_loaderbs()

				if("Good Karma")
					src.karma = "Good"
					src.karma_rating = 100
					src.bs_wishes ++
					alert("Shenron: Your wish has been granted!")
					src << browse("")
					world << "<font color = green>The sky clams as Omega Shenron departs!</font>"
					world.dragonball_loaderbs()


	else
		alert("Omega Shenron: You have used all your wishes up!")
		return