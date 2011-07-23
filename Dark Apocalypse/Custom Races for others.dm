mob
	DTown
		verb
			Give_Demonic_Warror(mob/M in world)
				set category = "Member"
				switch(alert(M,"[usr] is giving you a chance to change your race to Demonic Warror , Accept?","Change Race","Yes","No"))
					if("Yes")
						if(M.level==0)
							M.race = "Demonic Warror"
							M.icon = 'Demonic Warror Form 1.dmi'
							M.karma = "Good"
							M <<"<font size=0><font color=Blue>You have been made into a Demonic Warror."
							M.contents += new/obj/Transform/Transform
							M.contents += new/obj/Transform/Revert
						else
							M <<" This will only work if your level is 0. Remake and dont train."
					if("No")
						usr << "[M] has declined from your offer. Do not abuse this verb or you will lost it."
						return



