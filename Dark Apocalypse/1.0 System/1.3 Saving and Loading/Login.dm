mob/PC/Login()
	src.loc = locate(145,60,1)
//	spawn(5) src << browse('http://z3.invisionfree.com/DBRR/index.php?act=idx')

	//--- Fixes
/*	if(src.hud)
		src.AddHUD()
	src.client.view = 7	*/
	new/obj/edge2(src.client)
	new/obj/edge3(src.client)
	new/obj/edge4(src.client)
	new/obj/edge5(src.client)
	new/obj/edge6(src.client)
	new/obj/edge7(src.client)
	new/obj/edge8(src.client)
	new/obj/edge9(src.client)
	new/obj/edge10(src.client)
	new/obj/edge11(src.client)
	new/obj/edge12(src.client)
	new/obj/edge13(src.client)
	new/obj/edge14(src.client)
	new/obj/edge15(src.client)
	new/obj/edge16(src.client)
	new/obj/edge17(src.client)
	new/obj/edge18(src.client)
	new/obj/edge19(src.client)
	new/obj/edge20(src.client)
	new/obj/edge21(src.client)
	new/obj/edge22(src.client)
	new/obj/edge23(src.client)
	new/obj/edge24(src.client)
	new/obj/edge25(src.client)
	new/obj/edge26(src.client)
	new/obj/edge27(src.client)
	new/obj/edge28(src.client)
	new/obj/edge30(src.client)
	new/obj/edge31(src.client)
	new/obj/edge32(src.client)
	new/obj/edge33(src.client)
	new/obj/edge34(src.client)
	new/obj/edge35(src.client)
	new/obj/edge36(src.client)
	new/obj/edge37(src.client)
	new/obj/edge38(src.client)
	new/obj/edge39(src.client)
	new/obj/edge40(src.client)
	new/obj/edge41(src.client)
	new/obj/edge42(src.client)
	new/obj/edge43(src.client)
	new/obj/edge44(src.client)
	new/obj/edge45(src.client)
	new/obj/edge46(src.client)
	new/obj/edge47(src.client)
	new/obj/edge48(src.client)
	new/obj/edge49(src.client)
	new/obj/edge50(src.client)
	new/obj/edge51(src.client)
	new/obj/edge52(src.client)
	new/obj/edge53(src.client)
	new/obj/edge54(src.client)
	new/obj/edge55(src.client)
	new/obj/edge56(src.client)
	new/obj/edge57(src.client)
	new/obj/edge58(src.client)
	new/obj/Bar1(src.client)
	new/obj/Bar2(src.client)
	new/obj/Bar3(src.client)
	new/obj/Bar4(src.client)
	new/obj/hudMeters/health_01(src.client)
	new/obj/hudMeters/health_02(src.client)
	new/obj/hudMeters/health_03(src.client)
	new/obj/kimeters/ki_01(src.client)
	new/obj/kimeters/ki_02(src.client)
	new/obj/kimeters/ki_03(src.client)
	new/obj/expmeters/exp_01(src.client)
	new/obj/expmeters/exp_02(src.client)
	new/obj/expmeters/exp_03(src.client)
	new/obj/expmeters/exp_04(src.client)
	src.updateHealth()
	src.updateki()
	src.updateexp()


	src.speeding = 0
	src.frozen = 0
	src.afk_time = 0
	src.icon_state = ""
	src.sight &= ~BLIND
	src.dualtrain = 0
	src.sim_delay = 0
	src.who_delay = 0
	src.power_delay = 0
	src.arenab 	= 0

	src.waiting = 0
	src.rest_delay = 0
	src.finish_delay = 0
	src.cooldown = 0
	src.grav_on = 0
	src.grav_delay = 0
	src.grav_popup = 0
	src.geno_lock = 0
	src.Rball_lock = 0
	src.hzg_lock = 0
	src.cell_jrs = 0
	src.splits = 0
	src.grav = 0
	src.doing = 0
	src.safe = 0
	src.going = 0

	src.say_delay = 0
	src.adminsay_delay = 0
	src.admin_muted = 0

	src.buku = 0
	src.boxing = 0
	src.meditate = 0

	src.rest = 0
	src.ki_lock = 0
	src.attack_lock = 0
	src.donut_wrapped = 0
	src.wrapped = 0
	src.stone_form = 0
	src.spit_locked = 0
	if(!src.dead)
		src.overlays -= halo
		src.it_lock = 0
	else
		if(src.z == 1)
			src.loc = locate(55,6,3)

	player_rules_spawn()

	if(client.IsByondMember())
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
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
		src.verbs += new/mob/learn/verb/Father_Son_Kamehameha
		src.verbs += new/mob/learn/verb/Dragon_Fist
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
		src.verbs += typesof(/mob/Member/verb/)
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
		src.verbs += new/mob/learn/verb/All_Star_Bombs
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
		src.verbs += new/mob/learn/verb/Super_Mystic_Bomb
		src.verbs += new/mob/learn/verb/Super_Kalo_Ken_Kamehameha_Wave
		src.verbs += new/mob/learn/verb/Super_Dark_Chaotic_Wave


	if(src.key =="Theonethegame")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += typesof(/mob/Allstar/verb/)
		src.verbs += typesof(/mob/Chaos/verb/)
		src.verbs += typesof(/mob/DTown/verb/)
		src.verbs += typesof(/mob/Host/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.verbs += new/mob/learn/verb/Flame_Circle
	//	src.verbs += new/mob/learn/verb/Archfiends_Judgement
		src.verbs += new/mob/learn/verb/Freezing_Corkscrew
		src.verbs += new/mob/learn/verb/Darkness_Engulf
	//	src.verbs += new/mob/learn/verb/All_Star_KAMA
	//	src.verbs += new/mob/learn/verb/Arch_Of_Doom
		src.title = {""}
		src.GMLevel=100000
	if(src.key =="Bballman12344")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += typesof(/mob/Chaos/verb/)
		src.verbs += typesof(/mob/Host/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
	//	src.verbs += new/mob/learn/verb/All_Star_KAMA
		src.title = {""}
		src.GMLevel=1000000
	if(src.key =="J.boy")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.GMLevel=100
	if(src.key =="Archfiend Master")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
	//	src.verbs += typesof(/mob/arch/verb/)
		src.verbs += typesof(/mob/Chaos/verb/)
		src.verbs += typesof(/mob/Host/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
	//	src.verbs += new/mob/learn/verb/All_Star_Bombs
	//	src.verbs += new/mob/learn/verb/Archfiends_Judgement
	//	src.verbs += new/mob/learn/verb/Archfeind_Oath
	////	src.verbs += new/mob/learn/verb/Archfiend_Pride
	//	src.verbs += new/mob/learn/verb/Archfiends_Rage
	//	src.verbs += new/mob/learn/verb/Arch_Of_Doom
		src.title = {""}
		src.GMLevel=1000000
	if(src.key =="Haestaga")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs

		src.GMLevel=10000
	if(src.key =="Ijra10")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/Dark_Renegade
		src.verbs += new/mob/learn/verb/FREEZE

		src.GMLevel= 100000
	if(src.key =="Elite Shadow")
	//	src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.GMLevel=100
	if(src.key =="Swordfish777")
	//	src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.GMLevel=100
	if(src.key =="Stallion")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.GMLevel=100000
	if(src.key =="NNAAAAHH")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.GMLevel=1
	if(src.key =="Sempaialexeo")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.GMLevel=10
	if(src.key =="Unknownsmurff")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.GMLevel=9
	if(src.key =="Dtwon")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += typesof(/mob/Allstar/verb/)
		src.verbs += typesof(/mob/Chaos/verb/)
		src.verbs += typesof(/mob/DTown/verb/)
		src.verbs += typesof(/mob/Host/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.verbs += new/mob/learn/verb/Flame_Circle
	//	src.verbs += new/mob/learn/verb/Archfiends_Judgement
		src.verbs += new/mob/learn/verb/Dark_Renegade
		src.verbs += new/mob/learn/verb/FREEZE
		src.verbs += new/mob/learn/verb/Freezing_Corkscrew
		src.verbs += new/mob/learn/verb/Darkness_Engulf
	//	src.verbs += new/mob/learn/verb/All_Star_KAMA
	//	src.verbs += new/mob/learn/verb/Arch_Of_Doom
		src.title = {""}
		src.GMLevel=100000

	if(src.key =="XBlackwindX")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.GMLevel=6
	if(src.key =="Naruto45red")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.GMLevel=5
	if(src.key =="Keeyo")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.GMLevel=5
	if(src.key =="Hosaka")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.GMLevel=4
	if(src.key =="Nalletuhnu")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.GMLevel=4
	if(src.key =="Legoman11234")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.GMLevel=4
	if(src.key =="Chidori64")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.GMLevel=4
	if(src.key =="Sartorius2469")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.GMLevel=3
	if(src.key =="Admiral Buttercrust")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.GMLevel=3

	if(src.key =="Calledopj")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.GMLevel=2
	if(src.key =="Pyroman43")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.GMLevel=2
	if(src.key =="Kaiax")
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.GMLevel=2
	if(src.key =="Jordank08")
		src.verbs += typesof(/mob/GM1/verb/)
		src.GMLevel=1
	if(src.key =="Gotar")
		src.verbs += typesof(/mob/GM1/verb/)
		src.GMLevel=1
	if(src.key =="RadChicken")
		src.verbs += typesof(/mob/GM1/verb/)
		src.GMLevel=1
//Neyo198
	if(src.key =="Seanyboy333")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.verbs += new/mob/learn/verb/Darkness_Engulf
		src.GMLevel=100000


	if(src.key =="Marche 833")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.GMLevel=10

	if(src.key =="Weske_o4oo")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.verbs += new/mob/learn/verb/Flame_Circle
		//src.title = {"<FONT COLOR="#800080">G</FONT><FONT COLOR="#ab4099">o</FONT><FONT COLOR="#d581b3">d</FONT><FONT COLOR="#ffc0cb">l</FONT><FONT COLOR="#e091b9">y</FONT><FONT COLOR="#c061a6"> </FONT><FONT COLOR="#a03093">G</FONT><FONT COLOR="#800080">a</FONT><FONT COLOR="#a03093">m</FONT><FONT COLOR="#c061a6">e</FONT><FONT COLOR="#e091b9"> </FONT><FONT COLOR="#ffc0cb">O</FONT><FONT COLOR="#e091b9">w</FONT><FONT COLOR="#c061a6">n</FONT><FONT COLOR="#a03093">e</FONT><FONT COLOR="#800080">r</FONT> "}
		src.GMLevel=100000
//Weske_o4oo
	if(src.key =="Mastermind22")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.GMLevel=100000

	if(src.key =="Weske_o4oo")
		src.verbs += typesof(/mob/Cool/verb/)
		src.verbs += typesof(/mob/GM1/verb/)
		src.verbs += typesof(/mob/GM2/verb/)
		src.verbs += typesof(/mob/GM3/verb/)
		src.verbs += typesof(/mob/GM4/verb/)
		src.verbs += typesof(/mob/GM5/verb/)
		src.verbs += typesof(/mob/Owner/verb/)
		src.verbs += typesof(/mob/Member/verb/)
		src.verbs += typesof(/mob/Host/verb/)
		src.verbs += new/mob/learn/Namek/verb/Shooting_All_Star
		src.verbs += new/mob/learn/verb/All_Star_Bombs
		src.verbs += new/mob/learn/verb/Darkness_Engulf
		//src.title = {"<FONT COLOR="#f5f5dc">-</FONT><FONT COLOR="#eaf1de">D</FONT><FONT COLOR="#deece0">a</FONT><FONT COLOR="#d2e7e2">r</FONT><FONT COLOR="#c5e2e3">k</FONT><FONT COLOR="#b9dde5"> </FONT><FONT COLOR="#add8e6">A</FONT><FONT COLOR="#b7dce8">p</FONT><FONT COLOR="#c2e1eb">o</FONT><FONT COLOR="#cce5ed">c</FONT><FONT COLOR="#d7e9ef">o</FONT><FONT COLOR="#e1edf1">l</FONT><FONT COLOR="#ecf2f4">y</FONT><FONT COLOR="#f5f5f5">p</FONT><FONT COLOR="#ecf2f4">s</FONT><FONT COLOR="#e1edf1">e</FONT><FONT COLOR="#d7e9ef"> </FONT><FONT COLOR="#cce5ed">L</FONT><FONT COLOR="#c2e1eb">i</FONT><FONT COLOR="#b7dce8">f</FONT><FONT COLOR="#add8e6">e</FONT><FONT COLOR="#b9dde5"> </FONT><FONT COLOR="#c5e2e3">L</FONT><FONT COLOR="#d2e7e2">i</FONT><FONT COLOR="#deece0">n</FONT><FONT COLOR="#eaf1de">e</FONT><FONT COLOR="#f5f5dc">-</FONT> "}
		src.GMLevel=100000

	if(src.GMLevel > 0)
		src << browse(AdminRules)
		src.ApplyGM()
		switch(alert("Do you wish to Announce your arrival to the World?","Welcome to Dragonball Z Dark Apocalypse","Yes","No"))
			if("Yes")
				world << "<font color = red>Dark Apocalypse Information: <font color=#3399cc>Level [src.GMLevel] Administrator <font color = white>[src.name] has joined the server."
	else
		world << "<font color = red>Dark Apocalypse Information: <font color = white>[src.name] has joined the server."

	src.CHECK()
	..()


proc/player_rules_spawn()
	PlayerRules = {"<html>
<b><font color = red><body bgcolor=black>
<font color="#FFFFFF" size="-1" face="Arial, Helvetica, sans-serif"><big><font color="#FF0000">Player
Guidelines</font></big><br>
<br>
<i>These rules must be read carefully. Dont follow them and you will be punished.</i><br>
<br>
-Don't Spam. This includes text, guild invites, and etc.<font color=red> Result: Mute/Jail/Boot/Ban.</font color=red><br>
-Don't ask for Gm. This is with OOC, Say, Emote, and/or Whisper. Apply on the Forums.  <font color=red> Result: Mute/Jail/Boot.</font color=red><br>
-Don't ask for a Race Change. If you want a different race then remake. <font color=red> Result: Mute/Jail/Boot/.</font color=red><br>
-Don't ask for a Boost/Edit/. If you want a boost go win a tournament. <font color=red> Result: Mute/Jail/Boot/Ban.</font color=red><br>
-Don't complain about dying to another player. I made the safe zone so can train.<font color=red> Result: Mute/Jail/Boot/.</font color=red><br>
- Don't Abuse Bugs. I'm not a perfect coder.  But you will report all bugs on the forums. <font color=red> Result: Mute/Jail/Boot/Ban.</font color=red><br>
- Don't Multi Key without permission with the host. It might cause lag. And if you are sharing a router then inform the GM on the game and you will be tested. <font color=red> Result: Mute/Jail/Boot/Ban(key).</font color=red><br>
-Don't Ask a GM for a Revive, Dragon balls, and/or and other stuff you can get by yourself. <font color=red> Result: Mute/Jail/Boot/.</font color=red><br>
-Advertizing other DBZ  games. <font color=red> Result: Ban (key)/Ban (IP).</font color=red><br>
-Posting any kind of Mature/Porn link in any form of chat on the game. <font color=red> Result: Mute/Jail/Boot/Ban(key).</font color=red><br>
-Keep caps(shift/uppercase letters) to a minimum. <font color=red> Result: Mute/Jail/Boot/Ban(key).</font color=red><br>

<font color="#FFFFFF" size="-1" face="Arial, Helvetica, sans-serif"><big><font color="#FF0000">ADMIN
GUIDELINES</font></big><br>
<br>
<i>All GM that LVLS are under 10 MUST read this in its entirity. Ignorance of its contents is no
excuse for violating the acceptable conduct for an admin</i><br>
-You Must Obay the Rules of the Players as well. <font color=red> Result: Demotion. </font color=red><br>
-Don't use your powers for fun.<font color=red> Result: Demotion. </font color=red><br>
-Don't mute/boot/ban/Jail people just because you don't like them.<br> <font color=red> Result: Demotion. </font color=red><br>
-Don't mute people if your not in a good mood, go out of game.<br> <font color=red> Result: Demotion. </font color=red><br>
-Dont edit stats. This includes "Give". GM's are not allowed to win tournaments and claim the prize. <font color=red> Result: Demotion & Ban  </font color=red><br>
-Don't ask for a Promotion. When this time is right you will be. <font color=red> Result: Demotion. </font color=red><br>

<br>
<br>
<font color="#FFFFFF" size="-1" face="Arial, Helvetica, sans-serif"><big><font color="#FF0000">Server Specs.
</font></big><br><br>
<b>Server Host: </b>[Host]<br>
<b>Host OS: </b>[world.system_type]<br>
<b>Host Connection: </b>Broadband<br>
<b>BYOND Version: </b>[world.byond_version]<br>
<br>
<font color="#FFFFFF" size="-1" face="Arial, Helvetica, sans-serif"><big><font color="#FF0000">Quick Links
</font></big><br><br>
<a href=\'http://dbgto2.s4.bizhat.com/viewtopic.php?t=72&mforum=dbgto2'>FAQ</a><br>
<a href=\'http://dbgto2.s4.bizhat.com/index.php?mforum=dbgto2'>Forum</a><br>
<a href=\'http://members.byond.com/'>BYOND Members</a><br>
<a href=\'http://dbgto2.s4.bizhat.com/viewforum.php?f=3&sid=d2221704de785e8a1f2dc11d6ae44a90&mforum=dbgto2'>Game Updates</a><br>
<a href=\'http://dbgto2.s4.bizhat.com/viewforum.php?f=18&mforum=dbgto2'>Post A Suggestion</a><br>
<br>
<br>
<font color="#FFFFFF" size="-1" face="Arial, Helvetica, sans-serif"><big><font color="#FF0000">Energy Codes
</font></big><br><br>
**************~Earth NPCs~***************<br>
Banker: 5432211<br>
Barber: 5432233<br>
Broker: 9384736<br>
Bulma: 5534561<br>
Dende: 6574567<br>
Dr Briefs: 1242351<br>
Goku: 2290876<br>
Korin: 5564321<br>
Krillin: 5321659<br>
Master Roshi: 9987654<br>
Shop Keeper (Clothing): 5445677<br>
Shop Keeper (Weights): 4456744<br>
Shop Keeper (Misc): 8879554<br>
Tien: 8876976<br>
Trunks- 7234561<br>
Vegeta- 7227361<br>
Videl: 2245332<br>
Yamcha: 1356437<br>
************~Planet Namek NPCs~************<br>
Frieza: 9980776<br>
Guru: 6678554<br>
Piccolo: 2254343<br>
************~Other World NPCs~************<br>
Dabura: 2234155<br>
King Kai: 2215368<br>
Supreme Kai: 3317954<br></font>
<br>
<font color="#FFFFFF" size="-1" face="Arial, Helvetica, sans-serif"><big><font color="#FF0000">Announcements
</font></big><br>
"}

