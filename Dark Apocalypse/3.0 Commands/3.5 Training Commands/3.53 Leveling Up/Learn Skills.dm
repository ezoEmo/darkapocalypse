mob/var/learn_sense = 0
mob/var/learn_buku = 0
mob/var/learn_enrage = 0
mob/var/learn_aura = 0
mob/var/learn_powerdown = 0
mob/var/learn_powerup = 0
/*mob/var/learn_it = 0*/
mob/var/learn_hell_gren = 0
mob/var/learn_oozaru = 0
mob/var/learn_stone = 0
mob/var/learn_ghost_attack = 0
mob/var/learn_split_form = 0
mob/var/learn_kill_split = 0
mob/var/learn_Revenge_Ball = 0
mob/var/learn_mouth_blast = 0
mob/var/learn_hell_flash = 0
mob/var
	learn_Dbeam = 0
	learn_Kdisk = 0
	learn_GD = 0
	learn_RKB = 0
	learn_FF = 0
	learn_masenko = 0
	learn_geno = 0
	learn_beamcannon = 0
	learn_superk=0
	learn_chaos_blitz = 0

	learn_goodkiblast=0
	learn_neoball=0



	learn_trapball=0
	learn_kicatalyst=0
	learn_vileenergy=0
	learn_swordattack=0
	learn_bravecannon=0
	learn_braveswordattack=0
	learn_trapshooter=0
	learn_dshatter=0
	learn_hellinpact=0
	learn_staticshot=0
	learn_kicannon=0
	learn_omegablaster
	learn_finalgalickcannon
	learn_killdriver=0
	learn_mysticbreath=0
	learn_fullpowerball=0
	learn_hellstorm=0
	learn_acid=0
	learn_acidburn=0
	learn_heatphalanx=0
	learn_finalspiritcannon=0
	learn_riotkavelin=0
	learn_energyfield=0
	learn_deathchaser=0
	learn_darknesseyebeam=0
	learn_darknessblaster=0
	learn_galatictyrant=0
	learn_galacticbuster=0
	learn_psychobarrier=0
	learn_fullwaveball=0
	learn_neokiblastcannon=0
	learn_ssbm=0
	learn_dodon=0
	learn_kiblastcannon=0
	learn_crusherball=0
	learn_finishbuster=0
	learn_erasercannon=0
	learn_dragonthunder=0
	learn_whirlwindspin=0
	learn_blastershell=0
	learn_burningstorm=0
	learn_drongfist=0
	learn_x100k=0
	learn_x1000k=0
	learn_superkalokenkamehamehawave=0
	learn_superdarkchaoticwave=0
	learn_supermysticbomb=0
