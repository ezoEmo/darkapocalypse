mob/var/fatigue_level = 0

mob/proc/Fatigue_Level_Up()

	if(src.fatigue_exp >= src.fatigue_tnl)

		src.fatigue_exp = 0
		src.fatigue_level ++
		src.fatigue_tnl = (src.fatigue_level * src.fatigue_level) * 5
		src << "\white You feel your Endurance increase..."

		if(prob(src.level))
			src.fatigue_max += round(src.level * 0.10)
		else
			src.fatigue_max += rand(1,3)