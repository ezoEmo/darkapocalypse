client
	proc
		Load_1()
			if(src.mob.save_file_1)
				var/savefile/load
				load = new ("Player Saves/[mob.ckey]/Save File 1.sav")
				load["mob"] >> src.mob
				load["x"] >> src.mob.x
				load["y"] >> src.mob.y
				load["z"] >> src.mob.z

			if(src.mob.save_file_2)
				var/savefile/load
				load = new ("Player Saves/[mob.ckey]/Save File 2.sav")
				load["mob"] >> src.mob
				load["x"] >> src.mob.x
				load["y"] >> src.mob.y
				load["z"] >> src.mob.z
			if(src.mob.save_file_3)
				var/savefile/load
				load = new ("Player Saves/[mob.ckey]/Save File 3.sav")
				load["mob"] >> src.mob
				load["x"] >> src.mob.x
				load["y"] >> src.mob.y
				load["z"] >> src.mob.z


		Save_1()
			if(!src)return
			if(!src.mob)return

			if(src.mob.save_file_1)
				var/savefile/save
				save = new ("Player Saves/[mob.ckey]/Save File 1.sav")
				save["mob"] << src.mob
				save["x"] << src.mob.x
				save["y"] << src.mob.y
				save["z"] << src.mob.z
			if(src.mob.save_file_2)
				var/savefile/save
				save = new ("Player Saves/[mob.ckey]/Save File 2.sav")
				save["mob"] << src.mob
				save["x"] << src.mob.x
				save["y"] << src.mob.y
				save["z"] << src.mob.z
			if(src.mob.save_file_3)
				var/savefile/save
				save = new ("Player Saves/[mob.ckey]/Save File 3.sav")
				save["mob"] << src.mob
				save["x"] << src.mob.x
				save["y"] << src.mob.y
				save["z"] << src.mob.z



mob/Logout(mob/M)
	for(var/obj/O in src.contents)
		if(istype(O,/obj/Dragonballs)||istype(O,/obj/Namek_Dragonballs))
			O.loc = src.loc
		src.n_db_1 = 0
		src.n_db_2 = 0
		src.n_db_3 = 0
		src.n_db_4 = 0
		src.n_db_5 = 0
		src.n_db_6 = 0
		src.n_db_7 = 0
		src.e_db_1 = 0
		src.e_db_2 = 0
		src.e_db_3 = 0
		src.e_db_4 = 0
		src.e_db_5 = 0
		src.e_db_6 = 0
		src.e_db_7 = 0

	for(var/mob/Monster/Cell_Jr/B in world)
		if(B.owner == src)
			del B
	for(var/mob/Monster/Split_form/S in world)
		if(S.maker == src)
			del S
		..()
	del(src)

mob
	proc
		Auto_Save()
			set background = 1
			if(src.afk_time < 16)
				src.afk_time ++
				src.client.Save_1()
				spawn(900) src.Auto_Save()
				usr <<"<font color = red>Dark Apocalypse Information:\white Character Saved."
				usr <<"<font color = red>Dark Apocalypse Information:\white Please visit our Sponsers at www.Zejeeforums.tk and www.Zejee.tk "
				usr <<"<font color = red>Dark Apocalypse Information:\white Please visit our Forums at http://allstarsda.top-site-list.com/forum.html"