mob
	proc
		Skill_Gain()
			if(istype(src,/mob/PC))

				if(src.race == "Konats")
					if(!src.learn_swordattack)
						if(src.level >= 550)
							src.verbs += /mob/learn/verb/Sword_Attack
							src.learn_swordattack = 1
							src << "<center><font color = white> .:: You learn Sword Attack  ::.</font></center></center>"
					if(!src.learn_bravecannon)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Brave_Cannon
							src.learn_bravecannon = 1
							src << "<center><font color = white> .:: You learn Brave Cannon  ::.</font></center></center>"
					if(!src.learn_braveswordattack)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Brave_Sword_Attack
							src.learn_braveswordattack = 1
							src << "<center><font color = white> .:: You learn Brave Sword Attack  ::.</font></center></center>"



				if(src.race == "Uub")
					if(!src.learn_trapshooter)
						if(src.level >= 550)
							src.verbs += /mob/learn/verb/Trap_Shooter
							src.learn_trapshooter = 1
							src << "<center><font color = white> .:: You learn Trap Shooter  ::.</font></center></center>"
					if(!src.learn_kicannon)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Ki_Cannon
							src.learn_kicannon = 1
							src << "<center><font color = white> .:: You learn Ki Cannon  ::.</font></center></center>"
					if(!src.learn_staticshot)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Static_Shot
							src.learn_staticshot = 1
							src << "<center><font color = white> .:: You learn Static Shot  ::.</font></center></center>"

					if(!src.learn_mysticbreath)
						if(src.level >= 150)
							src.verbs += /mob/learn/verb/Mystic_Breath
							src.learn_mysticbreath = 1
							src << "<center><font color = white> .:: You learn Mystic Breath  ::.</font></center></center>"


				if(src.race == "Saibaman")
					if(!src.learn_trapball)
						if(src.level >= 550)
							src.verbs += /mob/learn/verb/Trap_Ball
							src.learn_trapball = 1
							src << "<center><font color = white> .:: You learn Trap Ball  ::.</font></center></center>"
					if(!src.learn_kicatalyst)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Ki_Catalyst
							src.learn_kicatalyst = 1
							src << "<center><font color = white> .:: You learn Ki Catalyst  ::.</font></center></center>"
					if(!src.learn_vileenergy)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Vile_Energy
							src.learn_vileenergy = 1
							src << "<center><font color = white> .:: You learn Vile Energy  ::.</font></center></center>"
					if(!src.learn_acid)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Acid
							src.learn_acid = 1
							src << "<center><font color = white> .:: You learn Acid  ::.</font></center></center>"
					if(!src.learn_acidburn)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Acid_Burn
							src.learn_acidburn = 1
							src << "<center><font color = white> .:: You learn Acid Burn  ::.</font></center></center>"

					if(!src.learn_hellstorm)
						if(src.level >= 1500)
							src.verbs += /mob/learn/verb/Hells_Storm
							src.learn_hellstorm = 1
							src << "<center><font color = white> .:: You learn Hell Storm  ::.</font></center></center>"

				if(src.race == "Bardock")
					if(!src.learn_riotkavelin)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Riot_Kavelin
							src.learn_riotkavelin = 1
							src << "<center><font color = white> .:: You learn Riot Kavelin  ::.</font></center></center>"
					if(!src.learn_heatphalanx)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Heat_Phalanx
							src.learn_heatphalanx = 1
							src << "<center><font color = white> .:: You learn Heat Phalanx  ::.</font></center></center>"

					if(!src.learn_finalspiritcannon)
						if(src.level >= 1500)
							src.verbs += /mob/learn/verb/Final_Spirit_Cannon
							src.learn_finalspiritcannon = 1
							src << "<center><font color = white> .:: You learn Final Spirit Cannon  ::.</font></center></center>"


				if(src.race == "Bojack")
					if(!src.learn_trapball)
						if(src.level >= 550)
							src.verbs += /mob/learn/verb/Trap_Ball
							src.learn_trapball = 1
							src << "<center><font color = white> .:: You learn Trap Ball  ::.</font></center></center>"
					if(!src.learn_kicatalyst)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Ki_Catalyst
							src.learn_kicatalyst = 1
							src << "<center><font color = white> .:: You learn Ki Catalyst  ::.</font></center></center>"
					if(!src.learn_vileenergy)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Vile_Energy
							src.learn_vileenergy = 1
							src << "<center><font color = white> .:: You learn Vile Energy  ::.</font></center></center>"
					if(!src.learn_trapshooter)
						if(src.level >= 550)
							src.verbs += /mob/learn/verb/Trap_Shooter
							src.learn_trapshooter = 1
							src << "<center><font color = white> .:: You learn Trap Shooter  ::.</font></center></center>"
					if(!src.learn_psychobarrier)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Psycho_Barrier
							src.learn_psychobarrier = 1
							src << "<center><font color = white> .:: You learn Psycho Barrier  ::.</font></center></center>"
					if(!src.learn_galacticbuster)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Galactic_Buster
							src.learn_galacticbuster = 1
							src << "<center><font color = white> .:: You learn Galactic Buster  ::.</font></center></center>"

					if(!src.learn_galatictyrant)
						if(src.level >= 1500)
							src.verbs += /mob/learn/verb/Galatic_Tyrant
							src.learn_galatictyrant = 1
							src << "<center><font color = white> .:: You learn Galatic Tyrant  ::.</font></center></center>"

				if(src.race == "Cooler")
					if(!src.learn_darknessblaster)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Darkness_Eye_Beam
							src.learn_darknessblaster = 1
							src << "<center><font color = white> .:: You learn Darkness Eye Beam ::.</font></center></center>"
					if(!src.learn_darknesseyebeam)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Darkness_Blaster
							src.learn_darknesseyebeam = 1
							src << "<center><font color = white> .:: You learn Galactic Buster  ::.</font></center></center>"

					if(!src.learn_deathchaser)
						if(src.level >= 1500)
							src.verbs += /mob/learn/verb/Death_Chaser
							src.learn_deathchaser = 1
							src << "<center><font color = white> .:: You learn Death Chaser  ::.</font></center></center>"

				if(src.race == "Demonic Warror")
					if(!src.learn_superdarkchaoticwave)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Super_Dark_Chaotic_Wave
							src.learn_superdarkchaoticwave = 1
							src << "<center><font color = white> .:: You learn Super Dark Chaotic Wave ::.</font></center></center>"
					if(!src.learn_superkalokenkamehamehawave)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Super_Kalo_Ken_Kamehameha_Wave
							src.learn_superkalokenkamehamehawave = 1
							src << "<center><font color = white> .:: You learn Super Kalo Ken Kamehameha Wave  ::.</font></center></center>"

					if(!src.learn_supermysticbomb)
						if(src.level >= 1500)
							src.verbs += /mob/learn/verb/Super_Mystic_Bomb
							src.learn_supermysticbomb = 1
							src << "<center><font color = white> .:: You learn Super Mystic Bomb  ::.</font></center></center>"


				if(src.level >= 5)
					if(!src.learn_sense)
						src << "<center><font color = white> .:: You learn to Sense Energy ::.</font></center></center>"
						src.verbs += /mob/learn/verb/Sense
						src.learn_sense = 1

				if(src.race == "Saiyan"|| src.race == "Tuffle"||src.race == "Kai")
					if(src.level >= 500)
						if(!src.learn_FF)
							src << "<center><font color = white> .:: You learn Final Flash ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Final_Flash
							src.learn_FF = 1

				if(src.race == "Saiyan")
					if(src.level >= 15)
						if(!src.learn_oozaru)
							src << "<center><font color = white> .:: You learn to make false moons ::.</font></center></center>"
							src.verbs += /mob/learn/Saiyan/verb/Fake_Moon
							src.learn_oozaru = 1
					if(src.level >= 50000)
						if(!src.learn_drongfist)
							src << "<center><font color = white> .:: You learn Dragon Fist ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Dragon_Fist
							src.learn_drongfist = 1

					if(src.level >= 1000)
						if(!src.learn_x10_kame)
							src << "<center><font color = white> .:: You learn X10 Kamehameha ::.</font></center></center>"
							src.verbs += /mob/learn/Saiyan/verb/X10_Kamehameha
							src.learn_x10_kame = 1
					if(src.level >= 100000)
						if(!src.learn_x100k)
							src << "<center><font color = white> .:: You learn X100 Kamehameha ::.</font></center></center>"
							src.verbs += /mob/learn/verb/X100_Kamehameha
							src.learn_x100k = 1
					if(src.level >= 1000000)
						if(!src.learn_x1000k)
							src << "<center><font color = white> .:: You learn X1000 Kamehameha ::.</font></center></center>"
							src.verbs += /mob/learn/verb/X1000_Kamehameha
							src.learn_x1000k = 1
				if(src.level >= 10)
					if(!src.learn_buku)
						src << "<center><font color = white> .:: You learn to Fly ::.</font></center></center>"
						src.verbs += /mob/learn/verb/Fly
						src.learn_buku = 1

				if(src.level >= 15)
					if(!src.learn_enrage)
						src << "<center><font color = white> .:: You learn to Unleash your Rage ::.</font></center></center>"
						src.verbs += /mob/learn/verb/Unleash_Rage
						src.learn_enrage = 1

				if(level >= 10)
					if(!src.learn_aura)
						src << "<center><font color = white> .:: You learn to create an Aura ::.</font></center></center>"
						src.verbs += new/mob/learn/verb/Aura
						src.learn_aura = 1

				if(src.level >= 25)
					if(!src.learn_powerdown)
						src << "<center><font color = white> .:: You learn to Power Down  ::.</font></center></center>"
						src.verbs += /mob/learn/verb/Power_Down
						src.learn_powerdown = 1

				if(src.level >= 125)
					if(!src.learn_fullwaveball)
						src << "<center><font color = white> .:: You learn to Full Power Energy Wave  ::.</font></center></center>"
						src.verbs += /mob/learn/verb/Full_Power_Energy_Wave
						src.learn_fullwaveball = 1

				if(src.level >= 300)
					if(!src.learn_fullpowerball)
						src << "<center><font color = white> .:: You learn to Full Power Energy Ball  ::.</font></center></center>"
						src.verbs += /mob/learn/verb/Full_Power_Energy_Ball
						src.learn_fullpowerball = 1


				if(src.level >= 125)
					if(!src.pk)
						world << "<FONT color = #F3982D>Training Information: \white [src] has now become a permanent Combatant"
						src.pk = 1
						src.it_blocked = 0

				if(src.level >= 25)
					if(!src.learn_powerup)
						src << "<center><font color = white> .:: You learn to Power Up  ::.</font></center></center>"
						src.verbs += /mob/learn/verb/Power_Up
						src.learn_powerup = 1

				if(src.level >= 500)
					if(!src.learn_split_form)
						src << "<center><font color = white> .:: You learn to make Split Forms  ::.</font></center></center>"
						src.verbs += /mob/learn/verb/Split_Form
						src.learn_split_form = 1
				if(src.level >= 500)
					if(!src.learn_kill_split)
						src.verbs += /mob/learn/verb/Kill_Split
						src.learn_kill_split = 1
			/*	if(src.level >= 200)
					if(!src.learn_it)
						if(src.race != "Android")
							src << "<center><font color = white> .:: You learn to Instantly Transmit  ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Instant_Transmission
							src.learn_it = 1
						else
							src << "<center><font color = white> .:: You learn to Instantly Transmit  ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Android_Instant_Transmission
							src.learn_it = 1 */

				if(src.race == "Saiyan" || src.race == "Half Saiyan"||src.race == "Kai")
					if(src.level >= 600)
						if(!src.learn_fuse)
							src.verbs += /mob/learn/verb/Fuse
							src << "<center><font color = white> .:: You learn the Fusion Dance  ::.</font></center></center>"
							src.learn_fuse = 1

				if(src.race == "Saiyan" || src.race == "Half Saiyan" || src.race == "Human"||src.race == "Dragon")
					if(src.level >= 250)
						if(!src.learn_RKB)
							src.verbs += /mob/learn/verb/Rapid_Ki_Blast
							src << "<center><font color = white> .:: You learn Rapid Ki Blast  ::.</font></center></center>"
							src.learn_RKB = 1

				if(src.race == "Saiyan" || src.race == "Half Saiyan")
					if(src.level >= 100)
						if(!src.learn_GD)
							src.verbs += /mob/learn/verb/Galactic_Donut
							src << "<center><font color = white> .:: You learn Galactic Donut  ::.</font></center></center>"
							src.learn_GD = 1


				if(src.race == "Namek" || src.race == "Bio-Android"||src.race == "Makenshi"||src.race == "Kai")
					if(!src.learn_trapball)
						if(src.level >= 550)
							src.verbs += /mob/learn/verb/Trap_Ball
							src.learn_trapball = 1
							src << "<center><font color = white> .:: You learn Trap Ball  ::.</font></center></center>"
					if(!src.learn_kicatalyst)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Ki_Catalyst
							src.learn_kicatalyst = 1
							src << "<center><font color = white> .:: You learn Ki Catalyst  ::.</font></center></center>"
					if(!src.learn_vileenergy)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Vile_Energy
							src.learn_vileenergy = 1
							src << "<center><font color = white> .:: You learn Vile Energy  ::.</font></center></center>"
					if(src.level >= 500)
						if(!src.learn_beamcannon)
							src.verbs += /mob/learn/verb/Specail_Beam_Cannon
							src << "<center><font color = white> .:: You learn to use Specail Beam Cannon  ::.</font></center></center>"
							src.learn_beamcannon = 1
					if(src.level >= 1000)
						if(!src.learn_energyfield)
							src << "<center><font color = white> .:: You learn Energy Field ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Energy_Field
							src.learn_energyfield = 1

				if(src.race == "Demon"||src.race == "Good Demon"||src.race == "Kai")
					if(src.level >= 100)
						if(!src.learn_stone)
							src << "<center><font color = white> .:: You learn Stone Spit ::.</font></center></center>"
							src.verbs += /mob/learn/Demon/verb/Stone_Spit
							src.learn_stone = 1

					if(src.level >= 500)
						if(!src.learn_mouth_blast)
							src << "<center><font color = white> .:: You learn to shoot Mouth Blast  ::.</font></center></center>"
							src.verbs += /mob/learn/Demon/verb/Mouth_Blast
							src.learn_mouth_blast = 1

				if(src.race == "Demon")
					if(src.level >= 1000)
						if(!src.learn_hellinpact)
							src << "<center><font color = white> .:: You learn Hell Impact ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Hell_Impact
							src.learn_hellinpact = 1

					if(src.level >= 750)
						if(!src.learn_dshatter)
							src << "<center><font color = white> .:: You learn to Dimension Shatter  ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Dimension_Shatter
							src.learn_dshatter = 1
				if(src.race == "Tuffle")
					if(!src.learn_trapshooter)
						if(src.level >= 550)
							src.verbs += /mob/learn/verb/Trap_Shooter
							src.learn_trapshooter = 1
							src << "<center><font color = white> .:: You learn Trap Shooter  ::.</font></center></center>"
					if(src.level >= 850)
						if(!src.learn_Revenge_Ball)
							src << "<center><font color = white> .:: You learn Revenge Ball ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Revenge_Ball
							src.learn_Revenge_Ball = 1



				if(src.race == "Half Saiyan")
					if(src.level >= 500)
						if(!src.learn_masenko)
							src << "<center><font color = white> .:: You learn Masenko ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Masenko
							src.learn_masenko = 1

					if(src.level >= 700)
						if(!src.learn_finishbuster)
							src << "<center><font color = white> .:: You learn Finish Buster ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Masenko
							src.learn_finishbuster = 1

					if(src.level >= 950)
						if(!src.learn_superk)
							src << "<center><font color = white> .:: You learn to use Super Kamehameha ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Super_Kamehameha
							src.learn_superk = 1


					if(src.level >= 1000)
						if(!src.learn_ghost_attack)
							src << "<center><font color = white> .:: You learn Super Ghost Kamikaze Attack ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Super_Ghost_Kamikaze_Attack
							src.learn_ghost_attack = 1

				if(src.race == "Android"||src.race == "Makenshi")
					if(src.level >= 500)
						if(!src.learn_hell_flash)
							src << "<center><font color = white> .:: You learn Hell Flash ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Hell_Flash
							src.learn_hell_flash = 1
					if(src.level >= 500)
						if(!src.learn_ssbm)
							src << "<center><font color = white> .:: You learn SS Deadly Bomb ::.</font></center></center>"
							src.verbs += /mob/learn/verb/SS_Deadly_Bomb
							src.learn_ssbm = 1
					if(src.level >= 1000)
						if(!src.learn_energyfield)
							src << "<center><font color = white> .:: You learn Energy Field ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Energy_Field
							src.learn_energyfield = 1


				if(src.race == "Majin")
					if(src.level >= 850)
						if(!src.learn_geno)
							src << "<center><font color = white> .:: You learn Genocide Attack ::.</font></center></center>"
							src.verbs += /mob/learn/verb/Genocide
							src.learn_geno = 1
					if(!src.learn_trapball)
						if(src.level >= 550)
							src.verbs += /mob/learn/verb/Trap_Ball
							src.learn_trapball = 1
							src << "<center><font color = white> .:: You learn Trap Ball  ::.</font></center></center>"
					if(!src.learn_kicatalyst)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Ki_Catalyst
							src.learn_kicatalyst = 1
							src << "<center><font color = white> .:: You learn Ki Catalyst  ::.</font></center></center>"
					if(!src.learn_vileenergy)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Vile_Energy
							src.learn_vileenergy = 1
							src << "<center><font color = white> .:: You learn Vile Energy  ::.</font></center></center>"

				if(src.race == "Namek")
					if(!src.learn_hell_gren)
						if(src.level >= 850)
							src.verbs += /mob/learn/Namek/verb/Hellzone_Grenade
							src.learn_hell_gren = 1
							src << "<center><font color = white> .:: You learn the Hellzone Grenade  ::.</font></center></center>"
					if(!src.learn_light_grenade)
						if(src.level >= 350)
							src.verbs += /mob/learn/Namek/verb/Light_Grenade
							src.learn_light_grenade = 1
							src << "<center><font color = white> .:: You learn the Light Grenade  ::.</font></center></center>"

				if(src.race == "Changling")
					if(!src.learn_Dbeam)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Death_Beam
							src.learn_Dbeam = 1
							src << "<center><font color = white> .:: You learn Death Beam  ::.</font></center></center>"

					if(!src.learn_Kdisk)
						if(src.level >= 350)
							src.verbs += /mob/learn/Changling/verb/Changling_Distructo_Disk
							src.learn_Kdisk = 1
							src << "<center><font color = white> .:: You learn Kienzan Disk  ::.</font></center></center>"

				if(src.race == "Dragon")
					if(!src.learn_trapshooter)
						if(src.level >= 550)
							src.verbs += /mob/learn/verb/Trap_Shooter
							src.learn_trapshooter = 1
							src << "<center><font color = white> .:: You learn Trap Shooter  ::.</font></center></center>"
					if(!src.learn_mysticbreath)
						if(src.level >= 150)
							src.verbs += /mob/learn/verb/Mystic_Breath
							src.learn_mysticbreath = 1
							src << "<center><font color = white> .:: You learn Mystic Breath  ::.</font></center></center>"
					if(!src.learn_whirlwindspin)
						if(src.level >= 250)
							src.verbs += /mob/learn/verb/Whirlwind_Spin
							src.learn_whirlwindspin = 1
							src << "<center><font color = white> .:: You learn Whirlwind Spin  ::.</font></center></center>"
					if(!src.learn_burningstorm)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Burning_Storm
							src.learn_burningstorm = 1
							src << "<center><font color = white> .:: You learn Burning Storm  ::.</font></center></center>"

					if(!src.learn_dragonthunder)
						if(src.level >= 1500)
							src.verbs += /mob/learn/verb/Dragon_Thunder
							src.learn_dragonthunder = 1
							src << "<center><font color = white> .:: You learn Dragon Thunder  ::.</font></center></center>"

				if(src.race == "Legend")
					if(!src.learn_trapshooter)
						if(src.level >= 550)
							src.verbs += /mob/learn/verb/Trap_Shooter
							src.learn_trapshooter = 1
							src << "<center><font color = white> .:: You learn Trap Shooter  ::.</font></center></center>"
					if(!src.learn_crusherball)
						if(src.level >= 300)
							src.verbs += /mob/learn/verb/Crusher_Ball
							src.learn_crusherball = 1
							src << "<center><font color = white> .:: You learn Crusher Ball  ::.</font></center></center>"

					if(!src.learn_blastershell)
						if(src.level >= 100)
							src.verbs += /mob/learn/verb/Blaster_Shell
							src.learn_blastershell = 1
							src << "<center><font color = white> .:: You learn Blaster Shell  ::.</font></center></center>"

					if(!src.learn_erasercannon)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Eraser_Cannon
							src.learn_erasercannon = 1
							src << "<center><font color = white> .:: You learn Eraser Cannon  ::.</font></center></center>"

				if(src.race == "Human")
					if(!src.learn_kiblastcannon)
						if(src.level >= 300)
							src.verbs += /mob/learn/verb/Ki_Blast_Cannon
							src.learn_kiblastcannon = 1
							src << "<center><font color = white> .:: You learn Ki blast Cannon  ::.</font></center></center>"

					if(!src.learn_dodon)
						if(src.level >= 100)
							src.verbs += /mob/learn/verb/Dodon_Ray
							src.learn_dodon = 1
							src << "<center><font color = white> .:: You learn Dodon Ray  ::.</font></center></center>"

					if(!src.learn_neokiblastcannon)
						if(src.level >= 500)
							src.verbs += /mob/learn/verb/Neo_Ki_Blast_Cannon
							src.learn_neokiblastcannon = 1
							src << "<center><font color = white> .:: You learn Neo Ki Blast Cannon  ::.</font></center></center>"

				if(src.race == "Bio-Android" || src.race == "Majin" || src.race == "Android" || src.race == "Namek" || src.race == "Tuffle"||src.race == "Legend"||src.race == "Good Demon"||src.race == "Makenshi")
					if(src.level >= 1000)
						if(!src.learn_invert)
							src.verbs += /mob/learn/verb/Invert
							src.contents -= new/obj/Transform/Revert
							src.contents += new/obj/Transform/Revert

							src.learn_invert = 1
							src << "<center><font color = white> .:: You learn to Invert your Power  ::.</font></center></center>"


			else
				return