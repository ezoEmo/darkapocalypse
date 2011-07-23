mob/PC/verb/Save()
	set category = "Channels"
	switch(alert("Do you wish to Save your game?","Save","Save to Server"/*,"Download Save File"*/))
		if("Save to Server")
			spawn(2) src.client.Save_1()
			src << "\red Server: \white Your game data was saved"

mob/PC/verb
	ServerInfo()
		set name = "Dark Apocalypse Information" //Name that shows up in the set category.
		set category = "Channels" //Category u want it under.
		var/calcLag = abs(world.cpu - 100)
		var/server
		server+= {"<font color=red><small>Server Hosted On: <font color=blue>[world.system_type]</font><br>"}
		server+= {"<font color=red><small>Server Efficiency: <font color=blue>[calcLag]%</font><br>"}
		server+= {"<font color=red><small>Server Address: byond://[world.address]:[world.port]</font><br>"}
		server+= {"<font color=red><small>Time Hosted: <font color=blue>[world.time/100](Seconds)</font><br>"}
		usr<<server