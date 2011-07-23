mob/var/fusing = 0
mob/learn
	verb
		Fuse(mob/M in oview(1))
			set category = "Techniques"
			set name = "Fusion Dance"
			if(usr.powerlevel_max > 150000 && M.powerlevel_max > 150000 && M.fused == 0 && usr.fused == 0 && usr.powerlevel == M.powerlevel)
				switch(alert(M,"[usr] wants to perform the Fusion Dance with you!  Do you want to perform the Fusion Dance with [usr]?  It lasts until the one of you clicks un-fuse and since [usr] is starting the dance, he will control the fusion! Fuse?","Attempted Fusion","Yes","No"))
					if("Yes")
						if(!usr.fusing)
							if(!M.fusing)
								if(!usr.fused)
									if(!M.fused)
										usr.fusing = 1
										M.fusing = 1
										usr.fusion()
										M.fusion()
										var/lead = copytext(usr.name,1,5)
										var/load = copytext(M.name,6)
										usr.powerlevel_max += M.powerlevel_max
										usr.ki_max += M.ki_max
										usr.strength_max += M.strength_max
										usr.defence_max += M.defence_max
										view(6) <<'fusion.wav'
										view(6) << "<font face = arial><tt>---===Fuuuu.......SION!...... HA!!!===---"
										M.client.show_verb_panel = 0
										M.icon = ""
										M.powerlevel_max = 0
										M.ki_max = 0
										M.strength = 0
										M.defence = 0
										M.name = "[lead][load]"
										usr.name = "[lead][load]"
										M.follow = usr.name
										spawn()M.overlays.Cut()
										spawn()M.Fusefloow()
										M.fused = 1
										usr.fused = 1
										sleep(50)
										view(6) << "[M.oldname] and [usr.oldname] fuse to make [lead][load]!!!"
										spawn(3000)
											usr.fuse_break()
											M.fuse_break()


					if("No")
						usr << "[M] doesn't want to fuse!"
						..()

			else
				usr << "you cant do this some thing isnt right are your strong enough? is your pl alined?"

mob
	proc
		Fusefloow()
			for(var/mob/M in world)
				while(M.fused && M.follow == usr.name)
					M.loc = usr.loc
					sleep(1)

mob/proc/fusion()
	src.oldname = src.name
	src.oldmax = src.powerlevel_max
	src.oldki = src.ki_max
	src.oldstr = src.strength_max
	src.olddef = src.defence_max
	src.oldicon = src.icon
	src.oldlevel = src.level
	src.oldexp = src.tnl
	src.fused = 1
	src.client.Save_1()

mob/proc/fuse_break()
	src.name = src.oldname
	src.powerlevel_max = src.oldmax
	src.ki_max = src.oldki
	src.strength_max = src.oldstr
	src.defence_max = src.olddef
	src.icon = src.oldicon
	src.level = src.oldlevel
	src.tnl = src.oldexp
	src.powerlevel = src.powerlevel_max
	src.ki = src.ki_max
	src.strength = src.strength_max
	src.defence = src.defence_max
	src.speed = src.speed_max
	src.fused = 0
	src.fusing = 0
	src.follow = ""
	src.frozen = 0
	src.buku_lock = 0
	src.client.show_verb_panel = 1
	src.overlays -= goku_hair_ssj
	src.overlays -= vegeta_hair_ssj
	src.overlays -= trunks_long_hair_ssj
	src.overlays -= hair_ssj3
	src.overlays -= hair_ssj4
	if(src.tail_cut)
		src.overlays += tail
	spawn()src.Hair_Apply()
	spawn()src.Skin_Apply()
	spawn()src.Hair_Apply()
	spawn()src.Skin_Apply()
	src << "Times up you have unfused!"
	view(6) << 'brake.wav'
	src.client.Save_1()
	src.updateHealth()
	src.updateki()
	src.updateexp()
