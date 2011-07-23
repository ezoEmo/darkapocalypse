#define DEBUG

var
	players = 0
	max_players = 125
	player_limit_on = 0

world
	hub_password = "Pikachu"
	view = 7
	version = 1.3
	loop_checks = 0
	mob = /mob/Guest
	name = "Dragonball z Dark Apocalypse"
	status = "<B><font size = -2><font color = red>Dragonball z Dark Apocalypse</font> <font color = green>{Final Version 5}</font>"
	hub = "AllStarBANG.Dragonballzdarkapocalypse"

	New()
		..()
		spawn(150) REPOP()
		spawn(150) SAGA_CHECK()
		spawn(150) dragonball_loader()
		spawn(150) dragonball_loadern()
		spawn(150) dragonball_loaderbs()
		spawn(150) UPDATE_PLAYERS()

proc/status_change()
	if(player_limit_on)
		world.status = "<font size = -2><br><B>Dbz Dark Apocalypse</b><br><b>Players Online:</b> [players]/[max_players]<br><b>Version:</b> 5<br><b>Host:</b> [Host]"
	else
		world.status = "<font size = -2><br><B>Dbz Dark Apocalypse</b><br><b>Players Online:</b> [players]<br><b>Version:</b> 5<br><b>Host:</b> [Host]"


var/login_attempts = 0



proc
	UPDATE_PLAYERS()
		players = 0
		for(var/mob/PC/C)
			if(C.client)
				players += 1
		status_change()
		player_rules_spawn()
		spawn(300) UPDATE_PLAYERS()

proc/REPOP()
	world.Repop()

	for(var/obj/Kamehameha/O in world)
		del(O)

	for(var/obj/Distructo_Disk/O2 in world)
		del(O2)

	for(var/obj/Fat_Wrap/O3 in world)
		del(O3)

	for(var/obj/Ki_Blast/O4 in world)
		del(O4)

	for(var/obj/Saibaman_Corpse/O5 in world)
		del(O5)

	for(var/obj/Demon_Ki_Blast/O6 in world)
		del(O6)

	for(var/obj/CH_Distructo_Disk/O7 in world)
		del(O7)

	for(var/obj/big_bang/O8 in world)
		del(O8)

	for(var/obj/burning_attack/O9 in world)
		del(O9)

//	for(var/obj/masenko/O10 in world)
//		del(O10)

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

	for(var/obj/dodon_ray/O18 in world)
		del(O18)

	for(var/obj/AB/O19 in world)
		del(O19)

	for(var/obj/Big_Bang_Kamehameha_Blast/O20 in world)
		del(O20)

	for(var/obj/Big_Bang_Kamehameha_X100_Blast/O21 in world)
		del(O21)

	for(var/obj/GT1/O22 in world)
		del(O22)

	for(var/obj/Sword/O23 in world)
		del(O23)

	for(var/obj/BS/O24 in world)
		del(O24)

	for(var/obj/www3/O25 in world)
		del(O25)

	for(var/obj/Chaos_Demon_Ki_Blast/O26 in world)
		del(O26)

	for(var/obj/Cuo12/O27 in world)
		del(O27)


	for(var/obj/Cuo1/O28 in world)
		del(O28)

	for(var/obj/Eraser_Cannon_Blast/O29 in world)
		del(O29)

	for(var/obj/FC/O30 in world)
		del(O30)

	for(var/obj/Final_Kamehameha_Blast/O31 in world)
		del(O31)

	for(var/obj/FS/O32 in world)
		del(O32)

	for(var/obj/FSC/O33 in world)
		del(O33)

	for(var/obj/Cuo/O34 in world)
		del(O34)

	for(var/obj/FPEB/O35 in world)
		del(O35)

	for(var/obj/FPEW/O36 in world)
		del(O36)
	for(var/obj/www5/O37 in world)
		del(O37)
	for(var/obj/GB/O38 in world)
		del(O38)
	for(var/obj/Good_Demon_Ki_Blast/O39 in world)
		del(O39)
	for(var/obj/GT/O40 in world)
		del(O40)
	for(var/obj/C7/O41 in world)
		del(O41)
	for(var/obj/Cst/O42 in world)
		del(O42)
	for(var/obj/www/O43 in world)
		del(O43)
	for(var/obj/ww/O44 in world)
		del(O44)
	for(var/obj/tes/O45 in world)
		del(O45)
	for(var/obj/Cannon/O46 in world)
		del(O46)
	for(var/obj/GT/O47 in world)
		del(O47)
	for(var/obj/www6/O48 in world)
		del(O48)
	for(var/obj/GT3/O49 in world)
		del(O49)
	for(var/obj/TS/O50 in world)
		del(O50)
	for(var/obj/www1/O51 in world)
		del(O51)
	for(var/obj/Dragon_Fist/O52 in world)
		del(O52)
	for(var/obj/FSKamehameha/O53 in world)
		del(O53)
	for(var/obj/acid/O54 in world)
		del(O54)
	for(var/obj/hyper_tornado/O55 in world)
		del(O55)
	for(var/obj/dimension_shatter/O56 in world)
		del(O56)
	for(var/obj/hell_impact/O57 in world)
		del(O57)
	for(var/obj/ki_catalyst/O58 in world)
		del(O58)
	for(var/obj/kill_driver/O59 in world)
		del(O59)
	for(var/obj/Static_Shot/O60 in world)
		del(O60)
	for(var/obj/vile_energy/O61 in world)
		del(O61)
	for(var/obj/x100_kame/O62 in world)
		del(O62)
	for(var/obj/x1000_kame/O63 in world)
		del(O63)
	for(var/obj/Super_Dark_Chaotic_Wave_Blast/O64 in world)
		del(O64)
	for(var/obj/Super_Kalo_Ken_Kamehameha_Blast/O65 in world)
		del(O65)
	for(var/obj/Super_Mystic_Bomb_Blast/O67 in world)
		del(O67)

	spawn(600) REPOP()




client
	script = "<STYLE>BODY {background: black; color: #999999;font-size: -2;font-weight: bold;font-family:arial}</STYLE>"
	perspective = EDGE_PERSPECTIVE


	New()
		if(player_limit_on)
			if(players >= max_players)
				if(src.ckey!="darkerlegends")
					src << "<B><font color = red>Sorry, the Server has reached the Maximum Player Count. Please try again Later."
					sleep(7)
					del(src)
			else
				players += 1
				status_change()
				..()
		else
			players += 1
			status_change()
			..()

	Del()
		if(istype(src.mob, /mob/Guest))
			players -= 1
			return ..()

		src.Save_1()
		world << "<font color = red>Dark Apocalypse Information: <font color = white>[src] has left the server."
		players -= 1
		status_change()
		sleep(5)
		return ..()
		.=..()

