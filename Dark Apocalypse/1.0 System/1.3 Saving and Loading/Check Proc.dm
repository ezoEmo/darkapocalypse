mob/var/member_mess = 0
mob/var/learn_DB = 0
mob/var/learn_fuse = 0
mob/var/learn_celljr = 0
mob/proc
	CHECK()
//		if(src.learn_focus_train)
//			src.verbs += new/mob/learn/verb/Focus_Train
//			src.verbs += new/mob/learn/verb/Concentrate

		if(src.android_dead)
			spawn(150) src.android_dead = 0
		src.aura_on = 0
		src.overlays -= fat_wrap
		src.overlays -= cosmic_donut
		src.overlays -= stone_spit
		src.overlays -= small_death_ball
		src.overlays -= big_death_ball
		src.overlays -= kamehameha_charge
		src.overlays -= cosmic_donut_charge
		src.overlays -= finalf_charge
		src.overlays -= masenko_charge
		src.overlays -= x10_kame_charge
		src.overlays -= skamehameha_charge
		if(src.majined)
			src.overlays -= majin_sign
			src.overlays -= majin_sign
			src.overlays -= majin_sign
			src.overlays += majin_sign

		if(src.mysticing >= 1 && src.mysticing <=5)
			switch(alert("It seems you logged out while mystic training","Mystic Continuation","Continue Training","Stop Training"))
				if("Continue Training")
					src.mystic_cont()
				else
					src.frozen = 0
					src.safe = 0
					src.doing = 0
					src.mysticing = 0
					src.critical_max += rand(5,18)
					src.dodge_max += rand(5,18)
					src.reflect_max += rand(5,18)
					src.block_max += rand(5,18)

					src.powerlevel = usr.powerlevel_max
					src.ki = usr.ki_max
					src.strength = usr.strength_max
					src.defence = usr.defence_max
					src.critical = usr.critical_max
					src.dodge = usr.dodge_max
					src.reflect = usr.reflect_max
					src.block = usr.block_max
					src.mysticing = 0
					src.overlays += mystic_elec

					src << "<font color = white>Elder Kai:</font> Your training is now complete!"

		if(src.key == "D0ct0rTr03x")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "DoctorTro3x")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "Nightmares")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "Doctor Of Deception")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "TheRantings")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "A God named Doc")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "The End of The Truth")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "Mentality")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "Roxxx")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "Hikato")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "SSBardock")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "Wolverinexmn")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "GROWN")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "TG_Bobby")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "Cameron17")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "Carmel_Candi")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "TG_is_Bak")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "Dbz_Boy_06")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "Bobby_TG_Reborn")
			spawn() src.AUTO_BAN_2()
			return
		if(src.key == "IM_Bak")
			spawn() src.AUTO_BAN_2()
			return

		if(client.IsByondMember())
			if(src.member_mess == 0)
				src << "<font color = green>[src]: For your devoted contribution to BYOND Games, you get a speacial reward on this game : .Enjoy Dragonball Z Dark Apocalypse and Dont forget to add us to <a href=\'http://members.byond.com/?command=add_favorite_game&game_id=38951&account_query=[src.ckey]'>Favorites!</a href> Have Fun. Rank this game #1 Ask the host if there are any bonus for ranking!!!!"
				sleep(10)
				src << "<font size=2><font color=red>Welcome to Dragonball z Dark Apocalypse, For Help/Guides and information visit the forum Or try Going in Channels>Help</font></font>"
				src << "<font color=red>Hope you enjoy your stay.</font>"
				src.member_mess = 1
		else
			if(src.member_mess == 0)
				src << "<font color=green>[src]: For special member rewards, <a href=\'http://members.byond.com/'>become a BYOND Member</a>!"
				sleep(10)
				src << "<font size=2><font color=red>Welcome to Dragonball z Dark Apocalypse, For Help/Guides and information visit the forum Or try Going in Channels>Help</font></font>"
				src << "<font color=red>Hope you enjoy your stay.</font>"
				src.member_mess = 1


