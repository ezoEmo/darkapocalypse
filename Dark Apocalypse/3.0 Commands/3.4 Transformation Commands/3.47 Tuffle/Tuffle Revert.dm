mob/proc/Tuffle_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_3)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_3 = 0
		src.form_4 = 0


		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec

		src.overlays -= src.mystic_elec
		src.overlays -= src.hair_fssj4

		src.Power_Redefine()

		oview() << "[src.name] has reverted from his Super Tuffle Form."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return