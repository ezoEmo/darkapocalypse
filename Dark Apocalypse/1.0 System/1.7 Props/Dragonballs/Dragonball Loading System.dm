world/proc/dragonball_loader()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,250),rand(1,250),1)
		if(!istype(T,/turf/Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Dragonballs/Earth_Dragonball_1(T)
		spawn() dragonball_loader2()

//--------------------------------------------------------------------

world/proc/dragonball_loader2()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,250),rand(1,250),1)
		if(!istype(T,/turf/Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Dragonballs/Earth_Dragonball_2(T)
		spawn() dragonball_loader3()


//--------------------------------------------------------------------


world/proc/dragonball_loader3()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,250),rand(1,250),1)
		if(!istype(T,/turf/Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Dragonballs/Earth_Dragonball_3(T)
		spawn() dragonball_loader4()


//--------------------------------------------------------------------


world/proc/dragonball_loader4()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,250),rand(1,250),1)
		if(!istype(T,/turf/Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Dragonballs/Earth_Dragonball_4(T)
		spawn() dragonball_loader5()


//--------------------------------------------------------------------


world/proc/dragonball_loader5()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,250),rand(1,250),1)
		if(!istype(T,/turf/Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Dragonballs/Earth_Dragonball_5(T)
		spawn() dragonball_loader6()


//--------------------------------------------------------------------


world/proc/dragonball_loader6()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,250),rand(1,250),1)
		if(!istype(T,/turf/Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Dragonballs/Earth_Dragonball_6(T)
		spawn() dragonball_loader7()


//--------------------------------------------------------------------


world/proc/dragonball_loader7()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,250),rand(1,250),1)
		if(!istype(T,/turf/Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Dragonballs/Earth_Dragonball_7(T)
		world << "<Font color = yellow>The Dragonballs have been revived on Earth!"



//********************************************************************************************//
//********************************************************************************************//
//************************************Namekian Dragonballs************************************//
//********************************************************************************************//
//********************************************************************************************//

world/proc/dragonball_loadern()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Namek_Dragonballs/Namek_Dragonball_1(T)
		spawn() dragonball_loadern2()

//--------------------------------------------------------------------

world/proc/dragonball_loadern2()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Namek_Dragonballs/Namek_Dragonball_2(T)
		spawn() dragonball_loadern3()


//--------------------------------------------------------------------


world/proc/dragonball_loadern3()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Namek_Dragonballs/Namek_Dragonball_3(T)
		spawn() dragonball_loadern4()


//--------------------------------------------------------------------


world/proc/dragonball_loadern4()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Namek_Dragonballs/Namek_Dragonball_4(T)
		spawn() dragonball_loadern5()


//--------------------------------------------------------------------


world/proc/dragonball_loadern5()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Namek_Dragonballs/Namek_Dragonball_5(T)
		spawn() dragonball_loadern6()


//--------------------------------------------------------------------


world/proc/dragonball_loadern6()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Namek_Dragonballs/Namek_Dragonball_6(T)
		spawn() dragonball_loadern7()


//--------------------------------------------------------------------


world/proc/dragonball_loadern7()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Namek_Dragonballs/Namek_Dragonball_7(T)
		world << "<font face=arial narrow><Font color=yellow>The Dragonballs have been revived on Namek!"


world/proc/dragonball_loaderbs()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,250),rand(1,250),1)
		if(!istype(T,/turf/Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Black_Star_Dragonballs/Black_Star_Dragonball_1(T)
		spawn() dragonball_loaderbs2()

//--------------------------------------------------------------------

world/proc/dragonball_loaderbs2()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Black_Star_Dragonballs/Black_Star_Dragonball_2(T)
		spawn() dragonball_loaderbs3()


//--------------------------------------------------------------------


world/proc/dragonball_loaderbs3()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Black_Star_Dragonballs/Black_Star_Dragonball_3(T)
		spawn() dragonball_loaderbs4()


//--------------------------------------------------------------------


world/proc/dragonball_loaderbs4()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),1)
		if(!istype(T,/turf/Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Black_Star_Dragonballs/Black_Star_Dragonball_4(T)
		spawn() dragonball_loaderbs5()


//--------------------------------------------------------------------


world/proc/dragonball_loaderbs5()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Black_Star_Dragonballs/Black_Star_Dragonball_5(T)
		spawn() dragonball_loaderbs6()


//--------------------------------------------------------------------


world/proc/dragonball_loaderbs6()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),2)
		if(!istype(T,/turf/Namek_Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Black_Star_Dragonballs/Black_Star_Dragonball_6(T)
		spawn() dragonball_loaderbs7()


//--------------------------------------------------------------------


world/proc/dragonball_loaderbs7()
	for(var/Balls =1,Balls>0,Balls--)
		var/turf/T=locate(rand(1,150),rand(1,150),1)
		if(!istype(T,/turf/Island_Edge/Island_Edge_005))
			Balls++
			continue

		new/obj/Black_Star_Dragonballs/Black_Star_Dragonball_7(T)
		world << "<font face=arial narrow><Font color=red>The Black Star DragonBalls have been revived!"
