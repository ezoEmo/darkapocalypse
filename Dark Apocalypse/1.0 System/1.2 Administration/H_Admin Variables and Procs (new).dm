var/tmp/GM_WorldShutDownProc=0
//***********//
//***********//
//And now, 7 spots for all the other positions too. Just put in their keys and they will be
//given their appropriate ranks automatically when they log in if they are on that key.

//*************//
//****Ranks****//
//*************//
//1: TE - Trial Enforcer
var/const/GM1=""
var/const/GM2=""
var/const/GM3=""
var/const/GM4=""
var/const/GM5=""
var/const/GM6=""
var/const/GM7=""
//2: HE - Enforcer
var/const/HA1=""
var/const/HA2=""
var/const/HA3=""
var/const/HA4=""
var/const/HA5=""
var/const/HA6=""
var/const/HA7=""

//3: ME - Master Enforcer
var/const/MA1=""
var/const/MA2=""
var/const/MA3=""
var/const/MA4=""
var/const/MA5=""
var/const/MA6=" "
var/const/MA7=""
//4: SM - Staff Council Member
var/const/SM1=""
var/const/SM2=""
var/const/SM3=""
var/const/SM4=""
var/const/SM5=""
var/const/SM6=""
var/const/SM7=""
//5: GM* - Game Maker
//If you need more than 7 default *GM*s, you can add them yourself :)
var/const/GAME_MAKER1="Darker Legends"
var/const/GAME_MAKER2=""
var/const/GAME_MAKER3=""
var/const/GAME_MAKER4=""
var/const/GAME_MAKER5=""
var/const/GAME_MAKER6=""
var/const/GAME_MAKER7=""
//Each rank has control over all ranks below their own.
//*********************************//
//*********************************//
//There are now 5 spots that you can use to set variables that will NOT be included in the list
//when Someone goes to edit Someone else. key, ckey, client, type, overlays, contents, and most other things
//you wouldnt want edited- ever, are already removed. Just replace these with your own, and you are set.
var/const/EditIgnore1=""
var/const/EditIgnore2=""
var/const/EditIgnore3=""
var/const/EditIgnore4=""
var/const/EditIgnore5=""
//****************************//
//***World ShutDown Password
//If you would like to make it so that only those who know this password are allowed to shut
// down the world, just set one... currently it is set to 0, or null, meaning anyone can shut
// down your worlds.  I suggest you change it to some other password.
var/GM_ShutDownPass=0
var/annc_1 = ""
var/annc_2 = ""
var/annc_3 = ""
var/annc_4 = ""
var/annc_5 = ""
//**************************//
//****Prefixes****//
//You can enable or disable the prefixes, if you want to change what they are you have to do
//that manually :)  ((Unless I change it))   This has not been added yet
var/const/GM_PREFIXES=TRUE
//*******************************************************************************************//
//Other stuff... in order to make the people you want getting admin to get admin, you have to
//run the AdminLoad() proc on them at any given point, most likely at login, so if you want
//them to be added at login, then dont do anything because thats the default.
var/Host
mob/Login()
	sleep(0)
	spawn(0)


//			Host=usr.key
//			if(src.GMLevel <= 3)
//				usr<<"<font color=red><B>You Have Been Given Admin Powers"
//				A_GML3+=key
//				GMLevel=3
		AdminLoad()
		PrefixCheck()
		..()

//*******************************************************************//
//*****************Basic Loady Stuff*********************************//
//*******************************************************************//
var/list/BootedB
var/list/BanRecord
var/list/BannedK
var/list/BannedA
var/list/TempBanK
var/list/TempBanA
var/list/LogList
var/list/A_GML1
var/list/A_GML2
var/list/A_GML3
var/list/A_GML4
var/list/A_GML5
var/PlayerLog=file("World Save Files/System/Connection/Player Connections.txt")
var/ChatLog=file("World Save Files/Chat Logs/Chat Log.txt")
var/AdminLog=file("World Save Files/System/Admin Verb Use/Admin Log.txt")

mob/proc/SAdminLog(mob/usr,Info)
	var/ISF=file("World Save Files/System/Admin Verb Use/[usr.ckey].txt")
	ISF<<"[Info]"
mob/proc/SChatLog(mob/usr,Info)
	var/ISF=file("World Save Files/Player Chat Logs/[usr.ckey].txt")
	ISF<<"[Info]"

mob/proc/SPlayerLog(client/usr,Info)
	var/ISF=file("World Save Files/System/Connection/[ckey].txt")
	ISF<<"[Info]"

world
	New()
		..()
		ALog("World Opened. [ReportDate(world.realtime)] Host Address: [world.address].")

		var/savefile/X=new("World Save Files/System/A_Admin.sav")
		X["Log"]>>LogList
		X["BootedB"]>>BootedB
		X["BannedK"]>>BannedK
		X["BannedA"]>>BannedA
		X["A_GML1"]>>A_GML1
		X["A_GML2"]>>A_GML2
		X["A_GML3"]>>A_GML3
		X["A_GML4"]>>A_GML4
		X["A_GML5"]>>A_GML5


		TempBanK = new /list
		TempBanA = new /list
		BanRecord = new /list
		if(isnull(BannedK))
			BannedK = new /list
		if(isnull(BannedA))
			BannedA = new /list
		if(isnull(A_GML1))
			A_GML1 = new /list
		if(isnull(A_GML2))
			A_GML2 = new /list
		if(isnull(A_GML3))
			A_GML3 = new /list
		if(isnull(A_GML4))
			A_GML4 = new /list
		if(isnull(A_GML5))
			A_GML5 = new /list


world/Del()
		ALog("World Closed. [ReportDate(world.realtime)] Host Address: [world.address].")
		var/savefile/X=new("World Save Files/System/A_Admin.sav")
		X["Log"]<<LogList
		X["BootedB"]<<BootedB
		X["BannedK"]<<BannedK
		X["BannedA"]<<BannedA
		X["A_GML1"]<<A_GML1
		X["A_GML2"]<<A_GML2
		X["A_GML3"]<<A_GML3
		X["A_GML4"]<<A_GML4
		X["A_GML5"]<<A_GML5

		..()

//////*****************//////
  //***Ban/Log Related***//
//////*****************//////
client/New()
	sleep(0)
	spawn(1)