/*
		if(src.learn_arch1)
		//	src.verbs += new/mob/learn/verb/Archfiends_Rage
			src<<"<font color=red> You Are A Member of the Warrior Darkness."
		if(src.learn_arch2)
		//	src.verbs += new/mob/learn/verb/Archfiend_Pride
			src<<"<font color=red> You Are A Member of the Warrior Darkness."
		if(src.learn_arch3)
		//	src.verbs += new/mob/learn/verb/Archfeind_Oath
			src<<"<font color=red> You Are A Member of the Warrior Darkness."
*/


		if(src.learn_burning_attack)
			src.verbs += new/mob/learn/verb/Burning_Attack

		if(src.learn_big_bang)
			src.verbs += new/mob/learn/verb/Big_Bang_Attack
		if(usr.learn_spirit_bomb)
			usr.verbs += new/mob/learn/verb/Spirit_Bomb

		if(src.learn_cont_kame)
			src.verbs += new/mob/learn/verb/Continuous_Kamehameha

		if(src.learn_invert)
			src.verbs += new/mob/learn/verb/Invert

		if(src.donut_locked)
			spawn(200) src.donut_locked = 0

		if(!src.tail_cut)
			spawn(2000) src.apply_tail()

		if(!src.learn_chaos_blitz)
			src.verbs += new/mob/learn/verb/Chaos_Demon_Ki_Blast

		if(!src.learn_superdarkchaoticwave)
			src.verbs += new/mob/learn/verb/Super_Dark_Chaotic_Wave

		if(!src.learn_superkalokenkamehamehawave)
			src.verbs += new/mob/learn/verb/Super_Kalo_Ken_Kamehameha_Wave

		if(!src.learn_supermysticbomb)
			src.verbs += new/mob/learn/verb/Super_Mystic_Bomb
		if(src.learn_RKB)
			src.verbs += new/mob/learn/verb/Rapid_Ki_Blast
		if(src.learn_GD)
			src.verbs += new/mob/learn/verb/Galactic_Donut


		if(src.learn_beamcannon)
			src.verbs += new/mob/learn/verb/Specail_Beam_Cannon


		if(src.learn_celljr)
			src.verbs += new/mob/learn/verb/Createcell




		if(src.learn_ghost_attack)
			src.verbs += new/mob/learn/verb/Super_Ghost_Kamikaze_Attack
		if(src.learn_masenko)
			src.verbs += new/mob/learn/verb/Masenko
		if(src.learn_superk)
			src.verbs += new/mob/learn/verb/Super_Kamehameha

		if(src.fused == 1)
			src.fuse_break()
		for(var/obj/O in src.contents)
			if(istype(O,/obj/Dragonballs))
				del O
		for(var/obj/O in src.contents)
			if(istype(O,/obj/Namek_Dragonballs))
				del O

		if(src.race == "Android")
			src.verbs += new/mob/learn/verb/World_Scan
			src.verbs += new/mob/learn/verb/Dragon_Scan

		if(src.learn_hell_flash)
			src.verbs += new/mob/learn/verb/Hell_Flash


		if(src.race == "Demon")
			if(src.learn_stone)
				src.verbs += new/mob/learn/Demon/verb/Stone_Spit
			if(src.learn_mouth_blast)
				src.verbs += new/mob/learn/Demon/verb/Mouth_Blast
			src.verbs += new/mob/learn/verb/Demon_Ki_Blast
		else
			src.verbs += new/mob/learn/verb/Ki_Blast

		if(src.race == "Human" || src.race == "Bio-Android")
			src.verbs += new/mob/learn/verb/Distructo_Disk
		else
			if(src.race == "Changling")
				if(src.learn_Kdisk)
					src.verbs += new/mob/learn/Changling/verb/Changling_Distructo_Disk
				if(src.learn_Dbeam)
					src.verbs += new/mob/learn/verb/Death_Beam
			else
				if(src.race == "Saiyan")
					if(src.learn_oozaru)
						src.verbs += new/mob/learn/Saiyan/verb/Fake_Moon
					if(src.learn_x10_kame)
						src.verbs += new/mob/learn/Saiyan/verb/X10_Kamehameha


		if(src.in_guild)
			src.verbs -= new/mob/PC/verb/Guild_Create()

		if(src.learn_finalkamehameha)
			src.verbs += new/mob/learn/verb/Final_Kamehameha

		if(src.learn_soulpunisher)
			src.verbs += new/mob/learn/verb/Soul_Punisher
		if(src.learn_sdf)
			src.verbs += new/mob/learn/verb/Super_Dragon_Fist

		if(src.learn_FS)
			src.verbs += new/mob/learn/verb/Final_Shine

		if(src.learn_ht)
			src.verbs += new/mob/learn/verb/Hyper_Tornado
		if(src.learn_bk100)
			src.verbs += new/mob/learn/verb/Big_Bang_Kamehameha_X100
		if(src.learn_fskama)
			src.verbs += new/mob/learn/verb/Father_Son_Kamehameha

		if(src.learn_vball)
			src.verbs += new/mob/learn/verb/Vanishing_Ball

		if(src.learn_MinusEnergyPowerBall)
			src.verbs += new/mob/learn/verb/Minus_Energy_Power_Ball

		if(src.learn_finalrevenger)
			src.verbs += new/mob/learn/verb/Final_Revenger

		if(src.learn_supernova)
			src.verbs += new/mob/learn/verb/Supernova

		if(src.learn_fuse)
			src.verbs += new/mob/learn/verb/Fuse

		if(src.learn_DB)
			src.verbs += new/mob/learn/verb/Death_Ball

		if(src.race == "Majin")
			src.verbs += new/mob/learn/Majin/verb/Candy_Ray

		if(src.learn_geno)
			src.verbs += new/mob/learn/verb/Genocide


		if(src.learn_Revenge_Ball)
			src.verbs += new/mob/learn/verb/Revenge_Ball


		if(src.learn_FF)
			src.verbs += new/mob/learn/verb/Final_Flash


		if(src.learn_hell_gren)
			src.verbs += new/mob/learn/Namek/verb/Hellzone_Grenade
		if(src.learn_light_grenade)
			src.verbs += new/mob/learn/Namek/verb/Light_Grenade

		if(src.learn_sense)
			src.verbs += new/mob/learn/verb/Sense

		if(src.learn_kamehameha)
			src.verbs += new/mob/learn/verb/Kamehameha

		if(src.learn_aura)
			src.verbs += new/mob/learn/verb/Aura

		if(src.learn_buku)
			src.verbs += new/mob/learn/verb/Fly

		if(src.learn_it)
			if(src.race != "Android")
				src.verbs += new/mob/learn/verb/Instant_Transmission
			else
				src.verbs += new/mob/learn/verb/Android_Instant_Transmission

		if(src.learn_powerup)
			src.verbs += new/mob/learn/verb/Power_Up

		if(src.learn_enrage)
			src.verbs += new/mob/learn/verb/Unleash_Rage

		if(src.learn_powerdown)
			src.verbs += new/mob/learn/verb/Power_Down

		if(src.learn_kaioken)
			src.verbs += new/mob/learn/verb/Kaioken

		if(src.learn_split_form)
			src.verbs += new/mob/learn/verb/Split_Form
		if(src.learn_kill_split)
			src.verbs += new/mob/learn/verb/Kill_Split

		if(src.learn_kiai)
			src.verbs += new/mob/learn/verb/Kiai

		if(src.learn_scan)
			src.verbs += new/mob/learn/verb/Scan

		if(src.learn_absorb)
			src.verbs += new/mob/learn/verb/Ki_Absorb

		if(src.learn_selfdestruct)
			src.verbs += new/mob/learn/verb/Self_Destruct

		if(src.learn_zanzoken)
			src.verbs += new/mob/learn/verb/Zanzoken


		if(src.learn_goodkiblast)
			src.verbs += new/mob/learn/verb/Good_Demon_Ki_Blast
		if(src.learn_neoball)
			src.verbs += new/mob/learn/verb/Neo_Ball
		if(src.learn_trapball)
			src.verbs += new/mob/learn/verb/Trap_Ball
		if(src.learn_kicatalyst)
			src.verbs += new/mob/learn/verb/Ki_Catalyst
		if(src.learn_vileenergy)
			src.verbs += new/mob/learn/verb/Vile_Energy
		if(src.learn_swordattack)
			src.verbs += new/mob/learn/verb/Sword_Attack
		if(src.learn_bravecannon)
			src.verbs += new/mob/learn/verb/Brave_Cannon
		if(src.learn_braveswordattack)
			src.verbs += new/mob/learn/verb/Brave_Sword_Attack
		if(src.learn_trapshooter)
			src.verbs += new/mob/learn/verb/Trap_Shooter
		if(src.learn_dshatter)
			src.verbs += new/mob/learn/verb/Dimension_Shatter
		if(src.learn_hellinpact)
			src.verbs += new/mob/learn/verb/Hell_Impact
		if(src.learn_staticshot)
			src.verbs += new/mob/learn/verb/Static_Shot
		if(src.learn_kicannon)
			src.verbs += new/mob/learn/verb/Ki_Cannon
		if(src.learn_omegablaster)
			src.verbs += new/mob/learn/verb/Omega_Blaster
		if(src.learn_finalgalickcannon)
			src.verbs += new/mob/learn/verb/Final_Galick_Cannon
		if(src.learn_killdriver)
			src.verbs += new/mob/learn/verb/Kill_Driver
		if(src.learn_mysticbreath)
			src.verbs += new/mob/learn/verb/Mystic_Breath
		if(src.learn_fullpowerball)
			src.verbs += new/mob/learn/verb/Full_Power_Energy_Ball
		if(src.learn_hellstorm)
			src.verbs += new/mob/learn/verb/Hells_Storm
		if(src.learn_acid)
			src.verbs += new/mob/learn/verb/Acid
		if(src.learn_acidburn)
			src.verbs += new/mob/learn/verb/Acid_Burn
		if(src.learn_heatphalanx)
			src.verbs += new/mob/learn/verb/Heat_Phalanx
		if(src.learn_finalspiritcannon)
			src.verbs += new/mob/learn/verb/Final_Spirit_Cannon
		if(src.learn_riotkavelin)
			src.verbs += new/mob/learn/verb/Riot_Kavelin
		if(src.learn_energyfield)
			src.verbs += new/mob/learn/verb/Energy_Field
		if(src.learn_deathchaser)
			src.verbs += new/mob/learn/verb/Death_Chaser
		if(src.learn_darknesseyebeam)
			src.verbs += new/mob/learn/verb/Darkness_Eye_Beam
		if(src.learn_darknessblaster)
			src.verbs += new/mob/learn/verb/Darkness_Blaster
		if(src.learn_galacticbuster)
			src.verbs += new/mob/learn/verb/Galactic_Buster
		if(src.learn_psychobarrier)
			src.verbs += new/mob/learn/verb/Psycho_Barrier
		if(src.learn_fullwaveball)
			src.verbs += new/mob/learn/verb/Full_Power_Energy_Wave
		if(src.learn_neokiblastcannon)
			src.verbs += new/mob/learn/verb/Neo_Ki_Blast_Cannon
		if(src.learn_ssbm)
			src.verbs += new/mob/learn/verb/SS_Deadly_Bomb
		if(src.learn_dodon)
			src.verbs += new/mob/learn/verb/Dodon_Ray
		if(src.learn_kiblastcannon)
			src.verbs += new/mob/learn/verb/Ki_Blast_Cannon
		if(src.learn_crusherball)
			src.verbs += new/mob/learn/verb/Crusher_Ball
		if(src.learn_finishbuster)
			src.verbs += new/mob/learn/verb/Finish_Buster
		if(src.learn_erasercannon)
			src.verbs += new/mob/learn/verb/Eraser_Cannon
		if(src.learn_dragonthunder)
			src.verbs += new/mob/learn/verb/Dragon_Thunder
		if(src.learn_whirlwindspin)
			src.verbs += new/mob/learn/verb/Whirlwind_Spin
		if(src.learn_blastershell)
			src.verbs += new/mob/learn/verb/Blaster_Shell
		if(src.learn_burningstorm)
			src.verbs += new/mob/learn/verb/Burning_Storm
		if(src.learn_drongfist)
			src.verbs += new/mob/learn/verb/Dragon_Fist
		if(src.learn_x100k)
			src.verbs += new/mob/learn/verb/X100_Kamehameha
		if(src.learn_x1000k)
			src.verbs += new/mob/learn/verb/X1000_Kamehameha


