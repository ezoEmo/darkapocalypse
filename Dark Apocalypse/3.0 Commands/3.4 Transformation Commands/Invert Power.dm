mob
	var
		inverted 		= 0
		learn_invert 	= 0

mob/learn/verb/Invert()
	set category = "Combat"
	set name = "Invert Power"
	set desc = "The user finds the stored power locked deep within them and gets a power boost."
	var/trans_time = 5
	if(src.doing)
		return
	if(src.KO)
		return
	else
		if(!src.form_1)
			if(!inverted)
				if(src.powerlevel_max >= 750000)
					src.inverted = 1
					src.safe = 1
					src.doing = 1
					src.icon_state = "enrage"
					src.frozen = 1
					sleep(trans_time)

					src.powerlevel = src.powerlevel_max
					src.ki = src.ki_max
					src.strength = src.strength_max
					src.defence = src.defence_max
					src.critical = src.critical_max
					src.dodge = src.dodge_max
					src.reflect = src.reflect_max
					src.block = src.block_max

					src.powerlevel *= 18
					src.ki *= 18
					src.strength *= 18
					src.defence *= 18

					src.block += 18
					src.dodge += 18
					src.critical += 18
					src.reflect += 18
					src.counter += 18

					src.speed = 2.8

					view(6) << "<font color = white>[src.name]'s power surges as they become inverted!"
					src.icon_state = ""
					new/obj/techs/Overlays/Crater_Small(src.loc)

					src.overlays += small_white_elec
					src.frozen = 0
					src.doing = 0
					src.safe = 0
					return
		else
			src << "You cannot invert in a transformed state"
			return
mob/proc/Invert_Revert()
	if(src.KO)
		src <<"No cheating"
		return

	if(src.inverted)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.inverted = 0

		src.aura_on = 0
		src.underlays -= aura
		src.underlays -= ssj_aura

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec

		src.overlays -= src.mystic_elec

		src.overlays -= src.small_white_elec
		src.overlays -= src.small_white_elec
		src.overlays -= src.small_white_elec
		src.overlays -= src.small_white_elec

		src.overlays -= src.hair_ssj3
		src.overlays -= src.hair_ssj4
		src.overlays -= src.hair_ssj5
		src.overlays -= src.hair_ssj6

		src.Power_Redefine()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0
		src.trans_delay = 0

		return
	else
		return