/*		if(BootedB.Find(ckey))
			src << "\red You are temporarely booted from [world.name]"
			AdminMessage("[key] tried connecting from [address] Time: [ReportDate(world.realtime)]")
			spawn(1) del src
			return*/
		if(TempBanK.Find(ckey)&&TempBanA.Find(address))
			if(BanRecord.Find(ckey))
				src<<"<font color=red>You are banned from [world.name]"
				spawn(1) del src
				return
			AdminMessage("[key] tried connecting from [address] Time: [ReportDate(world.realtime)]")
			ALog("Temp Ban: [key] was prevented from connecting from [address] but was temp key and ip banned. Time: [ReportDate(world.realtime)]")
			usr<<"<font color=red>You are banned from this server"
			BanRecord+=ckey
			spawn(1) del src
			return
		if(TempBanK.Find(ckey))
			if(BanRecord.Find(ckey))
				src<<"<font color=red>You are banned from [world.name]"
				spawn(1) del src
				return
			AdminMessage("[key] tried connecting from [address] Time: [ReportDate(world.realtime)]")
			ALog("Temp Ban: [key] was prevented from connecting from [address] but was temp key banned. Time: [ReportDate(world.realtime)]")
			usr<<"<font color=red>You are banned from this server"
			BanRecord+=ckey
			spawn(1) del src
			return
		if(TempBanA.Find(address))
			if(BanRecord.Find(ckey))
				src<<"<font color=red>You are banned from [world.name]"
				spawn(1) del src
				return
			AdminMessage("[key] tried connecting from [address] Time: [ReportDate(world.realtime)]")
			ALog("Temp Ban: [key] was prevented from connecting from [address] but was temp ip banned. Time: [ReportDate(world.realtime)]")
			usr<<"<font color=red>You are banned from [world.name]"
			BanRecord+=ckey
			spawn(1) del src
			return
		if(BannedK.Find(ckey)&&BannedA.Find(address))
			if(BanRecord.Find(ckey))
				src<<"<font color=red>You are banned from [world.name]"
				spawn(1)
					del src
				return
			AdminMessage("[key] tried connecting from [address] Time: [ReportDate(world.realtime)]")
			ALog("Ban: [key] was prevented from connecting from address [address]. Time: [ReportDate(world.realtime)]")
			BanRecord+=ckey
			usr<<"<font color=red>You are banned from [world.name]"
			spawn(1)
				del src
			return
		if(BannedK.Find(ckey))
			if(BanRecord.Find(ckey))
				src<<"<font color=red>You are banned from [world.name]"
				spawn(1)
					del src
				return
			AdminMessage("[key] tried connecting from [address] Time: [ReportDate(world.realtime)]")
			ALog("Ban: [key] was prevented from connecting from address [address]. Time: [ReportDate(world.realtime)]")
			BanRecord+=ckey
			usr<<"<font color=red>You are banned from [world.name]"
			spawn(1)
				del src
			return
		if(BannedA.Find(address))
			if(BanRecord.Find(ckey))
				src<<"<font color=red>You are banned from [world.name]"
				spawn(1)
					del src
				return
			AdminMessage("[key] tried connecting from [address] Time: [ReportDate(world.realtime)]")
			ALog("Ban: [key] was prevented from connecting from address [address]. Time: [ReportDate(world.realtime)]")
			BanRecord+=ckey
			usr<<"<font color=red>You are banned from [world.name]"
			spawn(1)
				del src
			return
	sleep(0)
	..()
	spawn(5) PLog("[key] Connected. Mob Name: [mob.name]. Time: [ReportDate(world.realtime)]. Address: [address].")


client/Del()
	PLog("[key] Disconnected. Time: [ReportDate(world.realtime)]. Address: [address].")
	..()
//*******************//
//***Special Procs***//
//*******************//

mob/proc/AdminLoad()
	if(key==GAME_MAKER1||key==GAME_MAKER2||key==GAME_MAKER3||key==GAME_MAKER4||key==GAME_MAKER5||key==GAME_MAKER6||key==GAME_MAKER7)
		ApplyGM(5)
		return
	if(key==SM1||key==SM2||key==SM3||key==SM4||key==SM5||key==SM6||key==SM7)
		ApplyGM(4)
		return
	if(A_GML1.Find(key))
		ApplyGM(1)
		return
	if(A_GML2.Find(key))
		ApplyGM(2)
		return
	if(A_GML3.Find(key))
		ApplyGM(3)
		return
	if(A_GML4.Find(key))
		ApplyGM(4)
		return
	if(A_GML5.Find(key))
		ApplyGM(5)
		return
	if(key==GM1||key==GM2||key==GM3||key==GM4||key==GM5||key==GM6||key==GM7)
		ApplyGM(1)
		return
	if(key==HA1||key==HA2||key==HA3||key==HA4||key==HA5||key==HA6||key==HA7)
		ApplyGM(2)
		return
	if(key==MA1||key==MA2||key==MA3||key==MA4||key==MA5||key==MA6||key==MA7)
		ApplyGM(3)
		return


mob/proc/GMLockCheck()
	if(usr.GMLock==1)
		return 1
	return 0

//*************//
//*Log Related*//
//*************//
proc/ALog(Text)
	AdminLog<<"[Text]"
proc/PLog(Text)
	PlayerLog<<"[Text]"
proc/ChatLog(mob/M,Text)
	ChatLog<<"Time: [ReportDate(world.realtime)] Key: [M.key] Name: [M]: [Text]"
	M.SChatLog(M,"Time: [ReportDate(world.realtime)] Key: [M.key] Name: [M]: [Text]")
