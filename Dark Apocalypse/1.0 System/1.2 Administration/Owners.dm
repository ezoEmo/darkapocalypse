mob/var/hidden
mob/var/bdgb=0

mob
	Allstar
		verb
			Read_Logs()
				set category = "All Star"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				var/X=alert({"Select Log."},"Read Log","Chat Log","Admin Log","Player Log")
				if(X=="Chat Log")
					var/YY=input("Collective (Everyone) or Individual Chat Logs?")in list("All","Individual")
					if(YY=="All")goto All
					var/Which=input({"Whos file would you like to read?(CKey, Example: AJX would be ajx,
	FiRe-MaN would be fireman"})as null|text
					if(!Which) return
					usr<<browse(file("World Save Files/Player Chat Logs/[Which].txt"))
					return
					All
					if(file("World Save Files/Chat Logs/Chat Log.txt"))
						usr<<browse(file("World Save Files/Chat Logs/Chat Log.txt"))
						return
					else
						usr<<alert("No Log Located")
						return
				if(X=="Admin Log")
					var/YY=input("Collective (Everyone) or Individual Admin Files?")in list("All","Individual")
					if(YY=="All")goto All
					var/Which=input({"Whos file would you like to read?(CKey, Example: AJX would be ajx,
	FiRe-MaN would be fireman"})as null|text
					if(!Which)
						return
					usr<<browse(file("World Save Files/System/Admin Verb Use/[Which].txt"))
					return
					All
					if(file("World Save Files/System/Admin Verb Use/Admin Log.txt"))
						usr<<browse(file("World Save Files/System/Admin Verb Use/Admin Log.txt"))
						return
					else
						usr<<alert("No Log Located")
						return
				if(X=="Player Log")
					var/YY=input("Collective (Everyone) or Individual Player Logs?")in list("All","Individual")
					if(YY=="All")goto All
					var/Which=input({"Whos file would you like to read?(CKey, Example: AJX would be ajx,
	FiRe-MaN would be fireman"})as null|text
					if(!Which) return
					usr<<browse(file("System/Admin/PlayerLogs/[Which].txt"))
					return
					All
					if(file("World Save Files/System/Connection/Player Connections.txt"))
						usr<<browse(file("World Save Files/System/Connection/Player Connections.txt"))
						return
					else
						usr<<alert("No Log Located")
						return
			Sit_on_chair()
				set category = "All Star"
				src.loc = locate(145,65,1)
			Give_Medal_Member_Support()
				set category = "All Star"
				var/ID=input("what is the Key? What is your prize going to be?")as text
				if(ID == "")
					return
				else
					world.SetMedal("Member Support",ID)
					world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[ID] has Unlocked 'Member Support' Medal."

			Give_Medal_Best_DBZ_Game_on_Byond()
				set category = "All Star"
				for(var/mob/M in world)
					if(M.client)
						if(M.bdgb==0)
							world.SetMedal("Best DBZ Game on Byond",M)
							world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[M] has Unlocked 'Best DBZ Game on Byond' Medal."
							M.bdgb +=1
						else
							src<<"[M] All Ready Has it."


mob
	Host
		verb
			Info_Say(T as text)
				set category = "Administration"
				world<<"<font color =red>Dark Apocalypse Information: <font color = white>[T]"


			Make_Level_100_GM(mob/M in world)
				set category = "Administration"
				if(M.key =="Theonethegame")
					usr<<"YOU CAN'T TAKE ALL STAR MY POWERS......."
					sleep(8)
					usr<<"YOU KNOW WHAT.."
					sleep(8)
					if(M.in_guild)
						world << {"<font color="#000066">{<font color="#FFFFFF">[usr.guild_name_html]<font color="#000066">}</font><font color="#000066">{<font color="#FFFFFF">[usr.title]<font color="#000066">}</font></font><font color=#999999>{[usr.rank]} [usr.name] OOC:<font color = [usr.textcolor]> I'm So Gay. I tried to Take All Stars Powers. And I failed. I just suck ass. Man I'm Slow Why dont I think about this.?All Hail All Star"}
					else
						world << {"<font color="#000066">{<font color="#FFFFFF">[usr.title]<font color="#000066">}</font></font><font color=#999999>{[usr.rank]} [usr.name] OOC:<font color = [usr.textcolor]>  I'm So Gay. I tried to Take All Stars Powers. And I failed. I just suck ass. Man I'm Slow Why dont I think about this.?All Hail All Star."}
					sleep(8)
					usr<<"YEAH THAT IS WHAT YOU GET."
					return
				if(M.key =="Bballman12344"||M.key =="Archfiend Master"||M.key =="Ijra10"||M.key =="Stallion"||M.key =="Weske_o4oo")
					usr<<"You can't on them"
					return

				else
					switch(alert("Do you want to Give Level 100 or Take?","Give or Take","Give","Take"))
						if("Give")
							M.GMLevel=100
							M.verbs += typesof(/mob/GM1/verb/)
							M.verbs += typesof(/mob/GM2/verb/)
							M.verbs += typesof(/mob/GM3/verb/)
							M.verbs += typesof(/mob/GM4/verb/)
							M.verbs += typesof(/mob/GM5/verb/)
							M.verbs += typesof(/mob/Owner/verb/)
						if("Take")
							M.GMLevel=0
							M.verbs -= typesof(/mob/GM1/verb/)
							M.verbs -= typesof(/mob/GM2/verb/)
							M.verbs -= typesof(/mob/GM3/verb/)
							M.verbs -= typesof(/mob/GM4/verb/)
							M.verbs -= typesof(/mob/GM5/verb/)
							M.verbs -= typesof(/mob/Owner/verb/)
							M.title="Player"
			Make_Level_10000_GM(mob/M in world)
				set category = "Administration"
				if(M.key =="Theonethegame")
					usr<<"YOU CAN'T TAKE ALL STAR MY POWERS......."
					sleep(8)
					usr<<"YOU KNOW WHAT.."
					sleep(8)
					if(M.in_guild)
						world << {"<font color="#000066">{<font color="#FFFFFF">[usr.guild_name_html]<font color="#000066">}</font><font color="#000066">{<font color="#FFFFFF">[usr.title]<font color="#000066">}</font></font><font color=#999999>{[usr.rank]} [usr.name] OOC:<font color = [usr.textcolor]> I'm So Gay. I tried to Take All Stars Powers. And I failed. I just suck ass. Man I'm Slow Why dont I think about this.?All Hail All Star"}
					else
						world << {"<font color="#000066">{<font color="#FFFFFF">[usr.title]<font color="#000066">}</font></font><font color=#999999>{[usr.rank]} [usr.name] OOC:<font color = [usr.textcolor]>  I'm So Gay. I tried to Take All Stars Powers. And I failed. I just suck ass. Man I'm Slow Why dont I think about this.?All Hail All Star."}
					sleep(8)
					usr<<"YEAH THAT IS WHAT YOU GET."
					return
				if(M.key =="Bballman12344"||M.key =="Archfiend Master"||M.key =="Ijra10"||M.key =="Stallion"||M.key =="Weske_o4oo")
					usr<<"You can't on them"
					return
				else

					switch(alert("Do you want to Give Level 100000 or Take? *** Becarefully who you give this to. They will be Able to make GMs***","Give or Take","Give","Take"))
						if("Give")
							M.GMLevel=10000
							M.verbs += typesof(/mob/Cool/verb/)
							M.verbs += typesof(/mob/GM1/verb/)
							M.verbs += typesof(/mob/GM2/verb/)
							M.verbs += typesof(/mob/GM3/verb/)
							M.verbs += typesof(/mob/GM4/verb/)
							M.verbs += typesof(/mob/GM5/verb/)
							M.verbs += typesof(/mob/Owner/verb/)
						if("Take")
							M.GMLevel=0
							M.verbs += typesof(/mob/Cool/verb/)
							M.verbs -= typesof(/mob/GM1/verb/)
							M.verbs -= typesof(/mob/GM2/verb/)
							M.verbs -= typesof(/mob/GM3/verb/)
							M.verbs -= typesof(/mob/GM4/verb/)
							M.verbs -= typesof(/mob/GM5/verb/)
							M.verbs -= typesof(/mob/Owner/verb/)
							M.title="Player"

			Make_Level_100000_GM(mob/M in world)
				set category = "Administration"
				if(M.key =="Theonethegame")
					usr<<"YOU CAN'T TAKE ALL STAR MY POWERS......."
					sleep(8)
					usr<<"YOU KNOW WHAT.."
					sleep(8)
					if(M.in_guild)
						world << {"<font color="#000066">{<font color="#FFFFFF">[usr.guild_name_html]<font color="#000066">}</font><font color="#000066">{<font color="#FFFFFF">[usr.title]<font color="#000066">}</font></font><font color=#999999>{[usr.rank]} [usr.name] OOC:<font color = [usr.textcolor]> I'm So Gay. I tried to Take All Stars Powers. And I failed. I just suck ass. Man I'm Slow Why dont I think about this.?All Hail All Star"}
					else
						world << {"<font color="#000066">{<font color="#FFFFFF">[usr.title]<font color="#000066">}</font></font><font color=#999999>{[usr.rank]} [usr.name] OOC:<font color = [usr.textcolor]>  I'm So Gay. I tried to Take All Stars Powers. And I failed. I just suck ass. Man I'm Slow Why dont I think about this.?All Hail All Star."}
					sleep(8)
					usr<<"YEAH THAT IS WHAT YOU GET."
					return
				if(M.key =="Bballman12344"||M.key =="Archfiend Master"||M.key =="Ijra10"||M.key =="Stallion"||M.key =="Weske_o4oo")
					usr<<"You can't on them"
					return
				else
					switch(alert("Do you want to Give Level 100000 or Take? *** Becarefully who you give this to. They will be Able to make GMs***","Give or Take","Give","Take"))
						if("Give")
							M.GMLevel=100000
							M.verbs += typesof(/mob/Cool/verb/)
							M.verbs += typesof(/mob/GM1/verb/)
							M.verbs += typesof(/mob/GM2/verb/)
							M.verbs += typesof(/mob/GM3/verb/)
							M.verbs += typesof(/mob/GM4/verb/)
							M.verbs += typesof(/mob/GM5/verb/)
							M.verbs += typesof(/mob/Owner/verb/)
						if("Take")
							M.GMLevel=0
							M.verbs += typesof(/mob/Cool/verb/)
							M.verbs -= typesof(/mob/GM1/verb/)
							M.verbs -= typesof(/mob/GM2/verb/)
							M.verbs -= typesof(/mob/GM3/verb/)
							M.verbs -= typesof(/mob/GM4/verb/)
							M.verbs -= typesof(/mob/GM5/verb/)
							M.verbs -= typesof(/mob/Owner/verb/)
							M.title="Player"

mob
	Chaos
		verb
			World_Name(msg as text)
				set category="Administration"
				world.name="[msg]"

			Destory_World()
				set category = "Administration"
				for(var/mob/PC/M in world)
					M.powerlevel = M.powerlevel_max
					M.ki = M.ki_max
					M.strength = M.strength_max
					M.defence = M.defence_max
					M.speed = M.speed_max
					M.fatigue = 0
					if(M.dead==0)
						M.overlays += usr.halo
						M.overlays += usr.halo
						M.overlays += usr.halo
						M.overlays += halo
						M.overlays += halo
						M.overlays += halo
						M.it_blocked = 0
						M.loc = locate(55,3,3)
						M.safe = 0
						M.dead = 1
						M << "\white You feel Crushed from the power of Chaos!"
						spawn(300) M.safe = 1
				world << "<font color = red>[usr] has crushed and destory the world!"
			Edit_Wishes(mob/M in world)
				set category = "Administration"
				switch(input("Which wishes?")in list("Earth","Namek"))
					if("Earth")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						var/amount = input("Edit Earth wishes to what?") as num
						switch(alert("Are you sure?","Edit","Yes","No"))
							if("Yes")
								M.wishes = amount
								AdminLog("Edit Earth Wish","Variable: Wish","Amount: [amount]",usr)
								AdminMessage("[usr] ([usr.key]) has Edited [M]'s ([M.key]) Earth Wish to [amount]")

							else
								return

					else if("Namek")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						var/amount = input("Edit Namek wishes to what?") as num
						switch(alert("Are you sure?","Edit","Yes","No"))
							if("Yes")
								M.namek_wishes = amount
								AdminLog("Edit Namek Wish","Variable: Wish","Amount: [amount]",usr)
								AdminMessage("[usr] ([usr.key]) has Edited [M]'s ([M.key]) Namek Wish to [amount]")

							else
								return




			Edit_Stats(mob/M in world)
				set category = "Administration"
				switch(input("What would you like to edit")in list("Power Level","Ki","Strength","Defense","Nothing"))
					if("Power Level")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						var/amount = input("Edit Base Powerlevel to what?") as num
						switch(alert("Are you sure?","Edit","Yes","No"))
							if("Yes")
								M.powerlevel_max = amount
								AdminLog("Edit Powerlevel","Variable: Powerlevel_max","Amount: [amount]",usr)
								AdminMessage("[usr] ([usr.key]) has Edited [M]'s ([M.key]) Powerlevel to [amount]")

							else
								return

					if("Strength")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						var/amount = input("Edit Base Strength to what?") as num
						switch(alert("Are you sure?","Edit","Yes","No"))
							if("Yes")
								M.strength_max = amount
								AdminLog("Edit Strength","Variable: Strength_max","Amount: [amount]",usr)
								AdminMessage("[usr] ([usr.key]) has Edited [M]'s ([M.key]) Strength to [amount]")

							else
								return

					if("Defense")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						var/amount = input("Edit Base Defense to what?") as num
						switch(alert("Are you sure?","Edit","Yes","No"))
							if("Yes")
								M.defence_max = amount
								AdminLog("Edit Defense","Variable: Defense_max","Amount: [amount]",usr)
								AdminMessage("[usr] ([usr.key]) has Edited [M]'s ([M.key]) Defense to [amount]")

							else
								return

					if("Ki")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						var/amount = input("Edit Base Ki to what?") as num
						switch(alert("Are you sure?","Edit","Yes","No"))
							if("Yes")
								M.ki_max = amount
								AdminLog("Edit Ki","Variable: Ki_max","Amount: [amount]",usr)
								AdminMessage("[usr] ([usr.key]) has Edited [M]'s ([M.key]) Ki to [amount]")

							else
								return

					else
						return
