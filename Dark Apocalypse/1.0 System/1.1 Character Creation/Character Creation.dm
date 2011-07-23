
#if !defined(SUPER_NEW)
#define SUPER_NEW "New Character"
#endif
#if !defined(SUPER_LOAD)
#define SUPER_LOAD "Load Character"
#endif
#if !defined(SUPER_QUIT)
#define SUPER_QUIT "Quit"
#endif

mob/var/save_file_1 = 0
mob/var/save_file_2 = 0
mob/var/save_file_3 = 0
var/list/Name = list()

var/list/HTML_TAGS = list ("<",">")
mob/proc/Check_For_Tagilitys(T as text,var/list/L)
	for(var/V in L)
		if(findtext(T,V))
			return TRUE

var/list/NUM_TAGS = list ("1","2","3","4","5","6","7","8","9","0")
mob/proc/Check_For_Nums(T as text,var/list/L)
	for(var/V in L)
		if(findtext(T,V))
			return TRUE

var/list/SYM_TAGS = list ("!","@","#","$","%","^","&","*","(",")","-","_","+","=","(",")","{","}",";",":","'","<",">",",",".","?","/","[","]")
mob/proc/Check_For_Syms(T as text,var/list/L)
	for(var/V in L)
		if(findtext(T,V))
			return TRUE
mob/var/GM
mob/var/randomL
mob/var/rand
mob/Guest
	Login()
/*		if(src.key != "Jose SN." && src.key != "Piccolo 3" && src.key != "EBOK" && src.key != "Dragon45" && src.key != "Real-Nyhomeboy14" && src.key != "Steva" && src.key != "Hawk Dragonhart" && src.key != "SSJ2 Vegtio" && src.key != "Kidus" && src.key != "Wickedinuyasha" && src.key != "Tinzo" && src.key != "Teen Goku 17" && src.key != "Sicafoose" && src.key != "Slayer 200" && src.key != "Jurell" && src.key != "Kenny1256" && src.key != "JayDee09"&& src.key != "Slayer 300" && src.key != "Super fatness face")
			src << "<B><font color = red>Sorry, the Server is currently administration only. Public testing will take place on april 1st 2007."
			login_attempts ++
			//world << "<font color = #F9DB13>Dark Apocalypse Information: <font color = white>[src] has tried to connect to the test server. Total Login attempts : [login_attempts]"
			//sleep(7)
			del(src)

*/
		src << browse(PlayerRules)

		src.verbs -= new/mob/verb/OOC
		src.verbs -= new/mob/verb/Say
		if(src.key =="Theonethegame")
			src.verbs += typesof(/mob/Cool/verb/)
			src.verbs += new/mob/verb/OOC
			src.verbs += new/mob/verb/Say
			src.verbs += typesof(/mob/GM1/verb/)
			src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
			src.GM=5




			spawn() status_change()

		if(src.client.key == "Guest") //Here's the line's to stop the Runtime Error - Fixed by Hant Teath
			del(src.client)

