mob
	proc
		SH_Hair_Apply()
			if(src.hair == "Bald")
				return
			if(src.hair == "Goku")
				src.overlays -= src.goku_hair
				src.overlays -= src.goku_hair
				src.overlays -= src.goku_hair
				src.overlays += src.goku_hair_sh
			if(src.hair == "Adult Gohan")
				src.overlays -= src.gohan_adult_hair
				src.overlays -= src.gohan_adult_hair
				src.overlays -= src.gohan_adult_hair
				src.overlays += src.gohan_adult_hair_sh
			if(src.hair == "Teen Gohan")
				src.overlays -= src.gohan_teen_hair
				src.overlays -= src.gohan_teen_hair
				src.overlays -= src.gohan_teen_hair
				src.overlays += src.gohan_teen_hair_sh
			if(src.hair == "Future Gohan")
				src.overlays -= src.future_gohan_hair
				src.overlays -= src.future_gohan_hair
				src.overlays -= src.future_gohan_hair
				src.overlays += src.future_gohan_hair_sh
			if(src.hair == "Vegeta")
				src.overlays -= src.vegeta_hair
				src.overlays -= src.vegeta_hair
				src.overlays -= src.vegeta_hair
				src.overlays += src.vegeta_hair_sh
			if(src.hair == "Trunks Long")
				src.overlays -= src.trunks_long_hair
				src.overlays -= src.trunks_long_hair
				src.overlays -= src.trunks_long_hair
				src.overlays += src.trunks_long_hair_sh

		SH2_Hair_Apply()
			if(src.hair == "Bald")
				return
			if(src.hair == "Goku")
				src.overlays -= src.goku_hair
				src.overlays -= src.goku_hair
				src.overlays -= src.goku_hair_sh
				src.overlays += src.goku_hair_sh2
			if(src.hair == "Adult Gohan")
				src.overlays -= src.gohan_adult_hair
				src.overlays -= src.gohan_adult_hair
				src.overlays -= src.gohan_adult_hair_sh
				src.overlays += src.gohan_adult_hair_sh2
			if(src.hair == "Teen Gohan")
				src.overlays -= src.gohan_teen_hair
				src.overlays -= src.gohan_teen_hair
				src.overlays -= src.gohan_teen_hair_sh
				src.overlays += src.gohan_teen_hair_sh2
			if(src.hair == "Future Gohan")
				src.overlays -= src.future_gohan_hair
				src.overlays -= src.future_gohan_hair
				src.overlays -= src.future_gohan_hair_sh
				src.overlays += src.future_gohan_hair_sh2
			if(src.hair == "Vegeta")
				src.overlays -= src.vegeta_hair
				src.overlays -= src.vegeta_hair
				src.overlays -= src.vegeta_hair_sh
				src.overlays += src.vegeta_hair_sh2
			if(src.hair == "Trunks Long")
				src.overlays -= src.trunks_long_hair
				src.overlays -= src.trunks_long_hair
				src.overlays -= src.trunks_long_hair_sh
				src.overlays += src.trunks_long_hair_sh2
			if(src.hair == "Raditz")
				src.overlays -= src.raditz_hair
				src.overlays -= src.raditz_hair
				src.overlays -= src.raditz_hair
				src.overlays += src.raditz_hair_sh2


		SSJ_Hair_Apply()
			if(src.hair == "Bald")
				return
			if(src.hair == "Goku")
				src.overlays -= src.goku_hair
				src.overlays -= src.goku_hair
				src.overlays -= src.goku_hair
				src.overlays += src.goku_hair_ssj
			if(src.hair == "Adult Gohan")
				src.overlays -= src.gohan_adult_hair
				src.overlays -= src.gohan_adult_hair
				src.overlays -= src.gohan_adult_hair
				src.overlays += src.gohan_adult_hair_ssj
			if(src.hair == "Teen Gohan")
				src.overlays -= src.gohan_teen_hair
				src.overlays -= src.gohan_teen_hair
				src.overlays -= src.gohan_teen_hair
				src.overlays += src.gohan_teen_hair_ssj
			if(src.hair == "Future Gohan")
				src.overlays -= src.future_gohan_hair
				src.overlays -= src.future_gohan_hair
				src.overlays -= src.future_gohan_hair
				src.overlays += src.future_gohan_hair_ssj
			if(src.hair == "Vegeta")
				src.overlays -= src.vegeta_hair
				src.overlays -= src.vegeta_hair
				src.overlays -= src.vegeta_hair
				src.overlays += src.vegeta_hair_ssj
			if(src.hair == "Trunks Long")
				src.overlays -= src.trunks_long_hair
				src.overlays -= src.trunks_long_hair
				src.overlays -= src.trunks_long_hair
				src.overlays += src.trunks_long_hair_ssj
			if(src.hair == "Raditz")
				src.overlays -= src.raditz_hair
				src.overlays -= src.raditz_hair
				src.overlays -= src.raditz_hair
				src.overlays += src.raditz_hair_ssj


		Hair_Apply()
			if(src.hair == "Bald")
				return

			if(src.hair == "Raditz")
				src.overlays -= src.raditz_hair_ssj
				src.overlays -= src.raditz_hair_ssj
				src.overlays -= src.raditz_hair_sh2
				src.overlays += src.raditz_hair


			if(src.hair == "Goku")
				src.overlays -= src.goku_hair_sh
				src.overlays -= src.goku_hair_sh2
				src.overlays -= src.goku_hair_ssj
				src.overlays -= src.goku_hair_assj
				src.overlays -= src.goku_hair_ussj
				src.overlays -= src.goku_hair_sh
				src.overlays -= src.goku_hair_sh2
				src.overlays -= src.goku_hair_ssj
				src.overlays -= src.goku_hair_assj
				src.overlays -= src.goku_hair_ussj
				src.overlays -= src.goku_hair_sh
				src.overlays -= src.goku_hair_sh2
				src.overlays -= src.goku_hair_ssj
				src.overlays -= src.goku_hair_assj
				src.overlays -= src.goku_hair_ussj
				src.overlays += src.goku_hair
			if(src.hair == "Adult Gohan")
				src.overlays -= src.gohan_adult_hair_sh
				src.overlays -= src.gohan_adult_hair_sh2
				src.overlays -= src.gohan_adult_hair_ssj
				src.overlays -= src.gohan_adult_hair_assj
				src.overlays -= src.gohan_adult_hair_ussj
				src.overlays -= src.gohan_adult_hair_sh
				src.overlays -= src.gohan_adult_hair_sh2
				src.overlays -= src.gohan_adult_hair_ssj
				src.overlays -= src.gohan_adult_hair_assj
				src.overlays -= src.gohan_adult_hair_ussj
				src.overlays -= src.gohan_adult_hair_sh
				src.overlays -= src.gohan_adult_hair_sh2
				src.overlays -= src.gohan_adult_hair_ssj
				src.overlays -= src.gohan_adult_hair_assj
				src.overlays -= src.gohan_adult_hair_ussj
				src.overlays += src.gohan_adult_hair
			if(src.hair == "Teen Gohan")
				src.overlays -= src.gohan_teen_hair_sh
				src.overlays -= src.gohan_teen_hair_sh2
				src.overlays -= src.gohan_teen_hair_ssj
				src.overlays -= src.gohan_teen_hair_assj
				src.overlays -= src.gohan_teen_hair_ussj
				src.overlays -= src.gohan_teen_hair_sh
				src.overlays -= src.gohan_teen_hair_sh2
				src.overlays -= src.gohan_teen_hair_ssj
				src.overlays -= src.gohan_teen_hair_assj
				src.overlays -= src.gohan_teen_hair_ussj
				src.overlays -= src.gohan_teen_hair_sh
				src.overlays -= src.gohan_teen_hair_sh2
				src.overlays -= src.gohan_teen_hair_ssj
				src.overlays -= src.gohan_teen_hair_assj
				src.overlays -= src.gohan_teen_hair_ussj
				src.overlays += src.gohan_teen_hair
			if(src.hair == "Future Gohan")
				src.overlays -= src.future_gohan_hair_sh
				src.overlays -= src.future_gohan_hair_sh2
				src.overlays -= src.future_gohan_hair_ssj
				src.overlays -= src.future_gohan_hair_assj
				src.overlays -= src.future_gohan_hair_ussj
				src.overlays -= src.future_gohan_hair_sh
				src.overlays -= src.future_gohan_hair_sh2
				src.overlays -= src.future_gohan_hair_ssj
				src.overlays -= src.future_gohan_hair_assj
				src.overlays -= src.future_gohan_hair_ussj
				src.overlays -= src.future_gohan_hair_sh
				src.overlays -= src.future_gohan_hair_sh2
				src.overlays -= src.future_gohan_hair_ssj
				src.overlays -= src.future_gohan_hair_assj
				src.overlays -= src.future_gohan_hair_ussj
				src.overlays += src.future_gohan_hair
			if(src.hair == "Vegeta")
				src.overlays -= src.vegeta_hair_sh
				src.overlays -= src.vegeta_hair_sh2
				src.overlays -= src.vegeta_hair_ssj
				src.overlays -= src.vegeta_hair_assj
				src.overlays -= src.vegeta_hair_ussj
				src.overlays -= src.vegeta_hair_sh
				src.overlays -= src.vegeta_hair_sh2
				src.overlays -= src.vegeta_hair_ssj
				src.overlays -= src.vegeta_hair_assj
				src.overlays -= src.vegeta_hair_ussj
				src.overlays -= src.vegeta_hair_sh
				src.overlays -= src.vegeta_hair_sh2
				src.overlays -= src.vegeta_hair_ssj
				src.overlays -= src.vegeta_hair_assj
				src.overlays -= src.vegeta_hair_ussj
				src.overlays += src.vegeta_hair
			if(src.hair == "Trunks Long")
				src.overlays -= src.trunks_long_hair_sh
				src.overlays -= src.trunks_long_hair_sh2
				src.overlays -= src.trunks_long_hair_ssj
				src.overlays -= src.trunks_long_hair_assj
				src.overlays -= src.trunks_long_hair_ussj
				src.overlays -= src.trunks_long_hair_sh
				src.overlays -= src.trunks_long_hair_sh2
				src.overlays -= src.trunks_long_hair_ssj
				src.overlays -= src.trunks_long_hair_assj
				src.overlays -= src.trunks_long_hair_ussj
				src.overlays -= src.trunks_long_hair_sh
				src.overlays -= src.trunks_long_hair_sh2
				src.overlays -= src.trunks_long_hair_ssj
				src.overlays -= src.trunks_long_hair_assj
				src.overlays -= src.trunks_long_hair_ussj
				src.overlays += src.trunks_long_hair


		Skin_Apply()
			if(src.skin == "white")
				src.icon = 'Male - White.dmi'
			if(src.skin == "tan")
				src.icon = 'Male - Tan.dmi'
			if(src.skin == "dark")
				src.icon = 'Male - Dark.dmi'

		USSJ_Apply()
			if(src.skin == "white")
				src.icon = 'Male - White USSJ.dmi'
			if(src.skin == "tan")
				src.icon = 'Male - Tan USSJ.dmi'
			if(src.skin == "dark")
				src.icon = 'Male - Dark USSJ.dmi'