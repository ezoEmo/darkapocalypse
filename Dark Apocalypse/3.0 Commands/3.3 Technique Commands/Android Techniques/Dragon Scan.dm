mob/learn
	verb/Dragon_Scan()
		set category = "Techniques"
		for(var/obj/Dragonballs/Earth_Dragonball_1/B1 in world)
			if(B1.x==0||B1.y==0||B1.z==0)
				usr<<"<font color = blue>[B1.name]: </font> [B1.loc]"
			else
				usr << "<font color = blue>[B1.name]: </font> [B1.x], [B1.y], [B1.z]"

		for(var/obj/Dragonballs/Earth_Dragonball_2/B2 in world)
			if(B2.x==0||B2.y==0||B2.z==0)
				usr<<"<font color = blue>[B2.name]: </font> [B2.loc]"
			else
				usr << "<font color = blue>[B2.name]: </font> [B2.x], [B2.y], [B2.z]"

		for(var/obj/Dragonballs/Earth_Dragonball_3/B3 in world)
			if(B3.x==0||B3.y==0||B3.z==0)
				usr<<"<font color = blue>[B3.name]: </font> [B3.loc]"
			else
				usr << "<font color = blue>[B3.name]: </font> [B3.x], [B3.y], [B3.z]"

		for(var/obj/Dragonballs/Earth_Dragonball_4/B4 in world)
			if(B4.x==0||B4.y==0||B4.z==0)
				usr<<"<font color = blue>[B4.name]: </font> [B4.loc]"
			else
				usr << "<font color = blue>[B4.name]: </font> [B4.x], [B4.y], [B4.z]"

		for(var/obj/Dragonballs/Earth_Dragonball_5/B5 in world)
			if(B5.x==0||B5.y==0||B5.z==0)
				usr<<"<font color = blue>[B5.name]: </font> [B5.loc]"
			else
				usr << "<font color = blue>[B5.name]: </font> [B5.x], [B5.y], [B5.z]"

		for(var/obj/Dragonballs/Earth_Dragonball_6/B6 in world)
			if(B6.x==0||B6.y==0||B6.z==0)
				usr<<"<font color = blue>[B6.name]: </font> [B6.loc]"
			else
				usr << "<font color = blue>[B6.name]: </font> [B6.x], [B6.y], [B6.z]"

		for(var/obj/Dragonballs/Earth_Dragonball_7/B7 in world)
			if(B7.x==0||B7.y==0||B7.z==0)
				usr<<"<font color = blue>[B7.name]: </font> [B7.loc]"
			else
				usr << "<font color = blue>[B7.name]: </font> [B7.x], [B7.y], [B7.z]"
