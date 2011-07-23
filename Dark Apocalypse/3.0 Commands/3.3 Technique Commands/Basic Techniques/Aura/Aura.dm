mob
	var
		aura = 'Aura.dmi'
		ssj_aura = 'SSJ Aura.dmi'
		kaio_aura = 'AuraKaioken.dmi'
		sh2_aura = 'SH2 Aura.dmi'

		aura_on = 0

		raura
		gaura
		baura
		auratech = 0

mob/learn
	verb
		Aura()
			set category = "Techniques"
			if(src.monkey)
				return

			switch(alert("Aura Technique?","On or Off?","Aura On","Aura Off"))

				if("Aura On")
					if(src.aura_on)
						return
					else
						if(src.kaioken)
							src.underlays += kaio_aura
							src.aura_on = 1

							return
						else
							if(src.race == "Saiyan" || src.race == "Half Saiyan")
								if(src.form_1 == 1)
									src.underlays += ssj_aura
									src.aura_on = 1


									return
								else
									src.underlays += usr.aura
									src.aura_on = 1

									return



							else
								if(src.race == "Human")
									if(src.form_5)
										src.underlays += sh2_aura

										src.aura_on = 1
										return
									else
										src.underlays += usr.aura

										src.aura_on = 1
										return
								else
									if(src.race == "Tuffle")
										if(src.form_2 || src.form_4)

											src.underlays += ssj_aura
											src.aura_on = 1
										else
											src.underlays += usr.aura
											src.aura_on = 1


									else
										src.underlays += usr.aura
										src.aura_on = 1

										return

				if("Aura Off")
					src.underlays -= sh2_aura
					src.underlays -= sh2_aura
					src.underlays -= sh2_aura
					src.underlays -= usr.aura
					src.underlays -= ssj_aura
					src.underlays -= kaio_aura
					src.underlays -= usr.aura
					src.underlays -= ssj_aura
					src.underlays -= kaio_aura
					src.underlays -= usr.aura
					src.underlays -= ssj_aura
					src.underlays -= kaio_aura
					src.aura_on = 0
					return

			src.afk_time = 0

