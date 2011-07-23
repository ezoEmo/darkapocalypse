mob/var
	raditz_wins=0
	nappa_wins=0
	vegeta_wins=0
	burter_wins=0
	captain_ginyu_wins=0
	guldo_wins=0
	jeice_wins=0
	recoom_wins=0
	frieza_wins=0
	king_cold_wins=0
	android_16_wins=0
	android_17_wins=0
	android_18_wins=0
	cell_wins=0
	perfect_cell_wins=0
	majin_buu_wins=0
	kid_buu_wins=1
	Z_Fighter_wins=0
	kills2=0
	deaths2=0
	gooda=0
	goodb=0
	Fighter2=0
	Sec=0
	Mins=0
	Hrs=0
	Time4=0
	wi=0
	sponser=0
	forum=0
	goku_wins=0
	piccolo_wins=0
	yamcha_wins=0
	tien_wins=0
	krillin_wins=0
	gohan_wins=0
	choutzu_wins=0
//	vegeta_wins=0
	SSJ_goku_wins=0
	trunks_wins=0
	gotenks_wins=0
	vegito_wins=0
	Z_killer_wins=0


/*mob
	proc
		Good_Sagas_lis(mob/PC/M)
			if(M.name == "{NPC} Raditz")
				src.raditz_wins+=1
			if(M.name == "{NPC} Vegeta")
				src.vegeta_wins+=1
			if(M.name == "{NPC} Nappa")
				src.nappa_wins+=1
			if(src.name == "{NPC} Burter")
				M.burter_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Captain Ginyu")
				M.captain_ginyu_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Guldo")
				M.guldo_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Jeice")
				M.jeice_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Recoom")
				M.recoom_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Frieza")
				M.frieza_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} King Cold")
				M.king_cold_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 16")
				M.android_16_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 17")
				M.android_17_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Android 18")
				M.android_18_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Cell")
				M.cell_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Perfect Cell")
				M.perfect_cell_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{NPC} Majin Buu")
				M.majin_buu_wins+=1
				M.Good_Sagas_fin()
			if(src.name == "{{NPC} Kid Buu")
				M.kid_buu_wins+=1
				M.Good_Sagas_fin()*/

mob
	proc
		Watchdeath()
			if(src.wi ==0)
				if(src.witness_deaths >=100)
					world.SetMedal("Anger Management",src,)
					src <<"<font color=blue> <center> ((( You have Unlocked 'Anger Management' Medal)))"
					world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Anger Management' Medal."
					src.wi +=1
					return

mob
	proc
		FSMedal()
			if(src.wi==0)
				if(src.sponser==1)
					if(src.forum==1)
						world.SetMedal("Web Seeker",src)
						src <<"<font color=blue> <center> ((( You have Unlocked 'Web Seeker' Medal)))"
						world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Web Seeker' Medal."
						src.wi +=1
						return

mob
	proc
		UTBA()
			if(src.goodb==0)
				if(src.gooda>=500)
					world.SetMedal("Untouchable",src)
					src <<"<font color=blue> <center> ((( You have Unlocked 'Untouchable' Medal)))"
					world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Untouchable' Medal."
					src.goodb +=1
					return

mob
	proc
		Gokus()
			if(src.deaths2 ==0)
				if(src.deaths >=500)
					world.SetMedal("Goku's Style",src)
					src <<"<font color=blue> <center> ((( You have Unlocked 'Goku's Style' Medal)))"
					world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Goku's Style' Medal."
					src.deaths2 +=1
					return

mob
	proc
		LooseK()
			if(src.kills2 ==0)
				if(src.kills >=10000)
					world.SetMedal("Loose Killer",src)
					src <<"<font color=blue> <center> ((( You have Unlocked 'Loose Killer' Medal)))"
					world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Loose Killer' Medal."
					src.kills2 +=1
					return

mob
	proc
		Arena_winsM()
			if(src.Fighter2==0)
				if(src.arena_wins >=100)
					world.SetMedal("Fighter",src)
					src <<"<font color=blue> <center> ((( You have Unlocked 'Fighter' Medal)))"
					world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Fighter' Medal."
					src.Fighter2 +=1
					return

mob
	proc
		Good_Sagas_fin()
			if(usr.raditz_wins <=0)
				return
			if(usr.vegeta_wins <=0)
				return
			if(usr.nappa_wins <=0)
				return
			if(usr.burter_wins <=0)
				return
			if(usr.captain_ginyu_wins <=0)
				return
			if(usr.guldo_wins <=0)
				return
			if(usr.jeice_wins <=0)
				return
			if(usr.recoom_wins <=0)
				return
			if(usr.frieza_wins <=0)
				return
			if(usr.king_cold_wins <=0)
				return
			if(usr.android_16_wins <=0)
				return
			if(usr.android_17_wins <=0)
				return
			if(usr.android_18_wins <=0)
				return
			if(usr.cell_wins <=0)
				return
			if(usr.perfect_cell_wins <=0)
				return
			if(usr.majin_buu_wins <=2)
				return
			if(usr.kid_buu_wins <=0)
				return
			if(usr.Z_Fighter_wins ==1)
				return

			else
				world.SetMedal("Z-Fighter",usr)
				usr <<"<font color=blue> <center> ((( You have Unlocked 'Z-Fighter' Medal)))"
				world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Z-Fighter' Medal."
				usr.Z_Fighter_wins+=1

mob
	proc
		Evil_Sagas_fin()
			if(usr.goku_wins <=5)
				return
			if(usr.piccolo_wins <=4)
				return
			if(usr.yamcha_wins <=1)
				return
			if(usr.tien_wins <=1)
				return
			if(usr.krillin_wins <=1)
				return
			if(usr.gohan_wins <=5)
				return
			if(usr.choutzu_wins <=0)
				return
			if(usr.vegeta_wins <=2)
				return
			if(usr.SSJ_goku_wins <=0)
				return
			if(usr.trunks_wins <=1)
				return
			if(usr.gotenks_wins <=0)
				return
			if(usr.vegito_wins <=0)
				return
			if(usr.Z_killer_wins==1)
				return


			else
				world.SetMedal("Z-Killer",usr)
				usr <<"<font color=blue> <center> ((( You have Unlocked 'Z-Killer' Medal)))"
				world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Z-Killer' Medal."
				usr.Z_killer_wins+=1


mob
	proc
		Time()
			sleep(600)
			usr.Mins+=1
			usr.Time2()
		Time2()
			if(usr.Mins==60)
				usr.Hrs+=1
				usr.Mins=0
				usr.Time3()
			else
				usr.Time()
		Time3()
			if(usr.Hrs==100)
				if(usr.Time4==0)
					world.SetMedal("Nothing But Time",usr)
					usr <<"<font color=blue> <center> ((( You have Unlocked 'Nothing But Time' Medal)))"
					world << "<font color =Yellow>Dark Apocalypse Medals Information:<font color=white>[usr] has Unlocked 'Nothing But Time' Medal."
					usr.Time4+=1
			else
				usr.Time2()


