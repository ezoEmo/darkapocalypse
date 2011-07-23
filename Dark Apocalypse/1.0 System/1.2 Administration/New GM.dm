

mob
	GM1
		verb
			Admin_Chat(T as text)
				set category = "Administration"
				AdminChat(T)
				ALog("Admin Chat: [usr]: [T]")
				SAdminLog(usr,"Admin Chat: [usr]: [T]")

			Become_An_All_Star(mob/M in world)
				set category = "Administration"
				M.race = "All Star"
				M.icon = 'All Star.dmi'
				M.karma = "Good"
				AdminMessage("[usr] has made [M] a All-Star")
				world<<"<font size=0><font color=Blue>[M] has became one of the Strongest race."
				M.contents += new/obj/Transform/Transform
				M.contents += new/obj/Transform/Revert



			Get_Moves()
				set category = "Administration"
				src.verbs += new/mob/learn/verb/Burning_Attack
				src.verbs += new/mob/learn/verb/Big_Bang_Attack
				src.verbs += new/mob/learn/verb/Spirit_Bomb
				src.verbs += new/mob/learn/verb/Continuous_Kamehameha
				src.verbs += new/mob/learn/verb/Invert
				src.verbs += new/mob/learn/verb/Rapid_Ki_Blast
				src.verbs += new/mob/learn/verb/Galactic_Donut
				src.verbs += new/mob/learn/verb/Specail_Beam_Cannon
				src.verbs += new/mob/learn/verb/Createcell
				src.verbs += new/mob/learn/verb/Super_Ghost_Kamikaze_Attack
				src.verbs += new/mob/learn/verb/Masenko
				src.verbs += new/mob/learn/verb/Super_Kamehameha
				src.verbs += new/mob/learn/verb/Father_Son_Kamehameha
				src.verbs += new/mob/learn/verb/World_Scan
				src.verbs += new/mob/learn/verb/Dragon_Scan
				src.verbs += new/mob/learn/verb/Hell_Flash
				src.verbs += new/mob/learn/Demon/verb/Stone_Spit
				src.verbs += new/mob/learn/Demon/verb/Mouth_Blast
				src.verbs += new/mob/learn/verb/Demon_Ki_Blast
				src.verbs += new/mob/learn/verb/Distructo_Disk
				src.verbs += new/mob/learn/Changling/verb/Changling_Distructo_Disk
				src.verbs += new/mob/learn/verb/Death_Beam
				src.verbs += new/mob/learn/Saiyan/verb/X10_Kamehameha
				src.verbs += new/mob/learn/Saiyan/verb/Fake_Moon
				src.verbs += new/mob/learn/verb/Death_Ball
				src.verbs += new/mob/learn/verb/Fuse
				src.verbs += new/mob/learn/Majin/verb/Candy_Ray
				src.verbs += new/mob/learn/verb/Genocide
				src.verbs += new/mob/learn/verb/Revenge_Ball
				src.verbs += new/mob/learn/verb/Neo_Ball
				src.verbs += new/mob/learn/verb/Final_Flash
				src.verbs += new/mob/learn/Namek/verb/Hellzone_Grenade
				src.verbs += new/mob/learn/Namek/verb/Light_Grenade
				src.verbs += new/mob/learn/verb/Sense
				src.verbs += new/mob/learn/verb/Kamehameha
				src.verbs += new/mob/learn/verb/Aura
				src.verbs += new/mob/learn/verb/Fly
				src.verbs += new/mob/learn/verb/Instant_Transmission
				src.verbs += new/mob/learn/verb/Android_Instant_Transmission
				src.verbs += new/mob/learn/verb/Power_Up
				src.verbs += new/mob/learn/verb/Unleash_Rage
				src.verbs += new/mob/learn/verb/Power_Down
				src.verbs += new/mob/learn/verb/Kaioken
				src.verbs += new/mob/learn/verb/Split_Form
				src.verbs += new/mob/learn/verb/Kill_Split
				src.verbs += new/mob/learn/verb/Kiai
				src.verbs += new/mob/learn/verb/Scan
				src.verbs += new/mob/learn/verb/Ki_Absorb
				src.verbs += new/mob/learn/verb/Zanzoken
				src.verbs += new/mob/learn/verb/Self_Destruct
				src.verbs += new/mob/learn/verb/Dragon_Fist
				src.verbs += new/mob/learn/verb/Father_Son_Kamehameha
				src.verbs += new/mob/learn/verb/Good_Demon_Ki_Blast
				src.verbs += new/mob/learn/verb/Chaos_Demon_Ki_Blast
				src.verbs += new/mob/learn/verb/Eraser_Cannon
				src.verbs += new/mob/learn/verb/Full_Power_Energy_Ball
				src.verbs += new/mob/learn/verb/Full_Power_Energy_Wave
				src.verbs += new/mob/learn/verb/Psycho_Barrier
				src.verbs += new/mob/learn/verb/Trap_Shooter
				src.verbs += new/mob/learn/verb/Acid_Burn
				src.verbs += new/mob/learn/verb/Blaster_Shell
				src.verbs += new/mob/learn/verb/Eraser_Cannon
				src.verbs += new/mob/learn/verb/Galactic_Buster
				src.verbs += new/mob/learn/verb/Super_Dragon_Fist
				src.verbs += new/mob/learn/verb/Dodon_Ray
				src.verbs += new/mob/learn/verb/Big_Bang_Kamehameha
				src.verbs += new/mob/learn/verb/Big_Bang_Kamehameha_X100
				src.verbs += new/mob/learn/verb/Galatic_Tyrant
				src.verbs += new/mob/learn/verb/Final_Spirit_Cannon
				src.verbs += new/mob/learn/verb/Dragon_Thunder
				src.verbs += new/mob/learn/verb/Hells_Storm
				src.verbs += new/mob/learn/verb/Mystic_Breath
				src.verbs += new/mob/learn/verb/Brave_Cannon
				src.verbs += new/mob/learn/verb/Finish_Buster
				src.verbs += new/mob/learn/verb/Shocking_Death_Ball
				src.verbs += new/mob/learn/verb/Brave_Cannon
				src.verbs += new/mob/learn/verb/Finish_Buster
				src.verbs += new/mob/learn/verb/Shocking_Death_Ball
				src.verbs += new/mob/learn/verb/Brave_Cannon
				src.verbs += new/mob/learn/verb/Brave_Sword_Attack
				src.verbs += new/mob/learn/verb/Darkness_Blaster
				src.verbs += new/mob/learn/verb/Darkness_Eye_Beam
				src.verbs += new/mob/learn/verb/Heat_Dome_Attack
				src.verbs += new/mob/learn/verb/Sword_Attack
				src.verbs += new/mob/learn/verb/Riot_Kavelin
				src.verbs += new/mob/learn/verb/Heat_Phalanx
				src.verbs += new/mob/learn/verb/Death_Chaser
				src.verbs += new/mob/learn/verb/Burning_Storm
				src.verbs += new/mob/learn/verb/Final_Galick_Cannon
				src.verbs += new/mob/learn/verb/Galick_Gun
				src.verbs += new/mob/learn/verb/Super_Galick_Gun
				src.verbs += new/mob/learn/verb/Ki_Cannon
				src.verbs += new/mob/learn/verb/Ki_Blast_Cannon
				src.verbs += new/mob/learn/verb/Neo_Ki_Blast_Cannon
				src.verbs += new/mob/learn/verb/Whirlwind_Spin
				src.verbs += new/mob/learn/verb/Energy_Field
				src.verbs += new/mob/learn/verb/Legend_Shield
				src.verbs += new/mob/learn/verb/Minus_Energy_Power_Ball
				src.verbs += new/mob/learn/verb/Omega_Blaster
				src.verbs += new/mob/learn/verb/Final_Revenger
				src.verbs += new/mob/learn/verb/Supernova
				src.verbs += new/mob/learn/verb/Super_Spirit_Bomb
				src.verbs += new/mob/learn/verb/Acid
				src.verbs += new/mob/learn/verb/Crusher_Ball
				src.verbs += new/mob/learn/verb/Hyper_Tornado
				src.verbs += new/mob/learn/verb/Trap_Ball
				src.verbs += new/mob/learn/verb/Vanishing_Ball
				src.verbs += new/mob/learn/verb/SS_Deadly_Bomb
				src.verbs += new/mob/learn/verb/Kill_Driver
				src.verbs += new/mob/learn/verb/Ki_Catalyst
				src.verbs += new/mob/learn/verb/Hell_Impact
				src.verbs += new/mob/learn/verb/Dimension_Shatter
				src.verbs += new/mob/learn/verb/X1000_Kamehameha
				src.verbs += new/mob/learn/verb/X100_Kamehameha
				src.verbs += new/mob/learn/verb/Vile_Energy
				src.verbs += new/mob/learn/verb/Static_Shot





			Teleport()
				set category = "Administration"
				set desc="Teleport To Coordinates"
				var/mob/WH
				var/YN
				Start
				var/XT=alert("Teleport Someone Else or Yourself","Teleporting","Self","Other")
				var/LocX=input("Teleport [XT] to what X location?(1-[world.maxx])")as num
				var/LocY=input("Teleport [XT] to what Y location?(1-[world.maxy])")as num
				var/LocZ=input("Teleport [XT] to what Z location?(1-[world.maxz])")as num
				if(XT=="Other")
					WH=input("Whom Do You Wish To Teleport?")as mob in world
					YN=alert({"Is This Correct?
	 Teleport: [WH]
	 Target Location: [LocX], [LocY], [LocZ]"},"Correct?","Yes","No")
				if(XT=="Self")
					WH=usr
					YN=alert({"Is This Correct?
	 Teleport: [XT]
	 Target Location: [LocX], [LocY], [LocZ]"},"Correct?","Yes","No","Cancel")
				if(YN=="No")
					goto Start
				if(YN=="Cancel")
					return
				WH.loc=locate(LocX,LocY,LocZ)

			Teleport_To()
				set category = "Administration"
				set desc="Teleport Self or Other to Target"
				var/mob/WH
				var/YN
				Start
				var/XT=alert("Teleport Someone Else or Yourself","Teleporting","Self","Other")
				var/mob/Targ
				if(XT=="Other")
					WH=input("Whom Do You Wish To Teleport?")as mob in world
					Targ=input("Whom do you wish to teleport [WH] to?")as mob in world
					YN=alert({"Is This Correct?
	 Teleport: [WH]
	 Target: [Targ]"},"Correct?","Yes","No")
				if(XT=="Self")
					Targ=input("Whom do you wish to teleport to?")as mob in world
					WH=usr
					YN=alert({"Is This Correct?
	 Teleport: [XT]
	 Target [Targ]"},"Correct?","Yes","No","Cancel")
				if(YN=="No")
					goto Start
				if(YN=="Cancel")
					return
				WH.loc=Targ.loc

			Announce(T as text)
				set category = "Administration"
				world<<{"<font color=red><b>Admin Announcement: </b><font color=blue>
	[T] ~ [usr]([usr.key])"}
			Admin_Who()
				set category="Administration"
				var/mob/M
				for(M in world)
					if(!M.key) continue
					if(M.name == M.key) usr << M.name
					else usr << "[M.name] ([M.key])"
			Watch(M as mob in world)
				set category = "Administration"
				client.eye = M
				usr<< "<b>Your Now watching [M]"
				client.perspective = 255
			Stop_Watching()
				set category = "Administration"
				client.eye = usr
				usr << "<b>You stop watching who ever you were watching because they got boring."

			Tourny_Fix(mob/M as mob in world)
				set category = "Administration"
				set name = "Tournament Fix"
				if(M.tourny == 1)
					M.loc=locate(150,60,1)
					M.tourny=0
					M.safe=1
					world << "<b><font color = red>Info: [usr] has tournament fixed [M]."
				else
					return
			All_Star_GM_Room()
				set category = "Administration"
				src.loc = locate(202,55,5)
			Go_Back_To_Spawn()
				set category = "Administration"
				src.loc = locate(145,60,1)

			Log_Information(T as null|text)
				set category = "Administration"
				set desc="Log Information In The Admin Log That Any Admin Can Read"
				if(!T)
					return
				if(length(T)>=750)
					usr<<"Length Is Not To Exceed 750, Break It Down."
					return
				var/Z=alert({"Is This Correct?"[usr] Logs: [T]""},"Correct?","Yes","No")
				if(Z=="No")
					return
				ALog("[usr] Logs: [T]")

			Boot(mob/M in world)
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				switch(alert("Are you sure you want to boot [M]?","Boot [M]","Yes","No"))
					if("Yes")
						if(M.GMLevel>=GMLevel)
							AdminMessage("[usr] tried Booting [M].")
							AdminBadLog("Boot","No Reason","No Other",M)
							return
						else
							var/Reason=input("Input a reason if wanted.")as null|text

							AdminLog("Boot","[Reason]","No Other",M)
							if(Reason)
								world<<"<b>[M] has been <font color = red>Booted</font> by [src]. ([Reason])"
								del M
							else
								world<<"<b>[M] has been <font color = red>Booted</font> by [src]."
								del M

						if("No")
							return

	//**********//
	//***Mute***//
	//**********//
			Jail(var/mob/M in world)
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return

				switch(alert("Are you sure you want to Jail [M]?","Jail [M]","Yes","No"))
					if("Yes")
						goto Yes
					if("No")
						return
				return
				Yes
				if(M.GMLevel>=GMLevel)
					AdminMessage("[usr] tried Jail [M]")
					AdminBadLog("Mute","No Reason","No Other",M)
					return
				else
					M.loc = locate(193,1,3)
					M.doing = 1
					M.muted = 1
					M.GMLocked=1
					M.ki_lock=1
					M.it_blocked=1
					world<<"<font color = blue>Dark Apocalypse Administration Information:\white[M] was sent to Jail by [src]"

			Unjail(mob/M in world)
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				switch(alert("Are you sure you want to Un Jail [M]?","Un Jail [M]","Yes","No"))
					if("Yes")
						goto Yes
					if("No")
						return
				return
				Yes
				if(M.GMLevel>=GMLevel)
					AdminMessage("[usr] tried Un Jail [M]")
					AdminBadLog("Mute","No Reason","No Other",M)
					return
				else
					M.loc = locate(145,60,1)
					M.doing = 0
					M.muted = 0
					M.GMLocked=0
					M.ki_lock=0
					M.it_blocked=0
					world<<"<font color = blue>Dark Apocalypse Administration Information:\white[M] was bailed out of Jail by [src]"

			Mute(mob/M in world)
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				switch(alert("Are you sure you want to mute [M]?","Mute [M]","Yes","No"))
					if("Yes")
						goto Yes
					if("No")
						return
				return
				Yes
				if(M.GMLevel>=GMLevel)
					AdminMessage("[usr] tried Muting [M]")
					AdminBadLog("Mute","No Reason","No Other",M)
					return
				else
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
							world<<"<font color = blue>Dark Apocalypse Administration Information:\white<b>[M] has been <font color=red>Muted</font> by [src]. ([Reason])([Time/10] Seconds)"
						else
							world<<"<font color = blue>Dark Apocalypse Administration Information:\white<b>[M] has been <font color=red>Muted</font> by [src]. ([Reason])"
					else
						if(Time)
							world<<"<font color = blue>Dark Apocalypse Administration Information:\white<b>[M] has been <font color=red>Muted</font> by [src]. ([Time/10] Seconds)"
						else
							world<<"<font color = blue>Dark Apocalypse Administration Information:\white<b>[M] has been <font color=red>Muted</font> by [src]."
					M.muted = 1
					AdminLog("Mute","[Reason]","Time: [Time/10] Seconds",M)
					if(Time<=0)
						return
					sleep(Time)
					if(!M)return
					M.muted = 0
					world<<"<b>[M] has been <font color=red>Unmuted."
					return

			GM_Guild(mob/M in world)
				set category = "Administration"
				switch(input("Mute or Unmute?")in list("Mute","Unmute"))
					if("Mute")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						switch(alert("Are you sure you want to guild mute [M]?","Guild Mute [M]","Yes","No"))
							if("Yes")
								goto Yes
							if("No")
								return
						return
						Yes
						if(M.GMLevel>=GMLevel)
							AdminMessage("[usr] tried Guild Muting [M]")
							AdminBadLog("Mute","No Reason","No Other",M)
							return
						else
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
									world<<"<b><font color = blue>Dark Apocalypse Administration Information:\white[M] has been <font color=red>Guild Muted</font> by [src]. ([Reason])([Time/10] Seconds)"
								else
									world<<"<b><font color = blue>Dark Apocalypse Administration Information:\white[M] has been <font color=red>Guild Muted</font> by [src]. ([Reason])"
							else
								if(Time)
									world<<"<b><font color = blue>Dark Apocalypse Administration Information:\white[M] has been <font color=red>Guild Muted</font> by [src]. ([Time/10] Seconds)"
								else
									world<<"<b><font color = blue>Dark Apocalypse Administration Information:\white[M] has been <font color=red>Guild Muted</font> by [src]."
							M.gm_guild_muted=1
							AdminLog("Mute","[Reason]","Time: [Time/10] Seconds",M)
							if(Time<=0)
								return
							sleep(Time)
							if(!M)return
							M.gm_guild_muted=0
							world<<"<b>[M] has been <font color=red>Guild Unmuted."
							return


	//************//
	//***Unmute***//
	//************//
					if("Unmute")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						switch(alert("Are you sure you want to guild unmute [M]?","Guild UnMute [M]","Yes","No"))
							if("Yes")
								world<<"<b>[M] has been <font color=red>Guild UnMuted</font> by [src]."
								M.gm_guild_muted=0
								M.guild_muted = 0
								AdminLog("UnMute","No Reason","No Other",M)
								return


							if("No")
								return
					else
						return


			Unmute(mob/M in world)
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				switch(alert("Are you sure you want to unmute [M]?","UnMute [M]","Yes","No"))
					if("Yes")
						world<<"<font color = blue>Dark Apocalypse Administration Information:\white<b>[M] has been <font color=red>UnMuted</font> by [src]."
						M.muted=0
						AdminLog("UnMute","No Reason","No Other",M)
						return


					if("No")
						return


	//**********//
	//***Warn***//
	//**********//


			Warn(mob/M in world)
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				switch(alert("Are you sure you want to warn [M]?","Warn [M]","Yes","No"))
					if("Yes")
						goto Yes
					if("No")
						return
				return
				Yes
				var/Warn=input("Include What In The Warning? (Admin Warning: \[Warning\])")as text
				var/Type=input("Alert (Popup) or send in chat bar?")in list(/*"Alert"*/,"Text")
				if(Type=="Alert")
					M<<alert("Admin Warning: [Warn] ~ [usr]")
				if(Type=="Text")
					M<<"<font color =silver><font color=red>Admin Warning: </font>[Warn] ~ [usr]"
				AdminLog("Warn","[Warn]","[Type]",M)
				AdminMessage("[usr] Warned [M]: [Warn].")

	GM2
		verb
			Summon_Dbs()
				set category = "Administration"
				switch(input("Which Dbs?")in list("Earth","Namek","Black Star"))
					if("Earth")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						usr << "You summon the dragonballs."
						for(var/obj/Dragonballs/O in world)
							O.loc = locate(usr.x,usr.y,usr.z)
					if("Namek")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						usr << "You summon the dragonballs."
						for(var/obj/Namek_Dragonballs/O in world)
							O.loc = locate(usr.x,usr.y,usr.z)
					if("Black Star")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						usr << "You summon the dragonballs."
						for(var/obj/Black_Star_Dragonballs/O in world)
							O.loc = locate(usr.x,usr.y,usr.z)

			Give(mob/M in world)
				set category = "Administration"
			/*	if (usr==M)
					usr<< "You can't give to yourself. CHEATER"
					return*/

				if(M.GMLevel > 0)
					usr<< "You can't give to GMs. CHEATER"
					world<<"<font color = blue>Dark Apocalypse Administration Information:\white [src] is a Ass clown that loves to edited GMS"
					return
				else
					switch(input("What would you like to give")in list("Rage","Training Points","Kills","Levels"))
						if("Training Points")
							var/amount = input("How many Training Points?") as num
							switch(alert("Are you sure?","Training Points","Yes","No"))
								if("Yes")
									goto Yes

								if("No")
									return
							Yes
								M.tp += amount
								usr << "[M] Gains [amount] Training Points"
							AdminMessage("[usr] ([usr.key]) has given [M] ([M.key]) [amount] training points")
							AdminLog("Training points","How Many: [amount]","Who: [M]",usr)

						if("Rage")
							var/amount = input("How much?") as num
							switch(alert("Are you sure?","Rage","Yes","No"))
								if("Yes")
									goto Yes

								if("No")
									return
							Yes
								M.rage += amount

						if("Kills")
							var/amount = input("How many kills?") as num
							M.kills += amount
							return

						if("Levels")
							var/amount = input("How many levels?") as num
							if(amount > 2000 )
								alert("You Can not put more than 2000 levels!")
								return
							else
								AdminMessage("[usr] ([usr.key]) has leveled [M] ([M.key]) [amount] times")
								AdminLog("Level UP","How Many levels: [amount]","Who: [M]",usr)
								while(amount > 0)
									M.exp = M.tnl
									amount -= 1
									M.Quiet_Level_Up()

			Revive(var/mob/M in world)
				set category = "Administration"
				if(M.dead==1)
					M.fatigue = 0
					M.powerlevel = M.powerlevel_max
					M.strength = M.strength_max
					M.speed = M.speed_max
					M.defence = M.defence_max
					M.ki = M.ki_max
					M.overlays -= usr.halo
					M.overlays -= usr.halo
					M.overlays -= usr.halo
					M.overlays -= halo
					M.overlays -= halo
					M.overlays -= halo
					M.it_blocked = 0
					M.loc = locate(145,60,1)
					M.dead = 0
					M.safe = 1
					world <<"<font color = blue>Dark Apocalypse Administration Information:\white <font size=1><b>[M] has been revived by [usr]</b>"
					sleep(300)
					M.safe = 0
				else
					usr<<"<font size=1>They arent dead"
			Invisibility()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				var/icon/Z=new(usr.icon)
				Z.DrawBox(rgb(1,1,1),1,32,11,15)
				Z.DrawBox(rgb(255,255,255),5,29,7,19)
				Z.DrawBox(rgb(255,255,255),3,29,9,27)
				Z.DrawBox(rgb(255,255,255),3,19,9,21)
				if(invisibility==0)
					usr.overlays+=Z
					invisibility=GMLevel
					if(density) density=0
					AdminLog("Invisibility","No Reason","No Other",usr)
				else
					usr.overlays-=Z
					invisibility=0
					density = 1

			Start_Tourny()
				set category = "Administration"
				set name = "Start Tournament"
				if(tournament == 1)
					usr<<"<font color=white><b><u>There is already a tournament being held!</font></b></u>"
					return
				else
					var/ID=input("You want to start a tournament? What is your prize going to be?")as text
					if(ID == "")
						return
					else
						world << "<center><font size=3><font color = Silver><b><center>[usr] has started a tournament, the prize is [ID]!<br><font size = 1>To join please go to tournament tab and select Enter Tournament."
						tournament = 1
						for(var/mob/M in world)
							M.verbs += new/mob/Tournament/verb/Enter_Tournament()
							M.verbs += new/mob/Tournament/verb/Leave_Tournament()
			Stop_Tourny_Entance()
				set category = "Administration"
				set name = "Stop Tournament Entry"
				if(tournament == 1)
					world << "<center><font size=3><font color = Silver><b><center>The tournament entry has now ended."
					world << "<font size=1><font color = red><b>The following people are in the tournament"
					for(var/mob/M in world)
					 if(M.tourny)
					  world << "[M]"
					for(var/mob/M in world)
						M.verbs -= new/mob/Tournament/verb/Enter_Tournament()
						M.verbs -= new/mob/Tournament/verb/Leave_Tournament()
				else
					usr<<"<font color=white><b><u>There is no tournament being held!</font></b></u>"
					return
			End_Tourny()
				set category = "Administration"
				set name = "End Tournament"
				if(tournament == 1)
					var/ID=input("You are now ending the tournament, who won?")as text
					if(ID == "")
						return
					else
						world << "<center><font size=3><font color = Silver><b><center>[usr] has ended the tournament, the winner is [ID] and they will recieve their prize shortly."
						tournament = 0
						for(var/mob/M in world)
							M.verbs -= new/mob/Tournament/verb/Enter_Tournament()
							M.verbs -= new/mob/Tournament/verb/Leave_Tournament()
				else
					usr<<"<font color=white><b><u>There is no tournament to end!</font></b></u>"
					return
			Tourny_Announce()
				set category = "Administration"
				set name = "Tournament Announce"
				if(tournament == 1)
					var/ID=input("What do you wish to announce to the people in the tournament?")as text
					if(ID == "")
						return
					else
						for(var/mob/M in world)
							if(M.tourny == 1)
								M << "<center><font size=2><font color = Silver><b><center>[usr] would like to tournament announce!<center><br>[ID]"

				else
					usr<<"<font color=white><b><u>There is no tournament to announce to</font></b></u>"
					return

			Fix_Arena()
				set category = "Administration"
				arena_battle_on = 0
				usr<<"Fixed."
				AdminMessage("[usr] Fixed World Arena")

			Saga_Difficulty()
				set category = "Administration"
				if(saga_difficulty == "Easy")
					switch(alert({"What Difficulty do you wish to set the Sagas to?
	Medium (x2)
	Hard (x3.5)
	Extreme (x5)"},"Saga Difficulty","Medium","Hard","Extreme"))
						if("Medium")
							saga_difficulty = "Medium"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return
						if("Hard")
							saga_difficulty = "Hard"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return
						if("Extreme")
							saga_difficulty = "Extreme"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return

				if(saga_difficulty == "Medium")
					switch(alert({"What Difficulty do you wish to set the Sagas to?
	Easy (Default)
	Hard (x3.5)
	Extreme (x5)"},"Saga Difficulty","Easy","Hard","Extreme"))
						if("Easy")
							saga_difficulty = "Easy"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return
						if("Hard")
							saga_difficulty = "Hard"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return
						if("Extreme")
							saga_difficulty = "Extreme"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return

				if(saga_difficulty == "Hard")
					switch(alert({"What Difficulty do you wish to set the Sagas to?
	Easy (Default)
	Medium (x2)
	Extreme (x5)"},"Saga Difficulty","Easy","Hard","Extreme"))
						if("Easy")
							saga_difficulty = "Easy"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return
						if("Medium")
							saga_difficulty = "Medium"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return
						if("Extreme")
							saga_difficulty = "Extreme"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return

				if(saga_difficulty == "Extreme")
					switch(alert({"What Difficulty do you wish to set the Sagas to?
	Easy (Default)
	Medium (x2)
	Hard (x3.5)"},"Saga Difficulty","Easy","Medium","Hard"))
						if("Easy")
							saga_difficulty = "Easy"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return
						if("Medium")
							saga_difficulty = "Medium"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return
						if("Hard")
							saga_difficulty = "Hard"
							world << "\red Saga Difficulty has been set to: [saga_difficulty]"
							return


			Special_Announce(message as message)//this is too make a special announcement
				set category = "Administration"
				set name = "Admin Announce"
				set desc = "(message) Announce something to all players logged in"
				for(var/client/C)
					C.mob << "<font size=1><hr><center><font color= blue><b> [usr] announces:<br></font>\red [message]</center><hr>"


			Summon(mob/M in world)
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				M.loc = locate(src.x,src.y-1,src.z)


			HTML_Announce(message as message)///Brand new Announce!
				set category = "Administration"
				for(var/mob/M in world)
					var/html_doc = "<head><title>Announcment</title></head><body bgcolor=#000000 text=#FFFFFF><center><B><U><font color = red><font size=1><font face=Verdana>Announcement</U><BR>From: [usr]</font><BR><BR><font face=Verdana><font color=COCOCO>[message]"
					M << browse(html_doc,"window=Announce")

			Rename(mob/M in world)
				set category = "Administration"
				set desc="Change A Mob's Name or check for nameless players"
				var/newname = input("Change name to what?") as text

				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return

				if(Check_For_Syms(newname,SYM_TAGS) == TRUE)
					alert("Your name may not have symbols in it.")

				for(var/mob/N in world)
					if(N.name==""||N.name==null||N.name==0)
						N.name="NameLess"
						usr<<"<font color=red>Found Nameless. Renamed to NameLess. Key: [N.key]"
				M.name=newname
				usr << "You <font color = green>Changed</font> [M]`s name"
				AdminMessage("[usr] ([usr.key]) has changed [M]'s name ([M.key])")

	//--------------//
	//***Read Log***//
	//--------------//
	//var/PlayerLog=file("System/Admin/PlayerLog.txt")
	//var/ChatLog=file("System/Admin/ChatLog.txt")
	//var/AdminLog=file("System/Admin/AdminLog.txt")
			Read_Log()
				set category = "Administration"
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
					usr<<file("World Save Files/Player Chat Logs/[Which].txt")
					return
					All
					if(file("World Save Files/Chat Logs/Chat Log.txt"))
						usr<<file("World Save Files/Chat Logs/Chat Log.txt")
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
					usr<<file("World Save Files/System/Admin Verb Use/[Which].txt")
					return
					All
					if(file("World Save Files/System/Admin Verb Use/Admin Log.txt"))
						usr<<file("World Save Files/System/Admin Verb Use/Admin Log.txt")
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
					usr<<file("System/Admin/PlayerLogs/[Which].txt")
					return
					All
					if(file("World Save Files/System/Connection/Player Connections.txt"))
						usr<<file("World Save Files/System/Connection/Player Connections.txt")
						return
					else
						usr<<alert("No Log Located")
						return


	//***********//
	//***Repop***//
	//***********//
			Repop()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				switch(alert("Are you sure you want to repop the world?","Repop","Yes","No"))
					if("Yes")
						goto Yes
					if("No")
						return
				return
				Yes
				world.Repop()
				for(var/obj/Kamehameha/O in world)
					del(O)

				for(var/obj/Distructo_Disk/O2 in world)
					del(O2)

				for(var/obj/Fat_Wrap/O3 in world)
					del(O3)

				for(var/obj/Ki_Blast/O4 in world)
					del(O4)

				for(var/obj/Demon_Ki_Blast/O5 in world)
					del(O5)

				for(var/obj/CH_Distructo_Disk/O6 in world)
					del(O6)

				for(var/obj/big_bang/O7 in world)
					del(O7)

				for(var/obj/burning_attack/O8 in world)
					del(O8)

				for(var/obj/Saibaman_Corpse/O9 in world)
					del(O9)

	//			for(var/obj/masenko/O10 in world)
	//				del(O10)

				for(var/obj/final_flash/O11 in world)
					del(O11)

				for(var/obj/x10_kame/O12 in world)
					del(O12)

				for(var/obj/Ghost/O13 in world)
					del(O13)

				for(var/obj/SKamehameha/O14 in world)
					del(O14)

				for(var/obj/hell_flash/O15 in world)
					del(O15)

				for(var/obj/MB/O16 in world)
					del(O16)

				for(var/obj/death_beam/O17 in world)
					del(O17)

				world<<"<font size=0><font color=green>World Repop."
				world<<"<font color = blue>Dark Apocalypse Administration Information:\white[src] has repoped the world"
				AdminMessage("[usr] Repopped the world.")
				AdminLog("Repop","No Reason","No Other",usr)

	//*********//
	//**UnBan**//
	//*********//
	//***Ban***//
	//*********//
	//*BanList*//
	//*********//

			BanList()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				switch(input("Select List: KeyBan. IPBan.") in list("KeyBan","IPBan"))
					if("KeyBan")
						input("Banned List:","Banned List(Key)")as null|anything in BannedK
						return
					if("IPBan")
						input("Banned List:","Banned List(IP)")as null|anything in BannedA
						return
				return




	//************//
	//***Reboot***//
	//************//


			Reboot()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				switch(alert("Are you sure you want to reboot the world?","Reboot World","Yes","No"))
					if("Yes")
						goto Yes
					if("No")
						return
				Yes
				var/Time=input("How Long Till Reboot?")in list("Reboot Now","Set Time Reboot")
				if(Time=="Reboot Now")
					AdminLog("Reboot","[Time] - Reboot Type","None",usr)
					world.Reboot()
				if(Time=="Set Time Reboot")
					TryAgain
					var/TType=alert("Select Time: Seconds or Minutes.","Select Time","Seconds","Minutes")
					var/TTime=input("Select Amount Of Time. (In [TType])")as num
					var/ANNC="<font color=red><b>Server Announcement:</b><font color=blue>"
					if(TTime<=0)
						usr<<"Please Enter A Valid Number"
						goto TryAgain
					if(TType=="Seconds")
						TTime*=10
					if(TType=="Minutes")
						TTime=TTime*10*60
					AdminLog("Reboot","[TType] - Reboot Type","[TTime] - Reboot Time In Ticks. [TTime/600] Minutes",usr)
					while(TTime>6000)
						world<<"[ANNC] World Rebooting In [TTime/10] Seconds, or [TTime/600] Minutes."
						TTime-=6000
						sleep(6000)
					while(TTime>600)
						world<<"[ANNC] World Rebooting In [TTime/10] Seconds, or [TTime/600] Minutes."
						TTime-=600
						sleep(600)
					while(TTime>100)
						world<<"[ANNC] World Rebooting In [TTime/10] Seconds."
						TTime-=100
						sleep(100)
					while(TTime>=10)
						world<<"[ANNC] World Rebooting In [TTime/10] Seconds."
						TTime-=10
						sleep(10)
					world<<"[ANNC] World Rebooting Now!"
					spawn(2)
					world.Reboot()


	//****************//
	//***Admin Lock***//
	//****************//


	GM3
		verb
			Movement(mob/M in world)
				set category = "Administration"
				switch(input("Movement Lock or Unlock?")in list("Lock","Unlock"))
					if("Lock")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						switch(alert("Are you sure you want to lock [M]'s movement?","Movement Lock [M]","Yes","No"))
							if("Yes")
								if(M.GMLevel>=GMLevel&&!M==usr)
									AdminMessage("[usr] tried locking [M]'s movement.")
									AdminBadLog("Movement Lock","No Reason","No Other",M)
									return
								else
									var/Reason=input("Input a reason.")as text
									AdminLog("Movement Lock","[Reason]","No Other",M)
									if(Reason)
										world<<"<font color = blue>Dark Apocalypse Administration Information:\white<b>[M]'s <font color = red>Movement</font> has been <font color = red>Locked </font>by [src]. ([Reason])"
									else
										world<<"<font color = blue>Dark Apocalypse Administration Information:\white<b>[M]'s <font color = red>Movement</font> has been <font color = red>Locked </font> by [src]."
									M.GMLocked=1
									M.ki_lock=1
									M.it_blocked=1
							if("No")
								return
					if("Unlock")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						switch(alert("Are you sure you want to UnLock [M]'s movement?","Movement UnLock [M]","Yes","No"))
							if("Yes")
								if(M.GMLevel>=GMLevel&&!M==usr)
									if(!GMLevel==7)
										AdminMessage("[usr] tried UnLocking [M]'s movement.")
										AdminBadLog("Movement UnLock","No Reason","No Other",M)
								var/Reason=input("Input a reason.")as text
								AdminLog("Movement UnLock","[Reason]","No Other",M)
								if(Reason)
									world<<"<b><font color = blue>Dark Apocalypse Administration Information:\white[M]'s <font color = red>Movement</font> has been <font color = red>UnLocked </font>by [src]. ([Reason])"
								else
									world<<"<b><font color = blue>Dark Apocalypse Administration Information:\white[M]'s <font color = red>Movement</font> has been <font color = red>UnLocked </font> by [src]."
								M.GMLocked=0
								M.it_blocked=0
								M.ki_lock=0
							if("No")
								return
			Multi_Key_Check()
				set category = "Administration"
				set desc = "Check All Player for Multi Keying"

				var/Found[0]
				for(var/mob/M in world)
					if(Found.Find(M))continue
					if(M.client)
						for(var/mob/M2 in world)
							if(!M2.client)continue
							if(!M2)continue
							if(M == M2)continue
							if(M.client.address == M2.client.address)
								Found += M
								Found += M2
								usr << "<B>\red Match Found!"
								usr << "<B><font color = #999999>Name:</font> [M.name] <B><font color = #999999>- Key:</font> [M.key] <B><font color = #999999>- Address:</font> [M.client.address]."
								usr << "<B><font color = #999999>Name:</font> [M2.name] <B><font color = #999999>- Key:</font> [M2.key] <B><font color = #999999>- Address:</font> [M2.client.address]."


			Start_Sagas()
				set category = "Administration"
				if(sagas_on == 0)
					switch(alert("Good or Evil?","Sagas","Good","Evil","Cancel"))
						if("Good")
							sagas_stopped = 0
							sagas_on = 1
							sagas_good = 1
							spawn(20) SAGA_CHECK_2()
						if("Evil")
							sagas_stopped = 0
							sagas_on = 1
							sagas_evil = 1
							spawn(20) SAGA_CHECK()

						if("Cancel")
							return

				else
					usr << "Sagas are already On!"
					return

			Stop_Sagas()
				set category = "Administration"
				if(sagas_on == 1)
					sagas_stopped = 1
					world << "<font color = lime>Saga Information:</font> Sagas have been De-Activated!"
					saga = "Not On"
					part = "Not On"
					location = "Not On"
					sagas_evil = 0
					sagas_good = 0
					sagas_on = 0
					raditz_saga 			= 0
					raditz_saga_on			= 0
					vegeta_saga 			= 0
					vegeta_saga_on			= 0

					ginyu_saga 				= 0
					ginyu_saga_on			= 0
					frieza_saga 			= 0
					frieza_saga_on			= 0
					frieza2_saga_on			= 0
					frieza3_saga_on			= 0
					frieza4_saga_on			= 0
					frieza5_saga_on			= 0

					android_saga 			= 0
					android_saga_on			= 0
					android2_saga_on		= 0
					android3_saga_on		= 0
					cell_saga				= 0
					cell_saga_on			= 0
					cell2_saga_on			= 0
					cell3_saga_on			= 0
					majin_saga 				= 0
					majin_saga_on			= 0
					majin2_saga_on			= 0
					majin3_saga_on			= 0
					majin4_saga_on			= 0
					majin5_saga_on			= 0
					majin6_saga_on			= 0

					goku_piccolo_saga		= 0
					goku_piccolo_saga_on	= 0
					z_force_saga			= 0
					z_force_saga_on			= 0
					z_force_saga2_on		= 0

					z_force_2_saga			= 0
					z_force_2_saga_on		= 0
					z_force2_2_saga_on		= 0
					super_piccolo_saga		= 0
					super_piccolo_saga_on	= 0
					super_goku_saga			= 0
					super_goku_saga_on		= 0
					ssj_goku_saga			= 0
					ssj_goku_saga2_on		= 0

					trunks_saga				= 0
					trunks_saga_on			= 0

					ssj_goku_2_saga			= 0
					ssj_goku_2_saga_on		= 0
					ssj_vegeta_saga			= 0
					ssj_vegeta_saga_on		= 0

					super_piccolo_2_saga 	= 0
					super_piccolo_2_saga_on = 0

					ascended_vegeta_saga 	= 0
					ascended_vegeta_saga_on	= 0
					ascended_trunks_saga 	= 0
					ascended_trunks_saga_on	= 0
					z_fighters_3_saga	 	= 0
					z_fighters_3_saga_on 	= 0
					ssj_2_gohan				= 0
					ssj_2_gohan_on			= 0

					ssj_2_gohan_2_saga		= 0
					ssj_2_gohan_2_saga_on	= 0
					ssj_2_goku_saga			= 0
					ssj_2_goku_saga_on		= 0
					gotenks_saga			= 0
					gotenks_saga_on			= 0
					mystic_gohan_saga		= 0
					mystic_gohan_saga_on	= 0
					vegito_saga				= 0
					vegito_saga_on			= 0
					goku_vegeta_kais_saga	= 0
					goku_vegeta_kais_saga_on	= 0
					spawn() status_change()

					for(var/mob/Saga/M in world)
						del(M)
				else
					usr << "Sagas are already Stopped!"
					return






			Player_Check()
				set category = "Administration"
				set desc="Check player IPs and Keys"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				usr<<"<font color=silver>Player Information:"
				for(var/mob/M in world)
					if(M.client)
						usr<<"<font color=silver>  Name: [M.name]. Key: [M.key]. Address: [M.client.address]."
			Admin_Powers(mob/M in world)
				set category = "Administration"
				switch(input("Admin Powers Lock or Unlock?")in list("Lock","Unlock"))
					if("Lock")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						if(M.GMLevel==0)
							usr<<"<font color=red>They Have No Admin Powers!"
							return
						if(M.GMLock==1)
							usr<<"<font color=red>Their Powers Are Locked!"
							return
						switch(alert("Are you sure you want to lock [M]'s admin powers?","Lock [M]","Yes","No"))
							if("Yes")
								goto Yes
							if("No")
								return
						return
						Yes
						if(M.GMLevel>=GMLevel)
							AdminMessage("[usr] tried Locking [M]'s Admin Powers")
							AdminBadLog("Admin Lock","No Reason","No Other",M)
							return
						var/Reason=input({"Input Reason. Reasons for this action WILL be checked, unless explained
			elsewhere. If a stupid reason is given, your admin powers may be stripped."})as text
						M.GMLock=1
						AdminMessage("[usr] Locked [M]'s Admin Powers ~ Reason: [Reason]")
						AdminLog("Admin Lock","[Reason]","No Other",M)

					if("Unlock")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						if(M.GMLevel==0)
							usr<<"<font color=red>They Have No Admin Powers!"
							return
						if(M.GMLock==0)
							usr<<"<font color=red>Their Powers Aren't Locked!"
							return
						switch(alert("Are you sure you want to unlock [M]'s admin powers?","UnLock [M]","Yes","No"))
							if("Yes")
								goto Yes
							if("No")
								return
						return
						Yes
						if(M.GMLevel>=GMLevel)
							AdminMessage("[usr] tried UnLocking [M]'s Admin Powers")
							AdminBadLog("Admin UnLock","No Reason","No Other",M)
							return
						var/Reason=input({"Input Reason. Reasons for this action WILL be checked, unless explained
			elsewhere. If a stupid reason is given, your admin powers may be stripped."})as text
						M.GMLock=0
						AdminMessage("[usr] UnLocked [M]'s Admin Powers ~ Reason: [Reason]")
						AdminLog("Admin UnLock","[Reason]","No Other",M)

	GM4
		verb
			Create()
				set category = "Administration"
				var/CCX
				var/CanMake[]
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				var/Type1=input("Select Creation Type")in list("Object","Turf","Mobile","Cancel")
				if(Type1=="Object") goto Object
				if(Type1=="Turf")goto Turf
				if(Type1=="Mobile")goto Mobile
				return
				Object
				CanMake+=typesof(/obj)
				CanMake+="Cancel"
				var/NOBJ=input("Create What object?")in CanMake
				view(6) << "\red [usr] waves his hand around and WOOSH!!! creates a new object!"
				if(NOBJ=="Cancel") return
				CCX=NOBJ
				new CCX(locate(x,y-1,z))
				goto Log
				Turf
				CanMake+=typesof(/turf,/area)
				CanMake+="Cancel"
				var/NTRF=input("Create What turf?")in CanMake
				view(6) << "\red [usr] waves his hand around and WOOSH!!! creates a new turf!"
				if(NTRF=="Cancel") return
				CCX=NTRF
				new CCX(locate(x,y-1,z))
				goto Log
				Mobile
				CanMake+=typesof(/mob)
				CanMake+="Cancel"
				var/NMOB=input("Create What mobile?")in CanMake
				view(6) << "\red [usr] waves his hand around and WOOSH!!! creates a new NPC!"
				if(NMOB=="Cancel") return
				CCX=NMOB
				new CCX(locate(x,y-1,z))
				goto Log
				Log
				ALog({"Create:
	   [usr] Created a [Type1], [CCX]"})
				SAdminLog(usr,{"Create:
	   [usr] Created a [Type1], [CCX]"})

				return
			Post_Announcement()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return

				var/annc = input("What is your announcement to the world?") as message
				switch(input("which slot?")in list("Slot 1","Slot 2","Slot 3","Slot 4","Slot 5","Cancel"))

					if("Slot 1")
						if(!annc)
							annc = ""
							annc_1 = ""
						else
							annc_1 = "---------------------------------------------------<br>[usr.name] ([usr.key]) : [annc]<br>"
							alert("Announcment Saved to slot 1")
							player_rules_spawn()

					if("Slot 2")
						if(!annc)
							annc = ""
							annc_2 = ""
						else
							annc_2 = "---------------------------------------------------<br>[usr.name] ([usr.key]) : [annc]<br>"
							alert("Announcment Saved to slot 2")
							player_rules_spawn()
					if("Slot 3")
						if(!annc)
							annc = ""
							annc_3 = ""
						else
							annc_3 = "---------------------------------------------------<br>[usr.name] ([usr.key]) : [annc]<br>"
							alert("Announcment Saved to slot 3")
							player_rules_spawn()
					if("Slot 4")
						if(!annc)
							annc = ""
							annc_4 = ""
						else
							annc_4 = "---------------------------------------------------<br>[usr.name] ([usr.key]) : [annc]<br>"
							alert("Announcment Saved to slot 4")
							player_rules_spawn()
					if("Slot 5")
						if(!annc)
							annc = ""
							annc_5 = ""
						else
							annc_5 = "---------------------------------------------------<br>[usr.name] ([usr.key]) : [annc]<br>"
							alert("Announcment Saved to slot 5")
							player_rules_spawn()
					if("Cancel")
						alert("Canceled")
						return

			Change_Title()
				set category = "Administration"
				var/list/Menu = list()
				for(var/mob/M in world)
					if(!M.client) continue
					Menu.Add(M)

				var/mob/M = input("Change Who's Title?","Guild Change Title") as null | anything in Menu
				if(!M)return
				if(istype(M,/mob))

					switch(alert("Do you wish to Alter their Custom Title?","Change Title","Yes","No"))
						if("Yes")
							var/new_title = input("What do you wish their Title to be called?(HTML Allowed)","Custom Title") as text | null
							M.title = new_title

							usr << "[M] has been granted the title of [new_title]!"
							M << "(GM)[usr] has granted you the title of [new_title]!"


						if("No")

							return



			Delete(mob/M as mob|obj|turf)
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return

				if(ismob(M))
					if(M.client)
						usr<<alert("Use Boot For This")
						return
				AdminLog("Delete","[M.type] ","[M]",usr)
				del M

			Fix(mob/PC/M in world)
				set category = "Administration"
				switch(input("What would you like to Do?")in list("Fix Overlays","Fix Underlays"))
					if("Fix Overlays")
						switch(alert("Do you wish to remove [M]'s Hair?","Overlay Removal","Yes","No"))
							if("Yes")
								M.overlays -= M.overlays
								if(M.race == "Saiyan")
									M.overlays += tail
							else
								return

					if("Fix Underlays")
						switch(alert("Do you wish to remove [M]'s Aura?","Underlay Removal","Yes","No"))
							if("Yes")
								M.underlays -= M.underlays

								if(M.aura_on == 1)
									M.aura_on = 0
							else
								return

			Revive_Dbs()
				set category = "Administration"
				switch(input("Which Dbs?")in list("Earth","Namek","Black Star"))
					if("Earth")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						world.dragonball_loader()


					if("Namek")
						set category = "Administration"
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						world.dragonball_loadern()

					if("Black Star")
						set category = "Administration"
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						world.dragonball_loaderbs()
			Destroy_Dbs()
				set category = "Administration"
				switch(input("Which Dbs?")in list("Earth","Namek","Black Star"))
					if("Earth")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						world << "The <font color=blue>Earth\font dragonballs have been destroyed by [usr]!"
						for(var/obj/Dragonballs/O in world)
							del O
					if("Namek")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						world << "The <font color=blue>Namek\font dragonballs have been destroyed by [usr]!"
						for(var/obj/Namek_Dragonballs/O in world)
							del O
					if("Black Star")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						world << "The <font color=grey>Black Star\font dragonballs have been destroyed by [usr]!"
						for(var/obj/Black_Star_Dragonballs/O in world)
							del O

			Scatter_Dbs()
				set category = "Administration"
				switch(input("Which Dbs?")in list("Earth","Namek","Black Star"))
					if("Earth")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						world << "<font color = blue>Dark Apocalypse Administration Information:\white The dragonballs have been scattered around <font color=blue>Earth\font by [usr]!"
						for(var/obj/Dragonballs/O in world)
							O.x = rand(1,150)
							O.y = rand(1,150)
							O.z = 1
					if("Namek")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						world << "<font color = blue>Dark Apocalypse Administration Information:\white The dragonballs have been scattered around <font color=blue>Namek\font by [usr]!"
						for(var/obj/Namek_Dragonballs/O in world)
							O.x = rand(1,150)
							O.y = rand(1,150)
							O.z = 2
					if("Black Star")
						if(GMLockCheck())
							usr<<"<font color=red>Your Admin Powers Are Locked."
							return
						world << "<font color = blue>Dark Apocalypse Administration Information:\white The Black Star Dragonballs have been scattered around <font color=blue>the Galaxy\font by [usr]!"
						for(var/obj/Black_Star_Dragonballs/O in world)
							O.x = rand(1,150)
							O.y = rand(1,150)
							O.z = 2
			View_Player_Stats(mob/M in world)
				set category = "Administration"
				var/form = ""
				if(!M.form_1)
					form = "Normal State"

				if(!M.form_1 && M.inverted)
					form = "\white Inverted Power"

				if(M.form_5)
					if(M.race == "Saiyan")
						form = "\yellow Super Saiyan 4"
					if(M.race == "Half Saiyan")
						if(M.fused)
							form = "\yellow Super Saiyan 3"
						else
							form = "\white Mystic"
					if(M.race == "Changling")
						form = "\white Form 5"

					if(M.race == "Human")
						form = "<font color = red>Super Human</font>"
					if(M.race == "Demon")
						form = "<font color=maroon>Full Power</font>"
				else
					if(M.form_4)
						if(M.race == "Saiyan")
							form = "\yellow Super Saiyan 3"
						if(M.race == "Half Saiyan")
							form = "\yellow Super Saiyan 2 (Fully Ascended)"
						if(M.race == "Changling")
							form = "\white Form 4 100%"
						if(M.race == "Majin")
							form = "<font color=#E358B4>Kid Majin</font>"
						if(M.race == "Tuffle")
							form = "\yellow Super Tuffle 2"
						if(M.race == "Human")
							form = "<font color = #EB7F00>Full Potential</font>"
						if(M.race == "Namek")
							form = "\green Super Namek 2"
						if(M.race == "Bio-Android")
							form = "\green Perfect Form (Power Weighted)"
					else
						if(M.form_3)
							if(M.race == "Saiyan" || M.race == "Half Saiyan")
								form = "\yellow Super Saiyan 2"
							if(M.race == "Changling")
								form = "\white Form 4"
							if(M.race == "Majin")
								form = "<font color=#E358B4>Super Majin 2</font>"
							if(M.race == "Tuffle")
								form = "\yellow Infected Tuffle 2"
							if(M.race == "Human")
								form = "<font color = #EB7F00>Advanced Focus</font>"
							if(M.race == "Namek")
								form = "\green Super Namek 2"
							if(M.race == "Bio-Android")
								form = "\green Perfect Form"
							if(M.race == "Demon")
								form = "<font color=maroon>Pure Evil</font>"

						else
							if(M.form_2)
								if(M.race == "Saiyan" || M.race == "Half Saiyan")
									form = "\yellow Ascended Super Saiyan"
								if(M.race == "Changling")
									form = "\white Form 3"
								if(M.race == "Majin")
									form = "<font color=#E358B4>Super Majin</font>"
								if(M.race == "Tuffle")
									form = "\yellow Super Tuffle"
								if(M.race == "Human")
									form = "<font color = #EB7F00>Focus</font>"
								if(M.race == "Namek")
									form = "\green Ascended Namek"
								if(M.race == "Bio-Android")
									form = "\green Perfect Form"
								if(M.race == "Android")
									form = "\blue Ultimate Android"
								if(M.race == "Demon")
									form = "<font color=maroon>Demon Ascension</font>"

							else
								if(M.form_1)
									if(M.race == "Saiyan" || M.race == "Half Saiyan")
										form = "\yellow Super Saiyan"
									if(M.race == "Changling")
										form = "\white Form 2"
									if(M.race == "Majin")
										form = "<font color=#E358B4>Thin Majin</font>"
									if(M.race == "Tuffle")
										form = "\yellow Infected Tuffle"
									if(M.race == "Human")
										form = "<font color = #EB7F00>Potential Unlocked</font>"
									if(M.race == "Namek")
										form = "\green Super Namek"
									if(M.race == "Bio-Android")
										form = "\green Imperfect Form"
									if(M.race == "Android")
										form = "\blue Super Android"
									if(M.race == "Demon")
										form = "<font color=maroon>Demonic Will</font>"
				src << "---------------------"
				src << "<font size = 4>[M]</size>"
				src << "<font size = 2>Key: [M.key]</size>"
				src << "Karma: [M.karma]: [M.karma_rating]%"
				src << ""
				src << "Level: [M.level]"
				src << "Training Points : [M.tp]"
				src << "Powerlevel: [num2text(M.powerlevel,10000000)] / [num2text(M.powerlevel_max,10000000)]"
				src << "Ki: [num2text(M.ki,10000000)] / [num2text(M.ki_max,10000000)]"
				src << "Strength: [num2text(M.strength,10000000)] / [num2text(M.strength_max,10000000)]"
				src << "Defence: [num2text(M.defence,10000000)] / [num2text(M.defence_max,10000000)]"
				src << ""
				src << "Earth Wishes: [M.wishes] / 5"
				src << "Namek Wishes: [M.namek_wishes] / 3"
				src << "Zenni: [M.zenni]"
				src << "Banked Zenni: [M.banked_zenni]"
				src << ""
				src << "Block Skill: [M.block] %"
				src << "Counter Skill: [M.counter] %"
				src << "Reflect Skill: [M.reflect] %"
				src << "Dodge Skill: [M.dodge] %"
				src << "Critical Skill: [M.critical] %"
				src << ""
				src << "Currently In: [form]"
				if(src.GMLevel > 2)
					src << "Energy Code: [num2text(M.energy_code,1000000)]"
					src << "---------------------"
	GM5
		verb
			Presence()
				set category = "Administration"
				set desc="Hides your Presence in the Who & Online Admins"
				switch(alert("Do you want to hide your Presence or Reveal your Self?","Hide or Reveal","Reveal","Hide"))
					if("Reveal")
						usr.hidden = 0
						world << "<font color =red>Dark Apocalypse Information: <font color = white> Player Info: <font color = white>[src.name] the [src.race] joined the server."
					if("Hide")
						usr.hidden = 1
						world << "<font color =red>Dark Apocalypse Information: <font color = white>: <font color = white>[src] has left the server."
			Stop_Music()//Stop playing the music
				set category = "Administration"
				world << sound(null)

			Play_Music(S as sound)//Play the music
				set category = "Administration"
				world << sound(S)

			Heal_World()
				set category = "Administration"
				for(var/mob/PC/M in world)
					M.powerlevel = M.powerlevel_max
					M.ki = M.ki_max
					M.strength = M.strength_max
					M.defence = M.defence_max
					M.speed = M.speed_max
					M.fatigue = 0
					if(M.dead==1)
						M.overlays -= usr.halo
						M.overlays -= usr.halo
						M.overlays -= usr.halo
						M.overlays -= halo
						M.overlays -= halo
						M.overlays -= halo
						M.it_blocked = 0
						M.loc = locate(145,60,1)
						M.safe = 1
						M.dead = 0
						M << "\white You feel revitalized!"
						spawn(300) M.safe = 0
				world << "<font color = blue>Dark Apocalypse Administration Information:\white<font color = blue>[usr] has healed and revived the world!"



	Owner
		verb
			UnBan()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				var/ListB=input("Which List Do You Want To Remove Something From?","Unban")in list("Key","IP")
				if(ListB=="IP")
					var/UnBan = input("Remove What From Address Banned List?","UnBan") as null|anything \
						in BannedA
					if(!UnBan) return
					BannedA -= UnBan
					for(var/mob/M in world)
						if(M.GMLevel)
							M << "[src] UnBanned [UnBan]."
				else
					var/UnBan = input("Remove What From Key Banned List?","UnBan") as null|anything \
						in BannedK
					if(!UnBan) return
					BannedK -= UnBan
					for(var/mob/M in world)
						if(M.GMLevel)
							M << "[src] UnBanned [UnBan]."

			Ban(mob/M in world)
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				switch(alert("Are you sure you want to ban [M]?","Ban [M]","Yes","No"))
					if("Yes")
						if(M.GMLevel>=GMLevel)
							AdminMessage("[usr] tried Banning [M].")
							AdminBadLog("Ban","No Reason","No Other",M)
							return
						else
							var/Reason=input("Input a reason.(Mandantory)")as text
							var/Type=input("Ban Key or Address?")in list("Key","Address","Both")
							AdminLog("Ban","[Reason]","No Other",M)
							world<<"<font color = blue>Dark Apocalypse Administration Information:\white<b>[M] has been <font color = red>Banned</font> by [src]. ([Type])([Reason])"
							if(Type=="Key")
								BannedK+=M.ckey
							if(Type=="Address")
								BannedA+=M.client.address
							if(Type=="Both")
								BannedK+=M.ckey
								BannedA+=M.client.address
							del M
						if("No")
							return



			Summon_World()
				set category = "Administration"
				for(var/mob/M in world)
					if(!M.client) continue
					if(usr==M)continue
					M.loc = locate(src.x,src.y-1,src.z)
				world << "<font color = blue>Dark Apocalypse Administration Information:\white<b>[src] has <font color = red>Summoned</font> Everyone</b>"




			Server()
				set category = "Administration"
				switch(input("What would you like to do?")in list("Update Players","Player Limit On/Off","Set Player Limit"))
					if("Update Players")
						players = 0
						for(var/mob/PC/C)
							if(C.client)
								players += 1
						usr << "Players Online: [players]"
						status_change()

					if("Player Limit On/Off")
						switch(alert("On or Off?","Player Limit","On","Off"))
							if("On")
								player_limit_on = 1
								status_change()
								AdminMessage("[usr] ([usr.key]) has turned the player limit On")

							if("Off")
								player_limit_on = 0
								status_change()
								AdminMessage("[usr] ([usr.key]) has turned the player limit Off")
					if("Set Player Limit")
						var/limit = input("Set to what?") as num
						max_players = limit
						status_change()
						AdminMessage("[usr]([usr.key]) has set the player limit to [limit].")

			Delete_Log()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				var/X=alert({"Select Log."},"Read Log","Chat Log","Admin Log","Player Log")
				if(X=="Chat Log")
					if(file("System/Admin/ChatLog.txt"))
						fdel("System/Admin/ChatLog.txt")
						AdminMessage("[usr] Deleted The [X]!")
						ALog("Log Deletion: [usr] Deleted [X].")
						SAdminLog("Log Deletion: [usr] Deleted [X].")
						return
					else
						usr<<alert("No Log Located")
						return
				if(X=="Admin Log")
					var/YY=input("Collective (Everyone) or Individual Admin Files?","Deletion")in list("All","Individual")
					if(YY=="All")goto All
					var/Which=input({"Whos file would you like to delete?(CKey, Example: AJX would be ajx,
	FiRe-MaN would be fireman"},"Delete What File")as null|text
					if(!Which)
						return
					fdel("System/Admin/AdminLogs/[Which].txt")
					AdminMessage("[usr] Deleted The [X]! {[Which]}")
					ALog("Log Deletion: [usr] Deleted [X] {[Which]}.")
					SAdminLog("Log Deletion: [usr] Deleted [X] {[Which]}.")
					return
					All
					if(file("System/Admin/AdminLogs/AdminLog.txt"))
						fdel("System/Admin/AdminLogs/AdminLog.txt")
						AdminMessage("[usr] Deleted The [X]!")
						ALog("Log Deletion: [usr] Deleted [X].")
						SAdminLog("Log Deletion: [usr] Deleted [X].")
						return
					else
						usr<<alert("No Log Located")
						return
				if(X=="Player Log")
					if(file("System/Admin/PlayerLog.txt"))
						fdel("System/Admin/PlayerLog.txt")
						AdminMessage("[usr] Deleted The [X]!")
						ALog("Log Deletion: [usr] Deleted [X].")
						SAdminLog("Log Deletion: [usr] Deleted [X].")
						return
					else
						usr<<alert("No Log Located")
						return



			World_ShutDown()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				var/YN=alert("Are You Sure You Want To Close The World?","World ShutDown","No","Yes","Disable World Shutdown")
				if(YN=="No")
					return
				if(YN=="Disable World Shutdown")
					if(GM_WorldShutDownProc==0)
						alert("The World Isn't Trying To Shut Down.")
						return
					var/Stop=alert("Stop World Shutdown?","Stop World ShutDown.","Yes","No")
					if(Stop=="Yes")
						GM_WorldShutDownProc=0
						AdminMessage("[usr] stopped the world shutdown.")
						AdminLog("World ShutDown Stop","No Reason","No Other",world)
						return
					else
						usr<<alert("Ok. Not Stopping ShutDown.")
						return
				var/YN2=alert("Are You Positive You Want To Shut Down The World?","World ShutDown","No","Yes")
				if(YN2=="No")
					return
				if(GM_ShutDownPass)
					var/PassW=input("Enter World Shutdown Password.")as num|password
					if(!PassW==GM_ShutDownPass)
						usr<<alert("Error. Incorrect Password.")
						return
				var/YN3=alert("Last Chance. Are you totally sure you want to close the world?","World ShutDown","No","Yes")
				if(YN3=="No")
					return
				GM_WorldShutDownProc=1
				alert("Closing World In 27 Seconds")
				world<<"<font color=red>World Closing In 27 Seconds, Save your Characters."
				AdminMessage("[usr] has innitiated the world shutdown. To disable, press ~World ShutDown verb and select Disable World Shutdown.")
				AdminLog("World ShutDown","No Reason","No Other",usr)
				sleep(100)
				if(GM_WorldShutDownProc==1)
					world<<"<font color=red>World Closing In 17 Seconds."
					goto Go1
				else
					world<<"<font color=red>World Close Disabled."
					return
				Go1
				sleep(100)
				if(GM_WorldShutDownProc)
					world<<"<font color=red>World Closing In 7 Seconds."
					goto Go2
				else
					world<<"<font color=red>World Close Disabled."
					return
				Go2
				sleep(70)
				if(GM_WorldShutDownProc)
					goto Go3
				else
					world<<"<font color=red>World Close Disabled."
					return
				Go3
				world<<"<font color=red>Closing World."
				del world
			Edit(mob/O as obj|mob|turf|area in world)
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				if(ismob(O))
					if(O.GMLevel>=usr.GMLevel)
						if(!usr.GMLevel==7)
							alert("You can only Edit Admins of a rank lower than your own.")
							AdminBadLog("Edit","None","None",O)
							return
				var/Choices[0]
				for(var/V in O.vars) Choices+=V
				Choices-="key"
				Choices-="ckey"
				Choices-="contents"
				Choices-="verbs"
				Choices-="overlays"
				Choices-="underlays"
				Choices-="GMLevel"
				Choices-="GMLock"
				Choices-="GMLocked"
				Choices-="GM_ChatMute"
				Choices-="vars"
				Choices-="group"
				Choices-="type"
				Choices-="parent_type"
				Choices-="client"
				Choices-="level"
				Choices-="powerlevel_max"
				Choices-="strength_max"
				Choices-="defence_max"
				Choices-="ki_max"

				Choices-="exp"
				Choices-="tp"


				var/variable = input("Which var?","Var") in Choices
				var/default
				var/typeof = O.vars[variable]
				var/dir


				if(isnull(typeof))
					usr << "Unable to determine variable type."

				else if(isnum(typeof))
					usr << "Variable appears to be <b>NUM</b>."
					default = "num"
					dir = 1

				else if(istext(typeof))
					usr << "Variable appears to be <b>TEXT</b>."
					default = "text"

				else if(isloc(typeof))
					usr << "Variable appears to be <b>REFERENCE</b>."
					default = "reference"

				else if(isicon(typeof))
					usr << "Variable appears to be <b>ICON</b>."
					typeof = "\icon[typeof]"
					default = "icon"

				else if(istype(typeof,/atom) || istype(typeof,/datum))
					usr << "Variable appears to be <b>TYPE</b>."
					default = "type"

				else if(istype(typeof,/list))
					usr << "Variable appears to be <b>LIST</b>."
					default = "cancel"

				else if(istype(typeof,/client))
					usr << "Variable appears to be <b>CLIENT</b>."
					default = "cancel"

				else
					usr << "Variable appears to be <b>FILE</b>."
					default = "file"

				usr << "Variable contains: [typeof]"
				if(dir)
					switch(typeof)
						if(1)
							dir = "NORTH"
						if(2)
							dir = "SOUTH"
						if(4)
							dir = "EAST"
						if(8)
							dir = "WEST"
						if(5)
							dir = "NORTHEAST"
						if(6)
							dir = "SOUTHEAST"
						if(9)
							dir = "NORTHWEST"
						if(10)
							dir = "SOUTHWEST"
						else
							dir = null
					if(dir)
						usr << "If a direction, direction is: [dir]"

				var/class = input("What kind of variable?","Variable Type",default) in list("text",
					"num","type","reference","icon","file","restore to default","cancel")

				switch(class)
					if("cancel")
						return

					if("restore to default")
						O.vars[variable] = initial(O.vars[variable])

					if("text")
						O.vars[variable] = input("Enter new text:","Text",\
							O.vars[variable]) as text

					if("num")
						O.vars[variable] = input("Enter new number:","Num",\
							O.vars[variable]) as num

					if("type")
						O.vars[variable] = input("Enter type:","Type",O.vars[variable]) \
							in typesof(/obj,/mob,/area,/turf)

					if("reference")
						O.vars[variable] = input("Select reference:","Reference",\
							O.vars[variable]) as mob|obj|turf|area in world

					if("file")
						O.vars[variable] = input("Pick file:","File",O.vars[variable]) \
							as file

					if("icon")
						O.vars[variable] = input("Pick icon:","Icon",O.vars[variable]) \
							as icon
				AdminLog("Edit","Variable: [variable]","Typesof: [typeof]",usr)



			World_Mute()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				var/GoGo=alert("Are you sure you want to mute everyone?","World Mute","Yes","No")
				if(GoGo=="No")
					return
				for(var/mob/M in world)
					if(usr==M) continue
					if(M.GMLevel>=GMLevel)
						M<<"You were not muted because you are an admin equal to or above [usr]'s rank."
						continue
					World_Mute=1
				AdminLog("World Mute","No Reason","No Other",usr)
				world<<"<font color = blue>Dark Apocalypse Administration Information:\white<font color=red>[usr] has muted everyone!"

			World_UnMute()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				var/GoGo=alert("Are you sure you want to unmute everyone?","World UnMute","Yes","No")
				if(GoGo=="No")
					return
				for(var/mob/M in world)
					if(usr==M) continue
					if(M.GMLevel>=GMLevel)
						M<<"You were not unmuted because you are an admin equal to or above [usr]'s rank."
						continue
					World_Mute=0
				AdminLog("World UnMute","No Reason","No Other",usr)
				world<<"<font color = blue>Dark Apocalypse Administration Information:\white<font color=red>[usr] has unmuted everyone!"


			Channel_Mute()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				var/GoGo=alert("Are you sure you want to mute everyone?","World Mute","Yes","No")
				if(GoGo=="No")
					return
				for(var/mob/M in world)
					if(usr==M) continue
					if(M.GMLevel>=GMLevel)
						M<<"You were not muted because you are an admin equal to or above [usr]'s rank."
						continue
					Channel_Mute=1
				AdminLog("World Mute","No Reason","No Other",usr)
				world<<"<font color=red>[usr] has muted all chat channels!"

			Channel_UnMute()
				set category = "Administration"
				if(GMLockCheck())
					usr<<"<font color=red>Your Admin Powers Are Locked."
					return
				var/GoGo=alert("Are you sure you want to unmute chat channels?","Channel UnMute","Yes","No")
				if(GoGo=="No")
					return
				for(var/mob/M in world)
					if(usr==M) continue
					Channel_Mute=0
					World_Mute = 0
				AdminLog("Channel UnMute","No Reason","No Other",usr)
				world<<"<font color=red>[usr] has unmuted all chat channels!"


