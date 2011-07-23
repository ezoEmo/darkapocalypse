mob/var/tab_vitals = 1
mob/var/tab_skills = 1
mob/var/tab_quests = 1
mob/var/tab_inventory = 1
mob/var/ooc_on = 1
mob/var/gooc_on = 1
mob/var/auction_on = 1
mob/var/arena_accepting = 1

mob/PC
	verb
		Options()
			set category = "Channels"
			switch(input("What Options would you like to Configure?","Options") in list ("Show / Hide Tabs","Toggle Whispers","Toggle OOC","Toggle Guild OOC","Toggle Arena","Toggle AFK Signal","Cancel"))


				if("Toggle AFK Signal")
					if(src.AFK)
						src << "Your AFK signal has been turned \red OFF"
						src.AFK = 0
					else
						src << "Your AFK signal has been turned \green ON"
						src.AFK = 1

				if("Show / Hide Tabs")

					switch(input("What Tabs?","Options") in list (/*"Friends",*/"Guild Members","Vitals","Skills","Quests","Inventory","Saga"))
						if("Vitals")
							if(!usr.tab_vitals)
								usr.tab_vitals = 1
							else
								usr.tab_vitals = 0

						if("Skills")
							if(!usr.tab_skills)
								usr.tab_skills = 1
							else
								usr.tab_skills = 0

						if("Saga")
							if(!usr.tab_saga)
								usr.tab_saga = 1
							else
								usr.tab_saga = 0

						if("Quests")
							if(!usr.tab_quests)
								usr.tab_quests = 1
							else
								usr.tab_quests = 0

						if("Inventory")
							if(!usr.tab_inventory)
								usr.tab_inventory = 1
							else
								usr.tab_inventory = 0

						if("Guild Members")
							if(usr.show_guild_tab == 1)
								usr.show_guild_tab = 0
							else
								usr.show_guild_tab = 1

/*						if("Friends")
							if(usr.show_friends_tab == 1)
								usr.show_friends_tab = 0
							else
								usr.show_friends_tab = 1*/

				if("Toggle Guild OOC")
					if(!src.gooc_on)
						src.gooc_on = 1
						src << "You turn your Guild OOC \green ON"
						for(var/client/C)
							if(C.mob.guild_name == src.guild_name)
								C << "[src] has turned their Guild OOC \green ON"
					else
						src.gooc_on = 0
						src << "You turn your Guild OOC \red OFF"
						for(var/client/C)
							if(C.mob.guild_name == src.guild_name)
								C << "[src] has turned their Guild OOC \red OFF"

				if("Toggle Whispers")
					if(!src.whispers_off)
						src.whispers_off = 1
						src << "You turn your Whispers \red OFF"
						world << "[src] has turned their Whispers \red OFF"
					else
						src.whispers_off = 0
						src << "You turn your Whispers \green ON"
						world << "[src] has turned their Whispers \green ON"


				if("Toggle OOC")
					if(!src.ooc_on)
						src.ooc_on = 1
						src << "You turn your OOC \green ON"
						world << "[src] has turned their OOC \green ON"
					else
						src.ooc_on = 0
						src << "You turn your OOC \red OFF"
						world << "[src] has turned their OOC \red OFF"

				if("Toggle Arena")
					if(!src.arena_accepting)
						src.arena_accepting = 1
						src << "You are now accepting arena challenges"
					else
						src.arena_accepting = 0
						src << "You are no longer accepting arena challenges"



				if("Cancel")
					return


mob/PC
	verb
		Help_Book()
			set category = "Channels"
			switch(input("What would you like to check?","Options") in list ("Transformation Requirements","Earth Map","Namek Map","Frequently Asked Questions","Ranking Level","Credits","Cancel"))
				if("Transformation Requirements")
					spawn(2) usr.Transform_File()

				if("Namek Map")
					spawn(2) usr.Namek_Map()

				if("Earth Map")
					spawn(2) usr.Earth_Map()

				if("Frequently Asked Questions")
					spawn(2) usr.Questions()

				if("Ranking Level")
					spawn(2) usr.Rank_File()

				if("Credits")
					spawn(2) usr.Credits_File()

				if("Cancel")
					return