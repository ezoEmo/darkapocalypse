mob/proc/Demon_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0
		src.form_6 = 0
		src.form_7 = 0
		src.form_8 = 0

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec

		src.overlays -= src.mystic_elec
		src.overlays -= demon_elec_2
		src.overlays -= demon_elec

		src.icon = 'Demon - Form 1.dmi'
		src.Power_Redefine()
		src.Skin_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return

mob/proc/Good_Demon_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0
		src.form_6 = 0
		src.form_7 = 0
		src.form_8 = 0

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec

		src.overlays -= src.mystic_elec
		src.overlays -= demon_elec_2
		src.overlays -= demon_elec

		src.icon = 'Good Demon.dmi'
		src.Power_Redefine()
		src.Skin_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return

mob/proc/Chaos_Demon_Revert()
	if(src.KO)
		src <<"No cheating"
		return
	if(src.form_1)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_1 = 0
		src.form_2 = 0
		src.form_3 = 0
		src.form_4 = 0
		src.form_5 = 0
		src.form_6 = 0
		src.form_7 = 0
		src.form_8 = 0

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec

		src.overlays -= src.mystic_elec
		src.overlays -= demon_elec_2
		src.overlays -= demon_elec

		src.icon = 'Chaos Demon 1.dmi'
		src.Power_Redefine()
		src.Skin_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0

		return
	else
		return