mob
	proc
		Hair()
			switch(input("Hair Style: ???", "Customization", text) in list ("Goku","Vegeta","Adult Gohan","Teen Gohan","Future Gohan","Trunks Long","Raditz","Bald"))

				if("Bald")
					src.hair = "Bald"

				if("Goku")
					src.hair = "Goku"
					src.overlays += src.goku_hair


				if("Vegeta")
					src.hair = "Vegeta"
					src.overlays += src.vegeta_hair

				if("Adult Gohan")
					src.hair = "Adult Gohan"

					src.overlays += src.gohan_adult_hair

				if("Teen Gohan")
					src.hair = "Teen Gohan"
					src.overlays += src.gohan_teen_hair

				if("Trunks Long")
					src.hair = "Trunks Long"
					src.overlays += src.trunks_long_hair

				if("Future Gohan")
					src.hair = "Future Gohan"
					src.overlays += src.future_gohan_hair

				if("Raditz")
					src.hair = "Raditz"
					src.overlays += src.raditz_hair