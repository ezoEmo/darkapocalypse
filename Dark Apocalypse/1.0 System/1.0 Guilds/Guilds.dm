mob/var/guild_muted = 0
mob/var/gm_guild_muted = 0

mob/PC/verb
	Guild_Create()
		set category = "Guild"
		var/list/N
		var/list/U
		U = list("<big>","<font size = 2>","<font size = 3>","<font size = 4>","<font size = 5>","<font size = 6>","<font size = 7>","<font size = 8>","<font size = 9>","<font size = 10>","<font size = 11>","<font size = 12>","<font size = 13>","<font size = 14>","<font size = 15>")
		N = list("EOD","SW","CS","ES","Org13","UF","JD","DFR","ShinRa Inc.","AOD","FS","AM")
		var/T = input("Enter Guild Name(No HTML)","Guild Create") as text

		if(Check_For_Tagilitys(T,HTML_TAGS) == TRUE)
			alert("Your name may not have tagilitys of html in it.")
			return


		for(var/D in N)
			if(findtext(T,D))
				alert("Invalid, These guild names are protected.")
				return


		if(!T)
			alert("Guild name cannot be blank")
			return

		for(var/D in U)
			if(findtext(T,D))
				alert("Your font cannot exceed 1")
				return

		var/guild_html = input({"Enter Guild HTML here(this will show up on OOC and in "Who"},"Guild Create") as text

		if(!T)
			alert("Guild name cannot be blank")
			return

		if(src.in_guild)
			src << "You are in a Guild!"
			return

		if(src.level <= 299)
			alert("You arent strong enough to lead a guild(level 300)!")
			return
		else

			switch(alert("do you wish to call your guild [T]?","Guild Creation","Yes","No"))

				if("Yes")
					var/savefile/F = new("World Save Files/Guilds.sav")
					src.guild_name = T
					src.guild_name_html = guild_html

					src.guild_leader = 1
					src.guild_rank = "Leader"
					src.in_guild = 1
					Guilds.Add(T)
					Guilds.Add(guild_html)
					F["Guilds"] << Guilds
					src.Give_Guild_Verbs()
					src.verbs -= new/mob/PC/verb/Guild_Create()



				if("No")
					return



obj/Equipment/guild
	GuildWear
		name = "Guild Wear"
		equiped = 0
		var
			iguild=""
			iname=""

		Click()
			if(src in usr:contents)
				if(src.equiped)
					src.equiped = 0
					usr.G_item -= 1
					usr.overlays -= src.icon
					usr << "You take off the [src.name]."
					suffix = null
				else
					if(usr.guild_name == src.iguild)
						if(usr.G_item >= 2)
							usr << "You can only have up to 2 guild items equipped"
							return
						else
							src.equiped = 1
							usr.overlays += src.icon
							usr.G_item += 1
							suffix = "(Worn)"
							usr << "You wear the [src.name]."
					else
						usr << "<b>You dont belong to [src.iguild] so you can't wear their attire."


		verb
			Pick_Up()
				set src in oview(0)
				set category = null
				if(usr.guild_name == src.iguild)
					if(Move(usr))
						if(usr.inven_min < usr.inven_max)
							usr << "You have picked up the: <u>[src]</u>."
							usr.inven_min += 1
						else
							usr << "No more room for items."

					else
						usr << "You are unable to pick up the: <u>[src]</u>."
				else
					usr << "You are not in the guild: [src.iguild]"


			Drop()
				set category = null
				if(!src.equiped)
					src.loc = usr.loc
					usr << "You have dropped the: <u>[src]</u>."
					usr.inven_min -= 1
				else
					usr << "You are unable to drop: <u>[src.name]</u>, it's already equipped."

			Destroy()
				set category = null
				if(!src.equiped)
					switch(alert("destroy this item?","Destroy","Yes","No"))
						if("Yes")
							del src

						if("No")
							return
				else
					usr << "You are unable to destroy: <u>[src.name]</u>, it's equipped."


mob/var/Guild_Summon = 0
mob/var/Guild_War = 0
mob/var/warl = 0
var/war_use=0
mob/var/inwar = 0
mob/Guild_Leader
	verb
		Guild_Summon()
			set category = "Guild"
			set name = "Guild Summon"
			var/list/Menu = list()
			for(var/mob/M in world)
				if(!M.client) continue
				if(M.name != usr.name)
					if(M.in_guild)
						if(M.guild_name_html == usr.guild_name_html)
							Menu.Add(M)
			var/mob/M = input("Summon Who?","Summon") as null | anything in Menu
			if(!M)return
			if(istype(M,/mob))
				if(M.dead == 1)
					alert("You cannot summon him, he is dead")
					return
				else
					M.loc = locate(src.x,src.y-1,src.z)
					M << "[usr.name] has summoned you"
					return

		Guild_War()
			set category = "Guild"
			set name = "Guild War"
			var/list/Menu = list()
			for(var/mob/M in world)
				if(!client) continue
				if(M.name != usr.name)
					if(M.guild_leader == 1)
						Menu.Add(M)

			var/mob/M = input("Challenge Who?","Guild War") as null | anything in Menu
			if(!M)return
			if(istype(M,/mob))
				switch(alert(M,"[usr.guild_name_html] is requesting a war with your guild","Guild War","Accept","Refuse"))

					if("Accept")
						usr.loc = locate(119,18,1)
						M.loc = locate(122,17,1)
						usr.opponent = "[M]"
						M.opponent = "[usr]"
						usr.warl = 1
						M.warl = 1
						world << "<font color = red> Guild War:[usr.guild_name_html] Has Declared War On [M.guild_name_html]!"
						return

					if("Refuse")
						usr << "[M.guild_name_html] has refused to go to war"
						return


		Guild_Mute()
			set category = "Guild"
			var/list/Menu = list()
			for(var/mob/M in world)
				if(!M.client) continue
				if(M.name != usr.name)
					if(M.in_guild)
						if(M.guild_name_html == usr.guild_name_html)
							Menu.Add(M)

			var/mob/M = input("Guild Mute Who?","Guild Mute") as null | anything in Menu
			if(M.guild_leader)
				usr << "You cannot mute the leader"
				return

			switch(alert("Are you sure you want to guild mute [M]?","Guild Mute [M]","Yes","No"))
				if("Yes")
					goto Yes
				if("No")
					return
			return
			Yes
				var/Reason=input("Input a reason if wanted.")as null|text
				var/Time=input({"For How Long? (In Seconds)
(Max of 600 Seconds (10 Minutes))
(Input 0 or below 0 for target to remiain muted until
unmuted. Any time past 10 minutes will be lowered
to 10 minutes.)"})as num
				if(Time>=600)
					Time=600
				if(Time>=1)
					Time*=10
				if(Reason)
					if(Time)
						for(var/mob/X in world)
							if(X.guild_name == usr.guild_name)
								X<<"<b>[M] has been <font color=red>Guild Muted</font> by [src]. ([Reason])([Time/10] Seconds)"
					else
						for(var/mob/X in world)
							if(X.guild_name == usr.guild_name)
								X<<"<b>[M] has been <font color=red>Guild Muted</font> by [src]. ([Reason])"
				else
					if(Time)
						for(var/mob/X in world)
							if(X.guild_name == usr.guild_name)
								X<<"<b>[M] has been <font color=red>Guild Muted</font> by [src]. ([Time/10] Seconds)"
					else
						for(var/mob/X in world)
							if(X.guild_name == usr.guild_name)
								X<<"<b>[M] has been <font color=red>Guild Muted</font> by [src]."
				M.guild_muted=1
				if(Time<=0)
					return
				sleep(Time)
				if(!M)return
				M.guild_muted=0
				for(var/mob/X in world)
					if(X.guild_name == usr.guild_name)

						X<<"<b>[M] has been <font color=red>Guild Unmuted."
				return


		Guild_Unmute()
			set category = "Guild"
			var/list/Menu = list()
			for(var/mob/M in world)
				if(!M.client) continue
				if(M.name != usr.name)
					if(M.in_guild)
						if(M.guild_name_html == usr.guild_name_html)
							Menu.Add(M)
			var/mob/M = input("Guild UnMute Who?","Guild UnMute") as null | anything in Menu
			switch(alert("Are you sure you want to guild unmute [M]?","Guild UnMute [M]","Yes","No"))
				if("Yes")
					for(var/mob/X in world)
						if(X.guild_name == usr.guild_name)
							X<<"<b>[M] has been <font color=red>Guild UnMuted</font> by [src]."
					M.guild_muted = 0
					return


				if("No")
					return
		MakeGuildItem()
			set name = "Make Guild Item"
			set category="Guild"
			Start
			if(!usr.zenni >= 750000)
				usr << "You need at least 750,000 zenni to make an item!"
				return
			var/iname = input("What should the name be?") as text
			var/iicon = input("What should the icon be?") as icon
			var/number=input("How many do you wish to make(750,000 each)?") as num
			if(number < 1)
				usr << "minimum is 1"
				goto Start
			var/cost = number * 1000000

			if(usr.zenni >= cost)
				usr.zenni -= cost
				while(number > 0)
					var/obj/Equipment/guild/GuildWear/G=new(usr)
					G.name = iname
					G.iguild="[usr.guild_name]"
					G.icon = iicon
					number -= 1
					usr << "You've successfully created [iname]!"
			else
				usr << "Not enough Zenni"
				return


		Guild_Change_Title()
			set category = "Guild"
			var/list/Menu = list()

			for(var/mob/M in world)
				if(!M.client) continue
				if(M.in_guild)
					if(M.guild_name_html == usr.guild_name_html)
						Menu.Add(M)

			var/mob/M = input("Change Who's Title?","Guild Change Title") as null | anything in Menu
			if(!M)return
			if(istype(M,/mob))
				switch(input("What title do you wish to give [M]?")in list("Custom","Cancel"))

					if("Custom")
						switch(alert("Do you wish to Alter their Custom Title?","Change Title","Yes","No"))
							if("Yes")
								var/new_title = input("What do you wish their Title to be called?(HTML Allowed)","Custom Title") as text | null
								M.title = new_title

								for(var/mob/X in world)
									if(X.guild_name == src.guild_name)
										X << "<font color = #BB0EDA>Guild Information:</font> [M] has been granted the title of [new_title]!"


							if("No")

								return

					if("Cancel")
						return
		Guild_Invite()
			set category = "Guild"
			var/list/Menu = list()
			for(var/mob/M in world)
				if(!M.client) continue
				if(M.name != usr.name)
					if(!M.in_guild)
						Menu.Add(M)

			var/mob/M = input("Invite Who?","Guild Invite") as null | anything in Menu
			if(!M)return
			if(istype(M,/mob))
				switch(alert(M,"Would you like to join [usr]'s Guild?","Guild Join","Yes","No"))

					if("Yes")
						M.guild_name = usr.guild_name
						M.guild_name_html = usr.guild_name_html
						M.guild_member = 1
						M.guild_rank = "Member"
						M.in_guild = 1
						M.Give_Guild_Verbs()
						M.verbs -= new/mob/PC/verb/Guild_Create()

						for(var/mob/X in world)
							if(X.guild_name == usr.guild_name)
								X << "<font color = #BB0EDA>Guild Information:</font> [M] has joined the Guild!"


					if("No")
						usr << "[M] has declined your Guild Invite"
						return


		Guild_Boot()
			set category = "Guild"
			var/list/Menu = list()
			for(var/mob/M in world)
				if(!M.client) continue
				if(M.name != usr.name)
					if(M.in_guild)
						if(M.guild_name_html == usr.guild_name_html)
							Menu.Add(M)

			var/mob/M = input("Boot Who?","Guild Boot") as null | anything in Menu
			if(!M)return
			if(istype(M,/mob))
				if(M.guild_leader)
					alert("You cannot boot the Leader!")
					return
				if(!usr.guild_leader)
					if(M.guild_co_leader)
						alert("You cannot boot the Co-Leader!")
						return

				switch(alert("Would you like to Boot [M] from the Guild?","Guild Boot","Yes","No"))

					if("Yes")
						M.Remove_Guild_Verbs()

						for(var/mob/X in world)
							if(X.guild_name == M.guild_name)
								X << "<font color = #BB0EDA>Guild Information:</font> [M] has been Booted from the Guild!"

						M.guild_name = "None"
						M.guild_name_html = "None"
						M.guild_leader = 0
						M.guild_co_leader = 0
						M.guild_member = 0
						if(!M.GMLevel)
							M.title = "<font color=white>Player</font>"

						M.guild_invite = 0
						M.guild_announce = 0
						M.guild_boot = 0
						M.guild_change_rank = 0

						M.guild_rank = ""
						M.in_guild = 0

						M.verbs += new/mob/PC/verb/Guild_Create()

					if("No")
						usr << "You decided not to Boot [M]"
						return





		Guild_Change_Rank()
			set category = "Guild"
			var/list/Menu = list()
			for(var/mob/M in world)
				if(!M.client) continue
				if(M.name != usr.name)
					if(M.in_guild)
						if(M.guild_name_html == usr.guild_name_html)
							Menu.Add(M)

			var/mob/M = input("Change Who's Rank?","Guild Change Rank") as null | anything in Menu
			if(!M)return
			if(istype(M,/mob))
				switch(input("What rank do you wish to give [M]?")in list("Co-Leader","Member","Custom","Cancel"))

					if("Co-Leader")
						M.guild_co_leader = 1
						M.guild_rank = "Co-Leader"
						M.Give_Guild_Verbs()
						for(var/mob/X in world)
							if(X.guild_name == src.guild_name)
								X << "<font color = #BB0EDA>Guild Information:</font> [M] has been granted the rank of \white Co-Leader!"

					if("Member")
						M.guild_member = 1
						M.guild_rank = "Member"
						M.Remove_Guild_Verbs()
						M.Give_Guild_Verbs()
						for(var/mob/X in world)
							if(X.guild_name == src.guild_name)
								X << "<font color = #BB0EDA>Guild Information:</font> [M] has been granted the rank of \white Member!"

					if("Custom")
						switch(alert("Do you wish to Alter their Custom Rank?","Change Rank","Yes","No"))
							if("Yes")
								var/new_rank = input("What do you wish their Rank to be called?","Custom Rank") as text | null
								if(lentext(new_rank) > 25)
									usr << "New Rank cannot be more than 25 Characters"
								if(!M)return
								M.guild_rank = new_rank

								for(var/mob/X in world)
									if(X.guild_name == src.guild_name)
										X << "<font color = #BB0EDA>Guild Information:</font> [M] has been granted the rank of [new_rank]!"

								switch(input("What Permissions do you wish to give them?")in list("Boot","Invite","Announce","Change Rank","Cancel"))
									if("Boot")
										M.guild_boot = 1
										M.Give_Guild_Verbs()
									if("Invite")
										M.guild_invite = 1
										M.Give_Guild_Verbs()
									if("Announce")
										M.guild_announce = 1
										M.Give_Guild_Verbs()
									if("Guild Change Rank")
										M.guild_change_rank = 1
										M.Give_Guild_Verbs()
									if("None")
										return
							if("No")
								switch(input("What Permissions do you wish to give them?")in list("Boot","Invite","Announce","Change Rank","Cancel"))
									if("Boot")
										M.guild_boot = 1
										M.Give_Guild_Verbs()
									if("Invite")
										M.guild_invite = 1
										M.Give_Guild_Verbs()
									if("Announce")
										M.guild_announce = 1
										M.Give_Guild_Verbs()
									if("Guild Change Rank")
										M.guild_change_rank = 1
										M.Give_Guild_Verbs()
									if("None")
										return

					if("Cancel")
						return

		Guild_Announce(T as text)
			set category = "Guild"
			set desc = "Announce to the Guild"

			var/list/L
			L = list("font size")

			if(Channel_Mute && !src.GMLevel)
				src << "All Chat Channels are Muted!"
				return

			if(lentext(T) > 350)
				alert("Message must be less than 350 Characters!")
				return

			if(!T)
				alert("Your message may not be blank.")
				return

			for(var/X in L)
				if(findtext(T,X))
					alert("You may not change your font size.")
					return

			for(var/mob/X in world)
				if(X.guild_name_html == usr.guild_name_html)
					X << "<BR>----- Guild Announce -----<BR><font color=#000066>{<font color=#FFFFFF>[src.guild_rank]<font color=#000066>}</font> [usr]: [T]<BR>"

mob/Guild_Verbs
	verb
		Guild_Battle_Challenge()
			set category = "Guild"
			var/list/Menu = list()
			for(var/mob/M in world)
				if(!M.client) continue
				if(M.name != usr.name)
					if(M.in_guild)
						if(M.guild_name_html == usr.guild_name_html)
							Menu.Add(M)
			var/mob/M = input("Challenge Who?","Guild Chalange") as null | anything in Menu
			if(!M)return
			if(istype(M,/mob))

				switch(alert("Do you want to Challenge [M]?","Guild Challenge","Yes","No"))
					if("Yes")
						switch(alert(M,"[usr] is challanging you to a guild fight, Accept?","Guild Challenge","Yes","No"))
							if("Yes")
								for(var/mob/C in world)
									if(C.guild_name == usr.guild_name)

										C << "<font color=green>Guild Battle Information:<font color=white> [usr] has Challenged [M] to a guild battle!"
								usr.opponent = "[M]"
								M.opponent = "[usr]"
								usr.guildb = 1
								M.guildb = 1
							if("No")
								usr << "[M] has declined from your Challenge"
								return
					if("No")
						return

		Guild_Chat(T as text)
			set category = "Guild"
			set desc = "Chat to the Guild"

			var/list/L
			L = list("font size")

			if(Channel_Mute && !src.GMLevel)
				src << "All Chat Channels are Muted!"
				return

			if(usr.guild_muted)
				usr << "You are Guild Muted"
				return

			if(lentext(T) > 300)
				alert("Message must be less than 300 Characters!")
				return

			if(!T)
				alert("Your message may not be blank.")
				return

			for(var/X in L)
				if(findtext(T,X))
					alert("You may not change your font size.")
					return

			for(var/mob/X in world)
				if(X.guild_name_html == usr.guild_name_html)
					if(X.gooc_on)
						X << {"<font color=yellow>[src.guild_rank] | [src.name] <font color=yellow>GuildSays:<font color = yellow> [T]"}


		Guild_Who()
			set category = "Guild"
			var/count = 0
			usr << "-------------------------------"
			for(var/mob/X in world)
				if(X.in_guild)
					if(X.guild_name_html == usr.guild_name_html)
						count += 1
						if(X.guild_muted)
							usr << "<font color=white>[X.guild_rank]: [X](<font color=red>MUTED)"
						else
							if(X.gm_guild_muted)
								usr << "<font color=white>[X.guild_rank]: [X](<font color=red>GM MUTED)"
							else
								usr << "<font color=white>[X.guild_rank]: [X]"

			usr << "Guild Members Online: [count]"
			usr << "-------------------------------"

		Guild_Leave()
			set category = "Guild"
			if(!src.guild_leader)
				switch(alert("Are you sure you wish to leave the Guild [src.guild_name] ?","Guild Leave","Yes","No"))

					if("Yes")
						src.Remove_Guild_Verbs()

						for(var/mob/X in world)
							if(X.guild_name_html == src.guild_name_html)
								X << "<font color = #BB0EDA>Guild Information:</font> [src] has left the Guild!"

						src.guild_name = "None"
						src.guild_name_html = "None"
						src.guild_leader = 0
						src.guild_co_leader = 0
						src.guild_member = 0

						src.guild_invite = 0
						src.guild_announce = 0
						src.guild_boot = 0
						src.guild_change_rank = 0

						src.guild_rank = ""
						if(!src.GMLevel)
							src.title = "<font color=white>Player</font>"
						src.in_guild = 0
						src.verbs += new/mob/PC/verb/Guild_Create()


					if("No")
						return
			else
				switch(alert("Are you sure you wish to leave the Guild ?","Guild Leave","Yes","No"))

					if("Yes")
						var/savefile/F = new("World Save Files/Guilds.sav")
						if(src.muted)
							return
						src.Remove_Guild_Verbs()
						for(var/mob/PC/M in world)
							if(!Channel_Mute && !World_Mute)
								if(M.ooc_on)
									M << "<font color = #BB0EDA>Guild Information:</font> [src] has Disbanded [src.guild_name]!"

						Guilds.Remove(src.guild_name_html)
						Guilds.Remove(src.guild_name)
						F["Guilds"] << Guilds

						src.guild_name = "None"
						src.guild_name_html = "None"
						src.guild_leader = 0
						src.guild_co_leader = 0
						src.guild_member = 0
						if(!src.GMLevel)
							src.title = "<font color=white>Player</font>"
						src.guild_invite = 0
						src.guild_announce = 0
						src.guild_boot = 0
						src.guild_change_rank = 0

						src.guild_rank = ""
						src.in_guild = 0



						src.verbs += new/mob/PC/verb/Guild_Create()

					if("No")
						return


mob
	proc
		Give_Guild_Verbs()
			if(src.guild_leader)
				src.verbs += typesof(/mob/Guild_Leader/verb)
				src.verbs += typesof(/mob/Guild_Verbs/verb)

			if(src.guild_co_leader)
				src.verbs += typesof(/mob/Guild_Leader/verb)
				src.verbs += typesof(/mob/Guild_Verbs/verb)

			if(src.guild_member)
				src.verbs += typesof(/mob/Guild_Verbs/verb)

			if(src.guild_invite)
				src.verbs += new/mob/Guild_Leader/verb/Guild_Invite()

			if(src.guild_boot)
				src.verbs += new/mob/Guild_Leader/verb/Guild_Boot()

			if(src.guild_announce)
				src.verbs += new/mob/Guild_Leader/verb/Guild_Announce()

			if(src.guild_change_rank)
				src.verbs += new/mob/Guild_Leader/verb/Guild_Change_Rank()

		Remove_Guild_Verbs()
			if(src.guild_leader)
				src.verbs -= typesof(/mob/Guild_Leader/verb)
				src.verbs -= typesof(/mob/Guild_Verbs/verb)

			if(src.guild_co_leader)
				src.verbs -= typesof(/mob/Guild_Leader/verb)
				src.verbs -= typesof(/mob/Guild_Verbs/verb)

			if(src.guild_member)
				src.verbs -= typesof(/mob/Guild_Verbs/verb)

			if(src.guild_invite)
				src.verbs -= new/mob/Guild_Leader/verb/Guild_Invite()

			if(src.guild_boot)
				src.verbs -= new/mob/Guild_Leader/verb/Guild_Boot()

			if(src.guild_announce)
				src.verbs -= new/mob/Guild_Leader/verb/Guild_Announce()

			if(src.guild_change_rank)
				src.verbs -= new/mob/Guild_Leader/verb/Guild_Change_Rank()