/*		if(src.form_1)
			if(src.race == "Human" || src.race == "Saiyan" || src.race == "Half Saiyan" || src.race == "Changling")
				spawn(5) src.Transformation_Strain()
		if(src.form_2)
			if(src.race == "Tuffle")
				spawn(5) src.Transformation_Strain()
		if(src.form_3)
			if(src.race == "Bio-Android")
				spawn(5) src.Transformation_Strain()*/

		if(src.enraged)
			sleep(300)
			src.enraged = 0
			src.powerlevel = src.powerlevel_max

		if(src.trans_delay)
			sleep(350)
			src.trans_delay = 0

		if(src.KO)
			src.powerlevel = round(src.powerlevel_max / 50)
			src.KO = 0
			src.frozen = 0
			src << "You wake up!"

		if(src.mute_time > 0)
			src.muted = 1
			src << "You have been <font color = red>Muted</font> for Mute Avoiding. Unmute in: [(src.mute_time / 10)] seconds"
			spawn(5) src.MUTE_TIMER()

		for(var/obj/Equipment/Buff_Items/O in src.contents)
			spawn(5) O.BUFF_COOLDOWN()

		if(src.buff_time > 0)
			spawn(5) src.BUFF_TIMER()

		if(src.kaioken)
			spawn(5) src.Kaio_Strain()

		if(src.in_guild)
			spawn(5) src.Give_Guild_Verbs()

		spawn(15) src.Auto_Save()
		src.Time()