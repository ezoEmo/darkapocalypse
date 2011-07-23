obj/Equipment/Candy_Obj

	name =  ""
	var/victem = ""
	icon = 'Candy.dmi'
	var/exp_bonus
	var/powerlevel_bonus = 0


	Click()

		if(usr.race == "Majin")
			usr << "<B><font color = red>You pop the [src.name] in your mouth and crunch down on it!"
			usr.powerlevel_max += src.powerlevel_bonus
			usr.eats ++
			usr.Super_Majin_Trans()
			del(src)
			return
		else
			usr << "<B><font color = red>You pop the [src.name] in your mouth and crunch down on it!"
			del(src)
			return

	verb

		Pick_Up()
			set src in oview(0)
			set category = null
			if(Move(usr))
				usr << "You pick up the [src]"
			else
				usr << "You cannot pick up the [src]"


		Drop()
			set category = null
			if(src.equiped == 0)
				src.loc = usr.loc
				usr << "You drop the [src]"
			else
				usr << "You cannot drop this, It's equipped!"

mob
	proc
		Super_Majin_Trans()
			if(!src.form_2 && src.obtain_super == 1)
				if(src.eats >= 50 && src.powerlevel_max >= 2500000 && src.level >= 350)
					src.obtain_super = 2
					src << "You feel more power surge through your body with Evil."
					sleep(10)
					view(6) << "[src.name] screams out as he unleashes some of his evil and transforms into a Evil Majin!"
					src.doing = 1
					flick("super majin transform",src)
					src.frozen = 1
					sleep(100)

					src.powerlevel_max *= 4
					src.ki_max *= 3
					src.strength_max *= 4
					src.defence_max *= 4

					src.block_max += 10
					src.dodge_max += 4
					src.critical_max += 15
					src.reflect_max += 8

					src.speed_max = 3.2
					src.speed = 3.2

					src.powerlevel = src.powerlevel_max
					src.ki = src.ki_max
					src.strength = src.strength_max
					src.defence = src.defence_max
					src.critical = src.critical_max
					src.dodge = src.dodge_max
					src.reflect = src.reflect_max
					src.block = src.block_max


					src.icon = 'Majin - Form 3.dmi'
					src.icon_state = ""

					src.overlays -= src.aura
					src.form_2 = 1
					src.frozen = 0
					src.doing = 0
					src.contents += new/obj/Techniques/Majin/Absorb