//		if(src.client.byond_version < 349)
//			src << "\red You BYOND Version: [src.client.byond_version] is out of Date! Please upgrade to the latest Version: 348!"
//			del(src.client)

		src.randomL = rand(1,5)
		if(randomL == 1)
			src.loc = locate(88,40,3)
		if(randomL == 2)
			src.loc = locate(88,59,3)
		if(randomL == 3)
			src.loc = locate(68,59,3)
		if(randomL == 4)
			src.loc = locate(30,59,3)
		if(randomL == 5)
			src.loc = locate(48,59,3)



		Start

		switch(alert("Welcome to Dragonball Z: Dark Apocalypse","Dragonball Z: Dark Apocalypse","New Character","Load Character","Delete Character"))

			if("New Character")
				var/del_name = ""

				switch(alert("Which Slot do you wish to Select?","","Slot 1","Slot 2","Slot 3"))

					if("Slot 1")
						if(fexists("Player Saves/[src.client.ckey]/Save File 1.sav"))
							switch(alert("You already have a Character on Slot 1. Overwrite it?","","Yes","No"))
								if("Yes")
									var/savefile/Load = new("Player Saves/[src.client.ckey]/Save File 1.sav")
									Load["Name"] >> del_name
									var/savefile/N = new("World Save Files/Player Names.sav")
									Name.Remove(ckey(del_name))
									N["Name"] << Name
									fdel("Player Saves/[src.client.ckey]/Save File 1.sav")
									src.save_file_1 = 1
									Create()
								else
									goto Start
									return
						else
							src.save_file_1 = 1
							Create()
					if("Slot 2")
						if(fexists("Player Saves/[src.client.ckey]/Save File 2.sav"))
							switch(alert("You already have a Character on Slot 2. Overwrite it?","","Yes","No"))
								if("Yes")
									var/savefile/Load = new("Player Saves/[src.client.ckey]/Save File 2.sav")
									Load["Name"] >> del_name
									var/savefile/N = new("World Save Files/Player Names.sav")
									Name.Remove(ckey(del_name))
									N["Name"] << Name
									fdel("Player Saves/[src.client.ckey]/Save File 2.sav")
									src.save_file_2 = 1
									Create()
								else
									goto Start
									return
						else
							src.save_file_2 = 1
							Create()
					if("Slot 3")
						if(fexists("Player Saves/[src.client.ckey]/Save File 3.sav"))
							switch(alert("You already have a Character on Slot 3. Overwrite it?","","Yes","No"))
								if("Yes")
									var/savefile/Load = new("Player Saves/[src.client.ckey]/Save File 3.sav")
									Load["Name"] >> del_name
									var/savefile/N = new("World Save Files/Player Names.sav")
									Name.Remove(ckey(del_name))
									N["Name"] << Name
									fdel("Player Saves/[src.client.ckey]/Save File 3.sav")
									src.save_file_3 = 1
									Create()
								else
									goto Start
									return
						else
							src.save_file_3 = 1
							Create()

			if("Load Character")
				switch(alert("Which Slot do you wish to Select?","","Slot 1","Slot 2","Slot 3"))

					if("Slot 1")
						if(fexists("Player Saves/[src.client.ckey]/Save File 1.sav"))
							usr.save_file_1 = 1
							usr.client.Load_1()
						else
							alert("No Saved File Found!")
							sleep(5)
							goto Start
							return
					if("Slot 2")
						if(fexists("Player Saves/[src.client.ckey]/Save File 2.sav"))
							usr.save_file_2 = 1
							usr.client.Load_1()
						else
							alert("No Saved File Found!")
							sleep(5)
							goto Start
							return
					if("Slot 3")
						if(fexists("Player Saves/[src.client.ckey]/Save File 3.sav"))
							usr.save_file_3 = 1
							usr.client.Load_1()
						else
							alert("No Saved File Found!")
							sleep(5)
							goto Start
							return


			if("Delete Character")
				var/del_name = ""
				switch(alert("Which Slot do you wish to Delete?","","Slot 1","Slot 2","Slot 3"))

					if("Slot 1")
						switch(alert("Are you Sure?","","Yes","No"))
							if("Yes")
								if(fexists("Player Saves/[src.client.ckey]/Save File 1.sav"))
									var/savefile/Load = new("Player Saves/[src.client.ckey]/Save File 1.sav")
									Load["Name"] >> del_name
									var/savefile/N = new("World Save Files/Player Names.sav")
									Name.Remove(ckey(del_name))
									N["Name"] << Name
									fdel("Player Saves/[src.client.ckey]/Save File 1.sav")
									goto Start
								else
									alert("No Saved File Found!")
									sleep(5)
									goto Start
							else
								goto Start
								return
					if("Slot 2")
						switch(alert("Are you Sure?","","Yes","No"))
							if("Yes")
								if(fexists("Player Saves/[src.client.ckey]/Save File 2.sav"))
									var/savefile/Load = new("Player Saves/[src.client.ckey]/Save File 2.sav")
									Load["Name"] >> del_name
									var/savefile/N = new("World Save Files/Player Names.sav")
									Name.Remove(ckey(del_name))
									N["Name"] << Name
									fdel("Player Saves/[src.client.ckey]/Save File 2.sav")
								else
									alert("No Saved File Found!")
									sleep(5)
									goto Start
							else
								goto Start
								return
					if("Slot 3")
						switch(alert("Are you Sure?","","Yes","No"))
							if("Yes")
								if(fexists("Player Saves/[src.client.ckey]/Save File 3.sav"))
									var/savefile/Load = new("Player Saves/[src.client.ckey]/Save File 3.sav")
									Load["Name"] >> del_name
									var/savefile/N = new("World Save Files/Player Names.sav")
									Name.Remove(ckey(del_name))
									N["Name"] << Name
									fdel("Player Saves/[src.client.ckey]/Save File 3.sav")
								else
									alert("No Saved File Found!")
									sleep(10)
									goto Start
							else
								goto Start
								return
		..()

	proc
		Create()
			var/mob/mobcreation
			var/newname = null
			var/config = "065-090&097-122&095&032"
			alert("This is a Final Version 5. Have Fun. If you find any bugs plz post them on the forums")
			alert("Follow the rules.And dont bug All-Star for GM or get ready for a world of pain.")

			while(!asciifilter(newname,config)||newname == null)newname = input("Pick Character Name","Name",src.key) as text

			if(ckey(newname) in Name)
				alert("This name is already in use. Try again please,")
				Create()

			if(lentext(newname) > 20)
				alert("Your name can not exceed 20 characters.")
				Create()

			if(isnull(newname) | newname == "" | !newname)
				alert("Your name may not be blank.")
				Create()

			if(Check_For_Tagilitys(newname,HTML_TAGS) == TRUE)
				alert("Your name may not have tagilitys of html in it.")
				Create()

			if(Check_For_Nums(newname,NUM_TAGS) == TRUE)
				alert("Your name may not have numbers in it.")
				Create()

			if(Check_For_Syms(newname,SYM_TAGS) == TRUE)
				alert("Your name may not have symbols in it.")
				Create()

			else

				newname = html_encode(newname)
				var/race = input("What were you born as?","Choose a Birth Race") in list ("Bio-Android","Dark Neo","Changling","Slayer","Half Saiyan","Bardock","Human","Majin","Namek","Saiyan","Evil Saiyan (Members Only)","All Star (Members Only)","Tuffle","Android","Demon","Dragon","Bojack","Kai","Saibaman","Good Demon","Makenshi","Legend","Nightmire Dragon","Bio Warrior","Dark Angel","Cooler","Uub","Konats")
				switch(race)


					if("Cooler")
						mobcreation = new /mob/PC()
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.race = "Cooler"
						mobcreation.icon = 'Cooler.dmi'
						mobcreation.powerlevel = 150
						mobcreation.powerlevel_max = 150
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.defence = 10
						mobcreation.defence_max = 10
						mobcreation.Karma()

					if("Dark Angel")
						mobcreation = new /mob/PC()
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.race = "Dark Angel"
						mobcreation.icon = 'dark angel.dmi'
						mobcreation.powerlevel = 150
						mobcreation.powerlevel_max = 150
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.defence = 10
						mobcreation.defence_max = 10
						mobcreation.Karma()

					if("Uub")
						mobcreation = new /mob/PC()
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.race = "Uub"
						mobcreation.icon = 'Uub.dmi'
						mobcreation.powerlevel = 150
						mobcreation.powerlevel_max = 150
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.defence = 10
						mobcreation.defence_max = 10
						mobcreation.Karma()
					if("Konats")
						mobcreation = new /mob/PC()
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.icon = 'Konats.dmi'
						mobcreation.race = "Konats"
						mobcreation.powerlevel = 150
						mobcreation.powerlevel_max = 150
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.defence = 10
						mobcreation.defence_max = 10
						mobcreation.Karma()

					if("Bio Warrior")
						mobcreation = new /mob/PC()
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.icon = 'Bio Warrior 1.dmi'
						mobcreation.race = "Bio Warrior"
						mobcreation.powerlevel = 150
						mobcreation.powerlevel_max = 150
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.defence = 10
						mobcreation.defence_max = 10
						mobcreation.Karma()

					if("Namek")
						mobcreation = new /mob/PC()
						mobcreation.race = "Namek"
						mobcreation.icon = 'Namek - Normal.dmi'
						mobcreation.ki = 150
						mobcreation.ki_max = 150
						mobcreation.defence = 15
						mobcreation.defence_max = 15
						mobcreation.contents += new/obj/Techniques/Regenerate
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.Karma()
					if("Slayer")
						mobcreation = new /mob/PC()
						mobcreation.race = "Slayer"
						mobcreation.icon = 'Slayer.dmi'
						mobcreation.ki = 150
						mobcreation.ki_max = 150
						mobcreation.defence = 15
						mobcreation.defence_max = 15
						mobcreation.contents += new/obj/Techniques/Regenerate
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.Karma()

					if("Majin")
						mobcreation = new /mob/PC()
						mobcreation.race = "Majin"
						mobcreation.icon = 'Majin - Form 1.dmi'
						mobcreation.karma = "Evil"
						mobcreation.powerlevel = 150
						mobcreation.powerlevel_max = 150
						mobcreation.strength = 15
						mobcreation.strength_max = 15
						mobcreation.contents += new/obj/Techniques/Majin/Regenerate
						mobcreation.contents += new/obj/Techniques/Majin/Fat_Wrap

					if("Demon")
						mobcreation = new /mob/PC()
						mobcreation.race = "Demon"
						mobcreation.icon = 'Demon - Form 1.dmi'
						mobcreation.karma = "Evil"
						mobcreation.karma_rating = 25
						mobcreation.powerlevel = 250
						mobcreation.powerlevel_max = 250
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.verbs += new/mob/learn/verb/Demon_Ki_Blast
					if("Good Demon")
						mobcreation = new /mob/PC()
						mobcreation.race = "Good Demon"
						mobcreation.icon = 'Good Demon.dmi'
						mobcreation.karma = "Good"
						mobcreation.karma_rating = 25
						mobcreation.powerlevel = 250
						mobcreation.powerlevel_max = 250
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.verbs += new/mob/learn/verb/Demon_Ki_Blast

					if("Dark Neo")
						mobcreation = new /mob/PC()
						mobcreation.race = "Dark Neo"
						mobcreation.icon = 'Neo.dmi'
						mobcreation.karma = "Evil"
						mobcreation.karma_rating = 25
						mobcreation.powerlevel = 250
						mobcreation.powerlevel_max = 250
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert


					if("Bardock")
						mobcreation = new /mob/PC()
						mobcreation.race = "Bardock"
						mobcreation.icon = 'Bardock.dmi'
						mobcreation.karma = "Good"
						mobcreation.karma_rating = 25
						mobcreation.powerlevel = 250
						mobcreation.powerlevel_max = 250
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert


					if("Changling")
						mobcreation = new /mob/PC()
						mobcreation.race = "Changling"
						mobcreation.icon = 'Changling - Form 1.dmi'
						mobcreation.karma = "Evil"
						mobcreation.powerlevel = 250
						mobcreation.powerlevel_max = 250
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert

					if("Saiyan")
						mobcreation = new /mob/PC()
						mobcreation.train_chromosome = 1
						mobcreation.race = "Saiyan"
						mobcreation.powerlevel = 200
						mobcreation.powerlevel_max = 200
						mobcreation.strength = 15
						mobcreation.strength_max = 15
						mobcreation.overlays += tail
						mobcreation.Skin()
						mobcreation.Hair()
						mobcreation.Karma()

					if("Evil Saiyan (Members Only)")
						if(client.IsByondMember())
							mobcreation = new /mob/PC()
							mobcreation.race = "Evil Saiyan"
							mobcreation.icon = 'Evil Sayain 1.dmi'
							mobcreation.karma = "Evil"
							mobcreation.powerlevel = 200
							mobcreation.powerlevel_max = 200
							mobcreation.strength = 15
							mobcreation.strength_max = 15
							mobcreation.contents += new/obj/Transform/Transform
							mobcreation.contents += new/obj/Transform/Revert
						else
							usr<<"Your not a Byond Member"
							Create()
					if("All Star (Members Only)")
						if(client.IsByondMember())
							mobcreation = new /mob/PC()
							mobcreation.race = "All Star"
							mobcreation.icon = 'All Star.dmi'
							mobcreation.karma = "Evil"
							mobcreation.powerlevel = 2000000
							mobcreation.powerlevel_max = 2000000
							mobcreation.strength = 1500000
							mobcreation.strength_max = 1500000
							mobcreation.Karma()
							mobcreation.contents += new/obj/Transform/Transform
							mobcreation.contents += new/obj/Transform/Revert
						else
							usr<<"Your not a Byond Member"
							Create()


					if("Nightmire Dragon")
						mobcreation = new /mob/PC()
						mobcreation.race = "Nightmire Dragon"
						mobcreation.icon = 'Nightmire 1.dmi'
						mobcreation.karma = "Evil"
						mobcreation.powerlevel = 300
						mobcreation.powerlevel_max = 300
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
					if("Tuffle")
						mobcreation = new /mob/PC()
						mobcreation.race = "Tuffle"
						mobcreation.icon = 'Bebi - Form 1.dmi'
						mobcreation.karma = "Evil"
						mobcreation.powerlevel = 300
						mobcreation.powerlevel_max = 300
						mobcreation.upkeep = 5
						mobcreation.contents += new/obj/Techniques/Tuffle/Absorb
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert

					if("Bio-Android")
						mobcreation = new /mob/PC()
						mobcreation.race = "Bio-Android"
						mobcreation.icon = 'Bio Android - Form 1.dmi'
						mobcreation.karma = "Evil"
						mobcreation.powerlevel = 175
						mobcreation.powerlevel_max = 175
						mobcreation.upkeep = 5
						mobcreation.contents += new/obj/Techniques/Bio_Android/Absorb
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Techniques/Regenerate
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.verbs += new/mob/learn/verb/Distructo_Disk


					if("Android")
						mobcreation = new /mob/PC()
						mobcreation.race = "Android"
						mobcreation.karma = "Evil"
						mobcreation.powerlevel = 250
						mobcreation.powerlevel_max = 250
						mobcreation.verbs += new/mob/learn/verb/Ki_Absorb
						mobcreation.verbs += new/mob/learn/verb/Scan
						/*mobcreation.verbs += new/mob/learn/verb/Self_Destruct*/
						mobcreation.learn_absorb = 1
						mobcreation.learn_scan = 1
						/*mobcreation.learn_selfdestruct = 1*/
						mobcreation.Skin()
						mobcreation.Hair()

					if("Half Saiyan")
						mobcreation = new /mob/PC()
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.race = "Half Saiyan"
						mobcreation.powerlevel = 150
						mobcreation.powerlevel_max = 150
						mobcreation.strength = 10
						mobcreation.strength_max = 10
						mobcreation.defence = 10
						mobcreation.defence_max = 10
						mobcreation.Skin()
						mobcreation.Hair()
						mobcreation.Karma()

					if("Human")
						mobcreation = new /mob/PC()
						mobcreation.race = "Human"
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.verbs += new/mob/learn/verb/Distructo_Disk
						mobcreation.ki = 75
						mobcreation.ki_max = 75
						mobcreation.strength = 15
						mobcreation.strength_max = 15
						mobcreation.defence = 15
						mobcreation.defence_max = 15
						mobcreation.Skin()
						mobcreation.Hair()
						mobcreation.Karma()

					if("Dragon")
						mobcreation = new /mob/PC()
						mobcreation.karma = "Evil"
						mobcreation.race = "Dragon"
						mobcreation.icon = 'Dragon.dmi'
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.ki = 75
						mobcreation.ki_max = 75
						mobcreation.strength = 15
						mobcreation.strength_max = 15
						mobcreation.defence = 15
						mobcreation.defence_max = 15


					if("Bojack")
						mobcreation = new /mob/PC()
						mobcreation.race = "Bojack"
						mobcreation.icon = 'Bojack.dmi'
						mobcreation.karma = "Evil"
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.ki = 75
						mobcreation.ki_max = 75
						mobcreation.strength = 15
						mobcreation.strength_max = 15
						mobcreation.defence = 15
						mobcreation.defence_max = 15
						mobcreation.Hair()
					if("Makenshi")
						mobcreation = new /mob/PC()
						mobcreation.race = "Makenshi"
						mobcreation.icon = 'Makenshi Normal Form.dmi'
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.ki = 75
						mobcreation.ki_max = 75
						mobcreation.strength = 15
						mobcreation.strength_max = 15
						mobcreation.defence = 15
						mobcreation.defence_max = 15
						mobcreation.Karma()

					if("Legend")
						mobcreation = new /mob/PC()
						mobcreation.race = "Legend"
						mobcreation.icon = 'LSSJ.dmi'
						mobcreation.karma = "Evil"
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.ki = 75
						mobcreation.ki_max = 75
						mobcreation.strength = 15
						mobcreation.strength_max = 15
						mobcreation.defence = 15
						mobcreation.defence_max = 15
						mobcreation.karma = "Evil"


					if("Saibaman")
						mobcreation = new /mob/PC()
						mobcreation.race = "Saibaman"
						mobcreation.icon = 'Saibaman - Form 1.dmi'
						mobcreation.karma = "Evil"
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.ki = 75
						mobcreation.ki_max = 75
						mobcreation.strength = 15
						mobcreation.strength_max = 15
						mobcreation.defence = 15
						mobcreation.defence_max = 15
						mobcreation.karma = "Evil"
					if("Kai")
						mobcreation = new /mob/PC()
						mobcreation.race = "Kai"
						mobcreation.icon = 'Kai - Normal.dmi'
						mobcreation.karma = "Good"
						mobcreation.contents += new/obj/Transform/Transform
						mobcreation.contents += new/obj/Transform/Revert
						mobcreation.ki = 75
						mobcreation.ki_max = 75
						mobcreation.strength = 15
						mobcreation.strength_max = 15
						mobcreation.defence = 15
						mobcreation.defence_max = 15
						mobcreation.Hair()


				mobcreation.energy_code = rand(0000001,9999999)
				mobcreation.it_blocked = 1
				mobcreation.loc = locate(145,60,1)
				mobcreation.name = newname

				if(src.save_file_1)
					mobcreation.save_file_1 = 1
				if(src.save_file_2)
					mobcreation.save_file_2 = 1
				if(src.save_file_3)
					mobcreation.save_file_3 = 1

				var/savefile/N = new("World Save Files/Player Names.sav")
				Name.Add(ckey(mobcreation.name))
				N["Name"] << Name

				world << "<font color =red>Dark Apocalypse Information: <font color = white>Everyone welcome our newest Player: [mobcreation.name] the [mobcreation.race]!"
				src.client.mob = mobcreation
				del(src)

