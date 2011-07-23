mob/var/who_delay = 0
mob/var/who_returned = 0
mob/var/AFK = 0
obj
	member_symbol
		icon = 'Member Symbol.dmi'
mob/PC/verb/Who()
	set category = "Channels"
	var/obj/member_symbol/O = new
	var/html
	var/count = 0
	var/html_heading = {"<body bgcolor="#000000" text="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF">
<table width="650" border="0" bordercolor="#000000">
  <tr>
    <td width="35%"><strong><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif">Name:</font></strong></td>
    <td width="25%"><strong><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif">Race:</font></strong></td>
    <td width="40%"><strong><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif">Guild:</font></strong></td>
  </tr>
</table>

"}
	usr.who()
	for(var/client/C)
		if(C.mob)
			if(usr.who_returned)
				return
			count ++
			html += {"<table width="650" border="0" bordercolor="#000000">"}
			if(C.mob.AFK)
				if(client.IsByondMember())
					html += {"<td width="35%"><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif">[O.icon][C.mob.name] (<font color=red>AFK</font>) </td>"}
				else
					html += {"<td width="35%"><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif">[C.mob.name] (<font color=red>AFK</font>) </td>"}

			else
				if(client.IsByondMember())
					html += {"<td width="35%"><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif">[O.icon][C.mob.name] </font></td>"}
				else
					html += {"<td width="35%"><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif">[C.mob.name] </font></td>"}

			html += {"
    <td width="25%"><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif">[C.mob.race]</font></td>
    <td width="40%"><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif">[C.mob.guild_name_html]</font></td>
  </tr>
</table>"}

		var/count_html = {"<br><table width="650" border="0" bordercolor="#000000">
	  <tr>
	    <td width="35%"><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif"><b>Player Count: [count]</b></font></td>
	    <td width="25%"><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif"></font></td>
	    <td width="40%"><font color="#FFFFFF" face="Tahoma, Tahoma, Helvetica, sans-serif"></font></td>
	  </tr>
	</table>"}

		usr << browse("[html_heading][html][count_html]","size=700x500,window=Players Online")
		usr.afk_time = 0

mob/PC
	verb
		Online_Enforcers()
			set category = "Channels"
			var/count = 0
			usr << "-------------------------------"
			for(var/mob/X in world)
				if(X.GMLevel)
					count += 1
					usr << "[X] - [X.GMLevel] - [X.title]"
			usr << "Enforcers Online: [count]"
			usr << "-------------------------------"


mob/proc/who()
	if(src.who_delay)
		src << "You must wait before using this command again."
		src.who_returned = 1
	else
		src.who_delay = 1
		spawn(300)
		src.who_delay = 0
		src.who_returned = 0


