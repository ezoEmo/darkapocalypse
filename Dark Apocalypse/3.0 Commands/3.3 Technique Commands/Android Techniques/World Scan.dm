mob/learn

	verb/World_Scan()
		set category = "Techniques"

		for(var/mob/M)
			if(M.client)
				usr <<"<font size=1><font color = blue><B> Race:</font><B> [M.race]</font><font color = blue><B> Name:</font><B> [M.name]</font><font color = blue><B> Level:</font><B> [M.level]</font><font color = blue><B> Location:</font><B> [M.x],[M.y],[M.z]</font>"
