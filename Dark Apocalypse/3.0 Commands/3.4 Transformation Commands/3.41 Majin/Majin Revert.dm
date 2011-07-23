mob/proc/Majin_Revert()
	if(src.KO)
		return

	if(src.form_3 && !src.form_4)

		src.frozen = 1
		src.icon_state = "enrage"

		sleep(10)

		src.form_3 = 0

		src.aura_on = 0
		src.underlays -= aura
		src.underlays -= ssj_aura

		src.overlays -= src.small_blue_elec
		src.overlays -= src.big_blue_elec

		src.overlays -= src.small_red_elec
		src.overlays -= src.big_red_elec

		src.overlays -= src.mystic_elec

		src.overlays -= src.hair_ssj3
		src.overlays -= src.hair_ssj4

		src.Power_Redefine()
		src.Skin_Apply()
		src.Hair_Apply()

		oview() << "[src.name] has reverted from his Transformed state."
		src.icon_state = ""
		src.frozen = 0
		src.doing = 0
		return
	else
		return