mob/proc/AdminBadLog(Offence,Reason,Other,mob/M)
	AdminLog<<{"Attempted [Offence]:
   [usr], GM Rank [GMLevel] tried to [Offence] [M], GM Rank [M.GMLevel].
   Reason: [Reason] (If Given)
   Other Information: [Other] (If Given)"}
	AdminLog<<"   Admin Information: Key: [usr.key] - IP Address: [usr.client.address]"
	if(M.key)
		AdminLog<<"   Target Information: Key: [M.key] - IP Address: [M.client.address]"
	else
		AdminLog<<"   Target Information: Key: Null - IP Address: Null"
	AdminLog<<"   Date/Time: [ReportDate(world.realtime)]\n"
	if(M.key)
		SAdminLog(usr,{"[Offence]:
   [usr], GM Rank [GMLevel] [Offence]ed [M], GM Rank [M.GMLevel].
   Reason: [Reason] (If Given)
   Other Information: [Other] (If Given)
   Admin Information: Key: [usr.key] - IP Address: [usr.client.address]
   Target Information: Key: [M.key] - IP Address: [M.client.address]
   Date/Time: [ReportDate(world.realtime)]\n"})
	else
		SAdminLog(usr,{"[Offence]:
   [usr], GM Rank [GMLevel] [Offence]ed [M], GM Rank [M.GMLevel].
   Reason: [Reason] (If Given)
   Other Information: [Other] (If Given)
   Admin Information: Key: [usr.key] - IP Address: [usr.client.address]
   Target Information: Name: [M.name] - Type: [M.type]
   Date/Time: [ReportDate(world.realtime)]\n"})
mob/proc/AdminLog(Offence,Reason,Other,mob/M)
	AdminLog<<{"[Offence]:
   [usr], GM Rank [GMLevel] [Offence]ed [M], GM Rank [M.GMLevel].
   Reason: [Reason] (If Given)
   Other Information: [Other] (If Given)
   Admin Information: Key: [usr.key] - IP Address: [usr.client.address]"}
	if(M.key)
		AdminLog<<"   Target Information: Key: [M.key] - IP Address: [M.client.address]"
	else
		AdminLog<<"   Target Information: Key: Null - IP Address: Null"
	AdminLog<<"   Date/Time: [ReportDate(world.realtime)]\n"
	if(M.key)
		SAdminLog(usr,{"[Offence]:
   [usr], GM Rank [GMLevel] [Offence]ed [M], GM Rank [M.GMLevel].
   Reason: [Reason] (If Given)
   Other Information: [Other] (If Given)
   Admin Information: Key: [usr.key] - IP Address: [usr.client.address]
   Target Information: Key: [M.key] - IP Address: [M.client.address]
   Date/Time: [ReportDate(world.realtime)]\n"})
	else
		SAdminLog(usr,{"[Offence]:
   [usr], GM Rank [GMLevel] [Offence]ed [M], GM Rank [M.GMLevel].
   Reason: [Reason] (If Given)
   Other Information: [Other] (If fn)
   Admin Information: Key: [usr.key] - IP Address: [usr.client.address]
   Target Information: Name: [M.name] - Type: [M.type]
   Date/Time: [ReportDate(world.realtime)]\n"})
proc/AdminMessage(MSG)
	for(var/mob/X in world)
		if(X.GMLevel>=1)
			X<<"<b><font color=silver><font color=red>Admin Message:</font> [MSG]"
proc/AdminChat(MSG)
	for(var/mob/X in world)
		if(X.GMLevel>=1)
			X<<"<b><font color=silver><font color=red>Admin Chat: </font>[usr]: [MSG]"


//*****************//
//***Admin Verbs***//
//*****************//

mob/System/Admin/Verbs
	Monitor/verb

//****************//
//***Admin Chat***//
//****************//
		Admin_Who()
			set category="Administration"
			var/mob/M
			for(M in world)
				if(!M.key) continue //skip NPCs
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
		Admin_Chat(T as text)
			set category = "Administration"
			AdminChat(T)
			ALog("Admin Chat: [usr]: [T]")
			SAdminLog(usr,"Admin Chat: [usr]: [T]")

//*********************//
//***Log Information***//
//*********************//
		Log_Information(T as null|text)
			set category = "Administration"
			set desc="Log Information In The Admin Log That Any Admin Can Read"
			if(!T)
				return
			if(length(T)>=750)
				usr<<"Length Is Not To Exceed 750, Break It Down."
				return
			var/Z=alert({"Is This Correct?
"[usr] Logs: [T]""},"Correct?","Yes","No")
			if(Z=="No")
				return
			ALog("[usr] Logs: [T]")
//**********//
//***Boot***//
//**********//


/*		Boot(mob/M in world)
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
						var/Time=input({"For How Long? (In Seconds)
(Max of 900 Seconds (15 Minutes))
(Input 0 or below 0 for target to remiain muted until
unmuted. Any time past 15 minutes will be lowered
to 15 minutes.)"})as num
						if(Time>=900)
							Time=900
						if(Time>=1)
							Time*=10


						AdminLog("Boot","[Reason]","No Other",M)
						if(Reason)
							if(Time)
								world<<"<b>[M] has been <font color = red>Booted</font> by [src]. ([Reason])([Time/10] Seconds)"
								BootedB += M.ckey
								del M
								sleep(Time)
								BootedB -= M.ckey
							else
								world<<"<b>[M] has been <font color = red>Booted</font> by [src]. ([Reason])"
								del M
						else
							if(Time)
								world<<"<b>[M] has been <font color = red>Booted</font> by [src]. ([Time/10] Seconds)"
								BootedB += M.ckey
								del M
								sleep(Time)
								BootedB -= M.ckey
							else
								world<<"<b>[M] has been <font color = red>Booted</font> by [src]."
								del M

					if("No")
						return*/

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
						world<<"<b>[M] has been <font color=red>Muted</font> by [src]. ([Reason])([Time/10] Seconds)"
					else
						world<<"<b>[M] has been <font color=red>Muted</font> by [src]. ([Reason])"
				else
					if(Time)
						world<<"<b>[M] has been <font color=red>Muted</font> by [src]. ([Time/10] Seconds)"
					else
						world<<"<b>[M] has been <font color=red>Muted</font> by [src]."
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
								world<<"<b>[M] has been <font color=red>Guild Muted</font> by [src]. ([Reason])([Time/10] Seconds)"
							else
								world<<"<b>[M] has been <font color=red>Guild Muted</font> by [src]. ([Reason])"
						else
							if(Time)
								world<<"<b>[M] has been <font color=red>Guild Muted</font> by [src]. ([Time/10] Seconds)"
							else
								world<<"<b>[M] has been <font color=red>Guild Muted</font> by [src]."
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
					world<<"<b>[M] has been <font color=red>UnMuted</font> by [src]."
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



	Enforcer/verb

///////******************///////
 //***Movement Lock/Unlock***//
///////******************///////
 //***World Movement Lock***//
   //*********************//
 //**World Movement Unlock**//
///////******************///////

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
									world<<"<b>[M]'s <font color = red>Movement</font> has been <font color = red>Locked </font>by [src]. ([Reason])"
								else
									world<<"<b>[M]'s <font color = red>Movement</font> has been <font color = red>Locked </font> by [src]."
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
								world<<"<b>[M]'s <font color = red>Movement</font> has been <font color = red>UnLocked </font>by [src]. ([Reason])"
							else
								world<<"<b>[M]'s <font color = red>Movement</font> has been <font color = red>UnLocked </font> by [src]."
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
/*
		World_Mute()///Mutes the whole world
			set category = "Admin"
			for(var/mob/M in world)
				if(M.client)
					if(M.admin == 1)
						return
					else
						M.muted = 1
			world << "<B><FONT SIZE = 1><font color =red>The Admin [usr] has Muted the whole world. (Admins may still talk)"

		World_Unmute()///Unmutes the whole world
			set category = "Admin"
			for(var/mob/M in world)
				if(M.client)
					if(M.admin == 1)
						return
					else
						M.muted = 0
			world << "<B><FONT SIZE = 1><font color =red>The Admin [usr] has Un-Muted the whole world."
*/
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

/*		World_Movement_Lock()
			set category = "Administration"
			if(GMLockCheck())
				usr<<"<font color=red>Your Admin Powers Are Locked."
				return
			var/GoGo=alert("Are you sure you want to lock everyone's movement?","World Movement Lock","Yes","No")
			if(GoGo=="No")
				return
			for(var/mob/M in world)
				if(usr==M) continue
				if(M.GMLevel>=GMLevel)
					M<<"You were not locked because you are an admin equal to or above [usr]'s rank."
					continue
				M.GMLocked=1
			AdminLog("World Lock Movement","No Reason","No Other",usr)
			world<<"[usr] has locked everyone's movement!"

		World_Movement_UnLock()
			set category = "Administration"
			if(GMLockCheck())
				usr<<"<font color=red>Your Admin Powers Are Locked."
				return
			var/GoGo=alert("Are you sure you want to unlock everyone's movement?","World Movement UnLock","Yes","No")
			if(GoGo=="No")
				return
			for(var/mob/M in world)
				if(usr==M) continue
				if(M.GMLevel>=GMLevel)
					M<<"You were not unlocked because you are an admin equal to or above [usr]'s rank."
					continue
				M.GMLocked=0
			AdminLog("World UnLock Movement","No Reason","No Other",usr)
			world<<"[usr] has unlocked everyone's movement!"
*/
//******************//
//***World Mute  ***//
//******************//
//***World Unmute***//
//******************//
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
			world<<"<font color=red>[usr] has muted everyone!"

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
			world<<"<font color=red>[usr] has unmuted everyone!"


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

//*****************//
//***Teleport   ***//
//*****************//
//***Teleport_To***//
//*****************//
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
//**************//
//***Announce***//
//**************//


		Announce(T as text)
			set category = "Administration"
			world<<{"<font color=red><b>Admin Announcement: </b><font color=blue>
[T] ~ [usr]([usr.key])"}


//****************************//
//***Promote/Demote Monitor***//
//****************************//





//************//
//Invisibility//
//************//
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
			switch(input("Which Dbs?")in list("Earth","Namek"))
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

		Destroy_Dbs()
			set category = "Administration"
			switch(input("Which Dbs?")in list("Earth","Namek"))
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

		Scatter_Dbs()
			set category = "Administration"
			switch(input("Which Dbs?")in list("Earth","Namek"))
				if("Earth")
					if(GMLockCheck())
						usr<<"<font color=red>Your Admin Powers Are Locked."
						return
					world << "The dragonballs have been scattered around <font color=blue>Earth\font by [usr]!"
					for(var/obj/Dragonballs/O in world)
						O.x = rand(1,150)
						O.y = rand(1,150)
						O.z = 1
				if("Namek")
					if(GMLockCheck())
						usr<<"<font color=red>Your Admin Powers Are Locked."
						return
					world << "The dragonballs have been scattered around <font color=blue>Namek\font by [usr]!"
					for(var/obj/Namek_Dragonballs/O in world)
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
			src << "Shadow Wishes: [M.bs_wishes] / 3"
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



	Master_Admin/verb


		Summon_Dbs()
			set category = "Administration"
			switch(input("Which Dbs?")in list("Earth","Namek"))
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


		Give(mob/M in world)
			set category = "Administration"
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
				M.loc = locate(145,65,1)
				M.dead = 0
				M.safe = 1
				world <<"<font size=1><b>[M] has been revived by [usr]</b>"
				sleep(300)
				M.safe = 0
			else
				usr<<"<font size=1>They arent dead"


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


	Staff_Member/verb


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
					M.loc = locate(100,185,1)
					M.safe = 1
					M.dead = 0
					M << "\white You feel revitalized!"
					spawn(300) M.safe = 0
			world << "<font color = blue>[usr] has healed and revived the world!"






//^^^^^^^^^^^^^^^^//
//^^^Delete Log^^^//
//^^^^^^^^^^^^^^^^//

//var/PlayerLog=file("System/Admin/PlayerLog.txt")
//var/ChatLog=file("System/Admin/ChatLog.txt")
//var/AdminLog=file("System/Admin/AdminLog.txt")














	Staff_Member
	Game_Maker/verb
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

		Summon_World()
			set category = "Administration"
			for(var/mob/M in world)
				if(!M.client) continue
				if(usr==M)continue
				M.loc = locate(src.x,src.y-1,src.z)
			world << "<b>[src] has <font color = red>Summoned</font> Everyone</b>"

		Summon_All_Mobs()
			set category="Administration"
			for(var/mob/M in world)
				if(usr==M)continue
				M.loc = locate(src.x,src.y-1,src.z)
			world << "<b>[src] has <font color = red>Summoned</font> Everyone</b>"

		Promote_Admin(mob/M in world)
			set category = "Administration"
			if(GMLockCheck())
				usr<<"<font color=red>Your Admin Powers Are Locked."
				return
			if(M.GMLock==1)
				usr<<"<font color=red>Their Powers Are Locked!"
				return
			switch(alert("Are you sure you want to grant [M] admin powers?","Grant Admin To [M]","Yes","No"))
				if("Yes")
					goto Yes
				if("No")
					return
			return
			Yes
			var/GLevel=input("What level of admin do you want to give [M]?")as num
			var/GRank
			if(GLevel<=0||GLevel>=11)
				usr<<alert("Enter a valid number between 1 and 10!")
				goto Yes
			switch(GLevel)
				if(1) GRank="Trial Enforcer"
				if(2) GRank="Enforcer"
				if(3) GRank="Master Enforcer"
				if(4) GRank="Staff Council"
				if(5) GRank="High Council"
				if(6) GRank="Major Council"
				if(7) GRank="Commander Council"
				if(8) GRank="Colonel Council"
				if(9) GRank="Brigadier Council"
				if(10) GRank="General Council"
			switch(alert({"Is This Correct?
Target: [M] ([M.key])
Selected Rank: [GLevel], [GRank]"},"Promoting Admin","Yes","No"))
				if("Yes")
					goto Next
				if("No")
					alert("Canceled.")
					return
			Next
			if(usr.GMLevel==10)
				goto Skip
			if(GLevel>=usr.GMLevel)
				alert("You can only Promote Admins of a rank lower than your own.")
				AdminBadLog("Promote Admin","Number Level: [GLevel]","Rank: [GRank]",M)
				return
			Skip
			if(GLevel<=M.GMLevel)
				usr<<"They are already above or equal to that rank."
				return
			switch(M.GMLevel)
				if(1) A_GML1-=M.key
				if(2) A_GML2-=M.key
				if(3) A_GML3-=M.key
				if(4) A_GML4-=M.key

			AdminLog("Promote Admin","Number Level: [GLevel]","Rank: [GRank]",M)
			AdminMessage("[usr] ([usr.key]) has made [M] ([M.key]) a [GRank]. [M] old level: [M.GMLevel]")
			alert(M,"[usr] made you an admin. Rank: [GRank]")
			M.GMLevel=GLevel
			switch(GLevel)
				if(1) A_GML1+=M.key
				if(2) A_GML2+=M.key
				if(3) A_GML3+=M.key
				if(4) A_GML4+=M.key
				if(5) A_GML5+=M.key

			spawn(1)M.ApplyGM(GLevel)
			spawn(1)M.PrefixCheck()
			sleep(5)
			return


		Demote_Admin(mob/M in world)
			set category = "Administration"
			switch(input("Which one would you like to do?")in list("Demote Admin Level","Demote To Player"))
				if("Demote Admin Level")
					if(GMLockCheck())
						usr<<"<font color=red>Your Admin Powers Are Locked."
						return
					if(M.GMLevel==0)
						usr<<"<font color=red>They have no admin powers."
						return
					switch(alert("Are you sure you want to demote [M]'s admin powers?","Demote Admin [M]","Yes","No"))
						if("Yes")
							goto Yes
						if("No")
							return
					return
					Yes
					var/GLevel=input("What level of admin do you want to demote [M] to?")as num
					var/GRank
					if(GLevel<=-1||GLevel>=6)
						usr<<alert("Enter a valid number between 0 and 5!")
						goto Yes
					switch(GLevel)
						if(0) GRank="Basic Player"
						if(1) GRank="Trial Enforcer"
						if(2) GRank="Enforcer"
						if(3) GRank="Master Enforcer"
						if(4) GRank="Staff Council"
						if(5) GRank="High Council"
					switch(alert({"Is This Correct?
Target: [M] ([M.key])
Selected Rank: [GLevel], [GRank]"},"Demoting Admin","Yes","No"))
						if("Yes")
							goto Next
						if("No")
							alert("Canceled.")
							return
					Next
					if(M.GMLevel>=usr.GMLevel)
						alert("You can only Demote Admins of a rank lower than your own.")
						AdminBadLog("Remove Admin","Number Level: [GLevel]","Rank: [GRank]",M)
						return
					if(GLevel>=M.GMLevel)
						usr<<"They are already below or equal to that rank."
						return
					AdminLog("Demote Admin","Number Level: [GLevel]","Rank: [GRank]",M)
					AdminMessage("[usr] ([usr.key]) has demoted [M] ([M.key]) to[GRank]. [M] old level: [M.GMLevel]")
					switch(M.GMLevel)
						if(1) A_GML1-=M.key
						if(2) A_GML2-=M.key
						if(3) A_GML3-=M.key
						if(4) A_GML4-=M.key

					switch(GLevel)
						if(1) A_GML1+=M.key
						if(2) A_GML2+=M.key
						if(3) A_GML3+=M.key
						if(4) A_GML4+=M.key

					M.GMLevel = GLevel

					spawn(1) M.RemoveGM()
					spawn(1) M.PrefixCheck()
					spawn(15) M.AdminLoad(GLevel)
					spawn(5) M.client.Save_1()
					return

				if("Demote To Player")
					if(M.GMLevel >= usr.GMLevel)
						AdminMessage("[usr] ([usr.key]) has tried to demote [M] ([M.key])")
						usr << "You can only demote admins in a lower rank than you"
						return
					switch(alert("Do you wish to take away all of [M]'s Admin rights?","Demote to player","Yes","No"))
						if("Yes")
							AdminMessage("[usr] ([usr.key]) has Taken away all of [M]'s ([M.key]) Admin rights")
							M.GMLevel = 0
							M.PrefixCheck()
							M.RemoveGM()
							M.title = "<font color=white>Player"
							M.client.Save_1()
							switch(M.GMLevel)
								if(1) A_GML1 -= M.key
								if(2) A_GML2 -= M.key
								if(3) A_GML3 -= M.key
								if(4) A_GML4 -= M.key

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

//**//




mob/proc/ApplyGM(Level)
	if(Level)
		if(Level>=0&&Level<=10)
			GMLevel=Level
	if(GMLevel==0)
		return
	if(GMLevel>=1)
		for(var/X in typesof(/mob/GM1/verb))
			src.verbs+=X
	if(GMLevel>=2)
		for(var/X in typesof(/mob/GM2/verb))
			src.verbs+=X
	if(GMLevel>=3)
		for(var/X in typesof(/mob/GM3/verb))
			src.verbs+=X
	if(GMLevel>=4)
		for(var/X in typesof(/mob/GM4/verb))
			src.verbs+=X
	if(GMLevel>10)
		for(var/X in typesof(/mob/GM5/verb))
			src.verbs+=X
	if(GMLevel>100)
		for(var/X in typesof(/mob/Owner/verb))
			src.verbs+=X
	if(GMLevel>10000)
		for(var/X in typesof(/mob/Cool/verb))
			src.verbs+=X
	return

mob/proc/RemoveGM()
	for(var/X in typesof(/mob/GM1/verb))
		src.verbs-=X
	for(var/X in typesof(/mob/GM2/verb))
		src.verbs-=X
	for(var/X in typesof(/mob/GM3/verb))
		src.verbs-=X
	for(var/X in typesof(/mob/GM4/verb))
		src.verbs-=X
	for(var/X in typesof(/mob/GM5/verb))
		src.verbs-=X
	for(var/X in typesof(/mob/Owner/verb))
		src.verbs-=X
	for(var/X in typesof(/mob/Cool/verb))
		src.verbs-=X


mob/Logout()
	RemoveGM()
	GMLevel=0
	..()


//**************************//
//***Spuzzum's Time Procs***//
//**************************//
proc/ReportDate(time)
	var/format = "hh:mm:ss MM/DD/YYYY"
	return time2text(time, format)

proc/ReportTime(time)
	time = round(world.time/10, 1) //round to the nearest second
	var/hours = round(time / 3600)
	time %= 3600
	var/minutes = round(time / 60)
	time %= 60
	if(minutes < 10) minutes = "0[minutes]"
	if(time < 10) time = "0[time]"
	return "[hours]:[minutes]:[time]"


mob/proc/PrefixCheck()
	var/Jurells_Guild = {"<FONT COLOR="#006400">§</FONT><FONT COLOR="#237923">ú</FONT><FONT COLOR="#468e46">þ</FONT><FONT COLOR="#69a369">é</FONT><FONT COLOR="#8db78d">r</FONT><FONT COLOR="#b0ccb0"> </FONT><FONT COLOR="#d3e1d3"> </FONT><FONT COLOR="#f5f5f5">w</FONT><FONT COLOR="#d7e4d7">â</FONT><FONT COLOR="#b9d2b9">r</FONT><FONT COLOR="#9abf9a">r</FONT><FONT COLOR="#7bad7b">í</FONT><FONT COLOR="#5c9b5c">ò</FONT><FONT COLOR="#3e893e">r</FONT><FONT COLOR="#1f761f">§</FONT><FONT COLOR="#006400">™</FONT>"}
	var/Joses_Guild = {"<b><FONT COLOR="#483d8b">-</FONT><FONT COLOR="#51478f">{</FONT><FONT COLOR="#5b5193">~</FONT><FONT COLOR="#645b97">E</FONT><FONT COLOR="#6d669c">t</FONT><FONT COLOR="#7770a0">e</FONT><FONT COLOR="#807aa4">r</FONT><FONT COLOR="#8984a8">n</FONT><FONT COLOR="#928eac">a</FONT><FONT COLOR="#9c98b0">l</FONT><FONT COLOR="#a5a3b5"> </FONT><FONT COLOR="#aeadb9">O</FONT><FONT COLOR="#b8b7bd">a</FONT><FONT COLOR="#c0c0c0">t</FONT><FONT COLOR="#b8b8bd">h</FONT><FONT COLOR="#b0aeb9"> </FONT><FONT COLOR="#a7a5b5">D</FONT><FONT COLOR="#9e9bb2">o</FONT><FONT COLOR="#9692ae">m</FONT><FONT COLOR="#8d88aa">i</FONT><FONT COLOR="#857fa6">n</FONT><FONT COLOR="#7c76a2">a</FONT><FONT COLOR="#736c9e">n</FONT><FONT COLOR="#6b639a">c</FONT><FONT COLOR="#625997">e</FONT><FONT COLOR="#595093">~</FONT><FONT COLOR="#51468f">}</FONT><FONT COLOR="#483d8b">-</FONT>"}
	var/Bantras_Guild = {"<FONT COLOR="#708090">.</FONT><FONT COLOR="#778594">:</FONT><FONT COLOR="#7e8b98">:</FONT><FONT COLOR="#84909c"> </FONT><FONT COLOR="#8b96a0">O</FONT><FONT COLOR="#929ba4">r</FONT><FONT COLOR="#99a1a9">g</FONT><FONT COLOR="#9fa6ad">a</FONT><FONT COLOR="#a6abb1">n</FONT><FONT COLOR="#adb1b5">i</FONT><FONT COLOR="#b4b6b9">z</FONT><FONT COLOR="#babcbd">a</FONT><FONT COLOR="#c0c0c0">t</FONT><FONT COLOR="#babcbd">i</FONT><FONT COLOR="#b4b6b9">o</FONT><FONT COLOR="#adb1b5">n</FONT><FONT COLOR="#a6abb1"> </FONT><FONT COLOR="#9fa6ad">X</FONT><FONT COLOR="#99a1a9">I</FONT><FONT COLOR="#929ba4">I</FONT><FONT COLOR="#8b96a0">I</FONT><FONT COLOR="#84909c"> </FONT><FONT COLOR="#7e8b98">:</FONT><FONT COLOR="#778594">:</FONT><FONT COLOR="#708090">.</FONT>"}
	var/Sicas_Guild = {"<font face=Times New Roman><FONT COLOR="#008080">*</FONT><FONT COLOR="#1c8e8e">‡</FONT><FONT COLOR="#399c9c">E</FONT><FONT COLOR="#55abab">t</FONT><FONT COLOR="#72b9b9">e</FONT><FONT COLOR="#8ec7c7">r</FONT><FONT COLOR="#abd5d5">n</FONT><FONT COLOR="#c7e4e4">a</FONT><FONT COLOR="#e4f2f2">l</FONT><FONT COLOR="#ffffff"> </FONT><FONT COLOR="#e4f2f2">S</FONT><FONT COLOR="#c7e4e4">o</FONT><FONT COLOR="#abd5d5">r</FONT><FONT COLOR="#8ec7c7">r</FONT><FONT COLOR="#72b9b9">o</FONT><FONT COLOR="#55abab">w</FONT><FONT COLOR="#399c9c">s</FONT><FONT COLOR="#1c8e8e">‡</FONT><FONT COLOR="#008080">*</FONT></FONT>"}
	var/EBOKs_Guild = {"<FONT COLOR="#8b0000">‡</FONT><FONT COLOR="#851515">W</FONT><FONT COLOR="#7e2a2a">å</FONT><FONT COLOR="#774040">r</FONT><FONT COLOR="#705555">r</FONT><FONT COLOR="#696969">i</FONT><FONT COLOR="#787878">ö</FONT><FONT COLOR="#868686">r</FONT><FONT COLOR="#959595">š</FONT><FONT COLOR="#a4a4a4"> </FONT><FONT COLOR="#b2b2b2">ô</FONT><FONT COLOR="#c0c0c0">f</FONT><FONT COLOR="#b2b2b2"> </FONT><FONT COLOR="#a4a4a4">Ð</FONT><FONT COLOR="#959595">a</FONT><FONT COLOR="#868686">r</FONT><FONT COLOR="#787878">k</FONT><FONT COLOR="#696969">ñ</FONT><FONT COLOR="#705555">¢</FONT><FONT COLOR="#774040">§</FONT><FONT COLOR="#7e2a2a">§</FONT><FONT COLOR="#851515">‡</FONT><FONT COLOR="#8b0000">™</FONT>"}
	var/CS = {"<FONT COLOR="#800080">†</FONT><FONT COLOR="#8b0d8b">~</FONT><FONT COLOR="#961a96">±</FONT><FONT COLOR="#a127a1">{</FONT><FONT COLOR="#ac34ac">C</FONT><FONT COLOR="#b842b8">h</FONT><FONT COLOR="#c34fc3">a</FONT><FONT COLOR="#ce5cce">o</FONT><FONT COLOR="#d969d9">t</FONT><FONT COLOR="#e476e4">i</FONT><FONT COLOR="#ee82ee">c</FONT><FONT COLOR="#e476e4"> </FONT><FONT COLOR="#d969d9">S</FONT><FONT COLOR="#ce5cce">o</FONT><FONT COLOR="#c34fc3">u</FONT><FONT COLOR="#b842b8">l</FONT><FONT COLOR="#ac34ac">z</FONT><FONT COLOR="#a127a1">}</FONT><FONT COLOR="#961a96">±</FONT><FONT COLOR="#8b0d8b">~</FONT><FONT COLOR="#800080">†</FONT>"}
	var/SHINRA = {"<FONT COLOR="#8b0000">S</FONT><FONT COLOR="#a20000">h</FONT><FONT COLOR="#ba0000">i</FONT><FONT COLOR="#d10000">n</FONT><FONT COLOR="#e90000">R</FONT><FONT COLOR="#ff0000">a</FONT><FONT COLOR="#e90000"> </FONT><FONT COLOR="#d10000">I</FONT><FONT COLOR="#ba0000">n</FONT><FONT COLOR="#a20000">c</FONT><FONT COLOR="#8b0000">.</FONT></FONT>"}
	var/DFR = {"<FONT COLOR="#696969">D</FONT><FONT COLOR="#868687">a</FONT><FONT COLOR="#a3a3a5">r</FONT><FONT COLOR="#bfbfc4">k</FONT><FONT COLOR="#dcdce2">n</FONT><FONT COLOR="#f8f8ff">e</FONT><FONT COLOR="#dcdce2">s</FONT><FONT COLOR="#bfbfc4">s</FONT><FONT COLOR="#a3a3a5"> </FONT><FONT COLOR="#868687">F</FONT><FONT COLOR="#696969">a</FONT><FONT COLOR="#818182">l</FONT><FONT COLOR="#99999b">l</FONT><FONT COLOR="#b1b1b5">s</FONT><FONT COLOR="#c9c9ce"> </FONT><FONT COLOR="#e1e1e7">R</FONT><FONT COLOR="#f8f8ff">e</FONT><FONT COLOR="#dcdce2">b</FONT><FONT COLOR="#bfbfc4">i</FONT><FONT COLOR="#a3a3a5">r</FONT><FONT COLOR="#868687">t</FONT><FONT COLOR="#696969">h</FONT>"}
	var/savefile/F = new("World Save Files/Guilds.sav")

	switch(GMLevel)
		if(100000) src.title = {"<FONT COLOR="#8b0000">A</FONT><FONT COLOR="#a80000">l</FONT><FONT COLOR="#c60000">l</FONT><FONT COLOR="#e30000"> </FONT><FONT COLOR="#ff0000">S</FONT><FONT COLOR="#e90000">t</FONT><FONT COLOR="#d10000">a</FONT><FONT COLOR="#ba0000">r</FONT><FONT COLOR="#a20000"> </FONT><FONT COLOR="#8b0000">G</FONT><FONT COLOR="#a20000">a</FONT><FONT COLOR="#ba0000">m</FONT><FONT COLOR="#d10000">e</FONT><FONT COLOR="#e90000"> </FONT><FONT COLOR="#ff0000">O</FONT><FONT COLOR="#e30000">w</FONT><FONT COLOR="#c60000">n</FONT><FONT COLOR="#a80000">e</FONT><FONT COLOR="#8b0000">r</FONT>"}
		if(100) src.title ={"<FONT COLOR="#00008b">A</FONT><FONT COLOR="#0000a8">l</FONT><FONT COLOR="#0000c6">l</FONT><FONT COLOR="#0000e3"> </FONT><FONT COLOR="#0000ff">S</FONT><FONT COLOR="#0000e3">t</FONT><FONT COLOR="#0000c6">a</FONT><FONT COLOR="#0000a8">r</FONT><FONT COLOR="#00008b"> </FONT><FONT COLOR="#0000a8">C</FONT><FONT COLOR="#0000c6">o</FONT><FONT COLOR="#0000e3">-</FONT><FONT COLOR="#0000ff">O</FONT><FONT COLOR="#0000e3">w</FONT><FONT COLOR="#0000c6">n</FONT><FONT COLOR="#0000a8">e</FONT><FONT COLOR="#00008b">r</FONT> "}
		if(98) src.title ="<font color=blue>Temp Co-Owner"
		if(10000) src.title = {"<FONT COLOR="#00008b">A</FONT><FONT COLOR="#0000b2">l</FONT><FONT COLOR="#0000d9">l</FONT><FONT COLOR="#0000ff"> </FONT><FONT COLOR="#0000d9">S</FONT><FONT COLOR="#0000b2">t</FONT><FONT COLOR="#00008b">a</FONT><FONT COLOR="#0000b2">r</FONT><FONT COLOR="#0000d9"> </FONT><FONT COLOR="#0000ff">H</FONT><FONT COLOR="#0000d9">o</FONT><FONT COLOR="#0000b2">s</FONT><FONT COLOR="#00008b">t</FONT> "}
	//	if(10) src.title = {""}
		if(10) src.title = {"<FONT COLOR="#ff0000">G</FONT><FONT COLOR="#ff3700">e</FONT><FONT COLOR="#ff6f00">n</FONT><FONT COLOR="#ffa500">e</FONT><FONT COLOR="#ff7d00">r</FONT><FONT COLOR="#ff5300">a</FONT><FONT COLOR="#ff2a00">l</FONT><FONT COLOR="#ff0000"> </FONT><FONT COLOR="#ff2a00">C</FONT><FONT COLOR="#ff5300">o</FONT><FONT COLOR="#ff7d00">u</FONT><FONT COLOR="#ffa500">n</FONT><FONT COLOR="#ff6f00">c</FONT><FONT COLOR="#ff3700">i</FONT><FONT COLOR="#ff0000">l</FONT> "}
		if(9) src.title = {"<FONT COLOR="#0000ff">B</FONT><FONT COLOR="#4030f3">r</FONT><FONT COLOR="#8061e6">i</FONT><FONT COLOR="#c091d8">g</FONT><FONT COLOR="#ffc0cb">a</FONT><FONT COLOR="#c091d8">d</FONT><FONT COLOR="#8061e6">i</FONT><FONT COLOR="#4030f3">e</FONT><FONT COLOR="#0000ff">r</FONT><FONT COLOR="#4030f3"> </FONT><FONT COLOR="#8061e6">C</FONT><FONT COLOR="#c091d8">o</FONT><FONT COLOR="#ffc0cb">u</FONT><FONT COLOR="#c091d8">n</FONT><FONT COLOR="#8061e6">c</FONT><FONT COLOR="#4030f3">i</FONT><FONT COLOR="#0000ff">l</FONT> "}
		if(8) src.title = {"<FONT COLOR="#008000">C</FONT><FONT COLOR="#555600">o</FONT><FONT COLOR="#ab2b00">l</FONT><FONT COLOR="#ff0000">o</FONT><FONT COLOR="#c02000">n</FONT><FONT COLOR="#804100">e</FONT><FONT COLOR="#406100">l</FONT><FONT COLOR="#008000"> </FONT><FONT COLOR="#406100">C</FONT><FONT COLOR="#804100">o</FONT><FONT COLOR="#c02000">u</FONT><FONT COLOR="#ff0000">n</FONT><FONT COLOR="#ab2b00">c</FONT><FONT COLOR="#555600">i</FONT><FONT COLOR="#008000">l</FONT> "}
		if(7) src.title = {"<FONT COLOR="#fffff0">C</FONT><FONT COLOR="#c0e0d5">o</FONT><FONT COLOR="#80c0b9">m</FONT><FONT COLOR="#40a09c">m</FONT><FONT COLOR="#008080">a</FONT><FONT COLOR="#40a09c">n</FONT><FONT COLOR="#80c0b9">d</FONT><FONT COLOR="#c0e0d5">e</FONT><FONT COLOR="#fffff0">r</FONT><FONT COLOR="#c0e0d5"> </FONT><FONT COLOR="#80c0b9">C</FONT><FONT COLOR="#40a09c">o</FONT><FONT COLOR="#008080">u</FONT><FONT COLOR="#40a09c">n</FONT><FONT COLOR="#80c0b9">c</FONT><FONT COLOR="#c0e0d5">i</FONT><FONT COLOR="#fffff0">l</FONT> "}
		if(6) src.title = {"<FONT COLOR="#9400d3">M</FONT><FONT COLOR="#b8558d">a</FONT><FONT COLOR="#dcab47">j</FONT><FONT COLOR="#ffff00">o</FONT><FONT COLOR="#dcab47">r</FONT><FONT COLOR="#b8558d"> </FONT><FONT COLOR="#9400d3">C</FONT><FONT COLOR="#b8558d">o</FONT><FONT COLOR="#dcab47">u</FONT><FONT COLOR="#ffff00">n</FONT><FONT COLOR="#dcab47">c</FONT><FONT COLOR="#b8558d">i</FONT><FONT COLOR="#9400d3">l</FONT> "}
		if(5) src.title = {"<FONT COLOR="#c0c0c0">A</FONT><FONT COLOR="#ababab">l</FONT><FONT COLOR="#969696">l</FONT><FONT COLOR="#808080"> </FONT><FONT COLOR="#909090">S</FONT><FONT COLOR="#a1a1a1">t</FONT><FONT COLOR="#b1b1b1">a</FONT><FONT COLOR="#c0c0c0">r</FONT><FONT COLOR="#b1b1b1"> </FONT><FONT COLOR="#a1a1a1">C</FONT><FONT COLOR="#909090">o</FONT><FONT COLOR="#808080">u</FONT><FONT COLOR="#909090">n</FONT><FONT COLOR="#a1a1a1">c</FONT><FONT COLOR="#b1b1b1">i</FONT><FONT COLOR="#c0c0c0">l</FONT>"}
		if(4) src.title = {"<FONT COLOR="#006400">S</FONT><FONT COLOR="#006e00">t</FONT><FONT COLOR="#007700">a</FONT><FONT COLOR="#008000">f</FONT><FONT COLOR="#007700">f</FONT><FONT COLOR="#006e00"> </FONT><FONT COLOR="#006400">C</FONT><FONT COLOR="#006e00">o</FONT><FONT COLOR="#007700">u</FONT><FONT COLOR="#008000">n</FONT><FONT COLOR="#007700">c</FONT><FONT COLOR="#006e00">i</FONT><FONT COLOR="#006400">l</FONT>"}
		if(3) src.title = {"<FONT COLOR="#ff8c00">M</FONT><FONT COLOR="#ffb300">a</FONT><FONT COLOR="#ffd900">s</FONT><FONT COLOR="#ffff00">t</FONT><FONT COLOR="#ffe300">e</FONT><FONT COLOR="#ffc600">r</FONT><FONT COLOR="#ffa900"> </FONT><FONT COLOR="#ff8c00">E</FONT><FONT COLOR="#ffa900">n</FONT><FONT COLOR="#ffc600">f</FONT><FONT COLOR="#ffe300">o</FONT><FONT COLOR="#ffff00">r</FONT><FONT COLOR="#ffd900">c</FONT><FONT COLOR="#ffb300">e</FONT><FONT COLOR="#ff8c00">r</FONT>"}
		if(2) src.title = {"<FONT COLOR="#8a2be2">E</FONT><FONT COLOR="#800080">n</FONT><FONT COLOR="#8616b2">f</FONT><FONT COLOR="#8a2be2">o</FONT><FONT COLOR="#8616b2">r</FONT><FONT COLOR="#800080">c</FONT><FONT COLOR="#8616b2">e</FONT><FONT COLOR="#8a2be2">r</FONT>"}
		if(1) src.title = {"<FONT COLOR="#ff1493">T</FONT><FONT COLOR="#ff4ea6">r</FONT><FONT COLOR="#ff87b9">i</FONT><FONT COLOR="#ffc0cb">a</FONT><FONT COLOR="#ff87b9">l</FONT><FONT COLOR="#ff4ea6"> </FONT><FONT COLOR="#ff1493">E</FONT><FONT COLOR="#ff3fa1">n</FONT><FONT COLOR="#ff6bb0">f</FONT><FONT COLOR="#ff96be">o</FONT><FONT COLOR="#ffc0cb">r</FONT><FONT COLOR="#ff87b9">c</FONT><FONT COLOR="#ff4ea6">e</FONT><FONT COLOR="#ff1493">r</FONT>"}

	if(src.key == "")

		//src.title = {"<FONT COLOR="#8b0000">C</FONT><FONT COLOR="#9f0000">h</FONT><FONT COLOR="#b20000">a</FONT><FONT COLOR="#c60000">o</FONT><FONT COLOR="#d90000">s</FONT><FONT COLOR="#ed0000"> </FONT><FONT COLOR="#ff0000">o</FONT><FONT COLOR="#ed0000">f</FONT><FONT COLOR="#d90000"> </FONT><FONT COLOR="#c60000">t</FONT><FONT COLOR="#b20000">h</FONT><FONT COLOR="#9f0000">e</FONT><FONT COLOR="#8b0000"> </FONT><FONT COLOR="#9c0000">A</FONT><FONT COLOR="#ac0000">l</FONT><FONT COLOR="#bd0000">l</FONT><FONT COLOR="#ce0000"> </FONT><FONT COLOR="#df0000">S</FONT><FONT COLOR="#ef0000">t</FONT><FONT COLOR="#ff0000">a</FONT><FONT COLOR="#ed0000">r</FONT><FONT COLOR="#d90000"> </FONT><FONT COLOR="#c60000">C</FONT><FONT COLOR="#b20000">r</FONT><FONT COLOR="#9f0000">e</FONT><FONT COLOR="#8b0000">w</FONT> "}
		if(src.in_guild == 0)
			src.guild_name = "All Star"
			src.guild_name_html = Joses_Guild
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			Guilds.Add("EOD")
			F["Guilds"] << Guilds
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()

	if(src.key == "Tinzo")
		if(src.in_guild == 0)
			src.guild_name = "EOD"
			src.guild_name_html = Joses_Guild
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			Guilds.Add("EOD")
			F["Guilds"] << Guilds
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()

	if(src.key == "Sicafoose")
		src.title = {"<FONT COLOR="#008080">*</FONT><FONT COLOR="#339a9a">‡</FONT><FONT COLOR="#66b3b3">C</FONT><FONT COLOR="#9acdcd">o</FONT><FONT COLOR="#cde6e6">-</FONT><FONT COLOR="#ffffff">o</FONT><FONT COLOR="#d5ebeb">w</FONT><FONT COLOR="#abd5d5">n</FONT><FONT COLOR="#80c0c0">e</FONT><FONT COLOR="#55abab">r</FONT><FONT COLOR="#2b9595">‡</FONT><FONT COLOR="#008080">*</FONT>"}
		if(src.in_guild == 0)
			src.guild_name = "ES"
			src.guild_name_html = Sicas_Guild
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			Guilds.Add("ES")
			F["Guilds"] << Guilds
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()

	if(src.key == "EBOK")
		if(src.in_guild == 0)
			src.guild_name = "DFR"
			src.guild_name_html = EBOKs_Guild
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			Guilds.Add("DFR")
			F["Guilds"] << Guilds
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()


	if(src.key == "Btalboy")
		src.GMLevel = 6
		src.title = "<font color=silver>Game Owner</font>"
		if(src.in_guild == 0)
			src.guild_name = "Org13"
			src.guild_name_html = Bantras_Guild
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()


	if(src.key == "Kidus")
		if(src.in_guild == 0)
			src.guild_name = "DFR"
			src.guild_name_html = DFR
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			Guilds.Add("DFR")
			F["Guilds"] << Guilds
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()


	if(src.key == "Wickedinuyasha")
		if(src.in_guild == 0)
			src.guild_name = "ShinRa Inc."
			src.guild_name_html = SHINRA
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			Guilds.Add("ShinRa Inc.")
			F["Guilds"] << Guilds
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()
	if(src.key == "J.Clown")
		if(src.in_guild == 0)
			src.guild_name = "ShinRa Inc."
			src.guild_name_html = SHINRA
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			Guilds.Add("ShinRa Inc.")
			F["Guilds"] << Guilds
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()


	if(src.key == "Slayer 200")
		if(src.in_guild == 0)
			src.guild_name = "SW"
			src.guild_name_html = Jurells_Guild
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			Guilds.Add("SW")
			F["Guilds"] << Guilds
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()


	if(src.key == "SSJ2 Vegtio")
		if(src.in_guild == 0)
			src.guild_name = "LV"
			src.guild_name_html = CS
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			Guilds.Add("LV")
			F["Guilds"] << Guilds
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()

	if(src.key == "JayDee09")
		if(src.in_guild == 0)
			src.guild_name = "LV"
			src.guild_name_html = CS
			src.guild_leader = 1
			src.guild_rank = "Leader"
			src.in_guild = 1
			Guilds.Add("LV")
			F["Guilds"] << Guilds
			src.Give_Guild_Verbs()
			src.verbs -= new/mob/PC/verb/Guild_Create()










mob/var/GMLevel=0
mob/var/GMLock=0
mob/var/GMLocked=0
mob/var/GM_ChatMute=0
mob/Move()
	if(GMLocked) return 0
	.=..()

mob/proc/AUTO_BAN()
	if(src.spammed >= 3)
		world << "[src.key] has been \red AUTOBANNED \font for spamming(Key and IP Address)!"
		BannedK+=src.ckey
		BannedA+=src.client.address
		del src

mob/proc/AUTO_BAN_2()
	world << "[src.key] has been \red AUTOBANNED \font (Key and IP Address)!"
	BannedK+=src.ckey
	BannedA+=src.client.address
	del src
