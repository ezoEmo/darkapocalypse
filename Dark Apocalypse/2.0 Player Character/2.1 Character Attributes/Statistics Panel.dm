mob/var/tab_saga=1
mob/PC/Stat()

	//-------VITALS------------------------------

	if(src.tab_vitals)
		statpanel("Vitals")
		stat("Karma:","[src.karma]: [src.karma_rating]%")
		if(src.race == "Saiyan")
			if(src.rage_chromosome)
				stat("Gene Type:","Honour")
			if(src.train_chromosome)
				stat("Gene Type:","Pride")
		if(src.race == "Bio-Android")
			stat("Absorbs:","[src.absorb_kill]")
		if(src.race == "Majin")
			stat("Eats:","[src.eats]")
		if(src.race == "Majin" && src.form_2)
			stat("Absorbs:","[src.absorb_kill]")
		if(src.race == "Tuffle")
			stat("Infects:","[src.infect_kill]")
		stat("--------","")
		stat("Level:",level)
		stat("EXP:","[round(src.exp / src.tnl * 100)] %")
		if(src.tp > 0)
			stat("Training Points:","[src.tp]")
		stat("--------","")
		stat("Powerlevel:","[num2text(round(src.powerlevel),1000000)] / [num2text(round(src.powerlevel_max),1000000)]")
		stat("Ki:","[num2text(round(src.ki),1000000)] / [num2text(round(src.ki_max),1000000)]")
		stat("Strength:","[num2text(round(src.strength),1000000)]")
		stat("Defence:","[num2text(round(src.defence),1000000)]")
		stat("--------","")
		stat("Rage:","[src.rage] %")

		stat("Fatigue:","[round(src.fatigue / src.fatigue_max * 100)] %")
		stat("Time Played:","[Hrs] hrs, [Mins] Mins")
		stat("Energy Code:","[num2text(src.energy_code,100000)]")
		stat("Earth Wishes:","[src.wishes]/5")
		stat("Namek Wishes:","[src.namek_wishes]/3")
		stat("Shadow Wishes:","[src.bs_wishes]/3")
		for(var/obj/Equipment/Head/Scouter/O in contents)
			if(O.equiped == 1)
				stat("--------","")
				stat("Location:","[src.x],[src.y],[src.z]")

	//-------SKILLS------------------------------

	if(src.tab_skills)
		statpanel("Skills")
		stat("Unarmed:","[round((src.unarmed / src.unarmed_max) * 100)] %")
		stat("Ki:","[round((src.ki_skill / src.ki_skill_max) * 100)] %")
		stat("--------","")
		stat("Chance to Block:","[src.block] %")
		stat("Chance to Counter:","[src.counter] %")
		stat("Chance to Dodge:","[src.dodge] %")
		stat("Chance to Reflect:","[src.reflect] %")
		stat("Chance to Critical:","[src.critical] %")
		stat("--------","")
		stat("Kills:","[src.kills]")
		stat("Deaths:","[src.deaths]")
		stat("Arena Victories:","[src.arena_wins]")
		stat("Arena Casualties:","[src.arena_losses]")
		stat("Attacks Absorb:","[src.gooda]")

	//-------QUESTS------------------------------

	if(src.tab_quests)
		for(var/obj/Quests/O in contents)
			statpanel("Quests")
			stat("")
			stat(O)

	if(src.tab_saga)
		statpanel("Saga")
		stat("Saga:","[saga]")
		stat("Sub-Saga:","[part]")
		stat("Location:","[location]")
		stat("Difficulty:","[saga_difficulty]")
		stat("--------","")
		for(var/mob/Saga/M in world)
			stat(M)
			stat("Powerlevel:","[M.powerlevel]")
			stat("Ki:","[M.ki]")
			stat("Strength:","[M.strength]")
			stat("Defence:","[M.defence]")
			stat("Location:","[M.x],[M.y],[M.z]")

	//-------INVENTORY------------------------------

	if(src.tab_inventory)
		statpanel("Inventory")
		stat("Weapon",src.weapon)
		stat("Head:",src.head)
		stat("Back:",src.back)
		stat("Chest:",src.chest)
		stat("Underclothing:",src.underclothes)
		stat("Arms:",src.arms)
		stat("Hands:",src.hands)

		stat("Waist:",src.waist)
		stat("Legs:",src.legs)
		stat("Feet:",src.feet)
		if(src.inven_min > 0)
			stat("--------","")
		for(var/obj/Equipment/O in contents)
			stat(O)
		for(var/obj/Dragonballs/O2 in contents)
			stat(O2)
		for(var/obj/Namek_Dragonballs/O3 in contents)
			stat(O3)
		for(var/obj/Black_Star_Dragonballs/O4 in contents)
			stat(O4)
		for(var/obj/Guild/G in contents)
			stat(G)
		stat("--------","")
		stat("Zenni:","[src.zenni]")
		stat("Banked Zenni:","[src.banked_zenni]")
		var/count = 0
		for(var/obj/Equipment/E in contents)
			count ++
		for(var/obj/Gym/G in contents)
			count ++
		src.inven_min = count
		stat("Space:","[src.inven_min] / [src.inven_max]")

	//-------GUILD----------------------------------

	if(src.in_guild)
		if(src.show_guild_tab == 1)
			statpanel("Guild Members")
			for(var/mob/PC/M in world)
				if(M.guild_name == src.guild_name)
					stat(M)
					stat("Level:","[M.level]")
					stat("Race:","[M.race]")
					stat("Rank:","[M.guild_rank]")
					stat("Guild Battle Rank","[M.guildbrank]")
					stat("","")

/*	//-------FRIENDS----------------------------------



	if(src.show_friends_tab == 1)
		statpanel("Friends Online")
		for(var/X in src.friends)
			var/mob/M=locate(X) in world
			if(M)
				if(src.friends[X]==M.name)
					stat(M)
*/