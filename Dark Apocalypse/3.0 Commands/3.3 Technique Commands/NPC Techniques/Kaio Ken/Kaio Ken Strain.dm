mob/proc/Kaio_Strain()

	var/kaio_strain
	if(src.powerlevel <= 10000)
		kaio_strain = rand(3,5)
	if(src.powerlevel <= 45000 && src.powerlevel > 10000)
		kaio_strain = rand(2,4)
	if(src.powerlevel <= 100000  && src.powerlevel > 45000)
		kaio_strain = rand(1,2)
	if(src.powerlevel >= 100000)
		kaio_strain = rand(0,1)

	if(src.fatigue > src.fatigue_max)
		src.fatigue = src.fatigue_max

	if(!src.kaioken)
		src.kaioken = 0
		return
	else
		src.fatigue += kaio_strain
		if(src.fatigue >= src.fatigue_max)
			view(6) << "<font size = -1><B><font color = red>[src]'s collapses from the strain of Kaioken!"
			src.kaioken = 0
			src.sight |= BLIND
			src.underlays -= kaio_aura
			spawn() src.Power_Redefine()
			sleep(100)
			src.sight &= ~BLIND
		else
			spawn(35) src.Kaio_Strain()