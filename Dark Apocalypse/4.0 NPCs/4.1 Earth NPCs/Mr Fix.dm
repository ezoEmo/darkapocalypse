mob
	NPC

		Mr._Fix

			name = "{NPC} Mr. Fix"
			icon = 'Dr Briefs.dmi'
			density = 1
			safe = 1

			powerlevel = 100
			energy_code = 2634523

			New()
				src.CreateName()


			verb
				Talk()
					set category = null
					set src in oview(2)
					switch(input("What do you want to Fix?")in list("Overlays","Underlays","Inventory","Fix Self Training/Resting","Lost Revert/Transform","Fix Focus Training","Fix Dual Train","Fix Regenrate","All","Never Mind"))

						if("Never Mind")
							return

						if("Inventory")
							usr.Inven()

						if("Overlays")
							usr.Over()
							return

						if("Underlays")
							usr.Under()
							return

						if("Fix Regenerate")
							usr.MR()
							return

						if("Fix Dual Train")
							usr.Fix_DT()
							return

						if("Lost Revert/Transform")
							usr.RT()
							return


						if("Fix Self Training/Resting")
							usr.Fix_ST()
							return

						if("All")
							usr.Fix_All()
							return

mob
	proc
		Over()
			src.overlays -= src.overlays
			if(src.race == "Android" && src.form_2)
				src.overlays += src.hair_droid
			if(src.race == "Saiyan")
				if(src.tail_cut)
					src.overlays += tail
					usr<<"Fixed"
			else
				src.Hair_Apply()
		Inven()
			src.speed = src.speed_max
			src.head = "EMPTY"
			src.back = "EMPTY"
			src.chest = "EMPTY"
			src.legs = "EMPTY"
			src.feet = "EMPTY"
			src.arms = "EMPTY"
			src.hands = "EMPTY"
			src.waist = "EMPTY"
			src.underclothes = "EMPTY"
			src.weapon 	= "EMPTY"
			src.scouter = 0
			src.scouter_eq = 0
			src.scouter_channel = 0

			src.armor = 0
			src.armor_eq = 0

			src.under = 0
			src.under_eq = 0

			src.helmet = 0
			src.helmet_eq = 0

			src.gi = 0
			src.gi_eq = 0

			src.turban = 0
			src.turban_eq = 0

			src.capes = 0
			src.capes_eq = 0

			src.gloves = 0
			src.gloves_eq = 0

			src.z_sword = 0

			src.radar = 0

			src.hench_eq = 0
			src.saiyan_eq = 0
			src.weightgi = 0
			src.weightcape = 0
			src.weightarmor = 0
			src.weightarm = 0
			src.weightleg = 0
			src.weightankle = 0
			src.weightwrist = 0
			src.weighthead = 0
			src.G_item = 0
			src.cloak = 0
			src.cloak_eq = 0

			src.swordd = 0
			src.swordd_eq = 0
			src.trunks	= 0
			src.trunks_eq = 0
			src.demonb = 0
			src.demonb_eq = 0
			src.belt = 0
			src.belt_eq = 0

			src.pant = 0
			src.pant_eq = 0
			spawn() src.Over()
			for(var/obj/Equipment/E in src.contents)
				E.equiped = 0
				E.suffix = null



		Under()
			src.underlays -= src.underlays
			usr<<"Fixed"

		MR()
			src.regenerating = 0
			src.regen_dead = 0
			usr<<"Fixed"

		RT()

			if(src.race == "Saiyan" && src.gone_ssj)
				src.contents += new/obj/Transform/Transform
				src.contents += new/obj/Transform/Revert
				usr<<"Fixed"
			else if(src.race == "Half Saiyan" ||src.race == "Demon"||src.race == "Changling"||src.race == "Bio-Android"||src.race == "Human"||src.race == "Namek"||src.race == "Tuffle")
				src.contents += new/obj/Transform/Transform
				src.contents += new/obj/Transform/Revert
				usr<<"Fixed"
			else if(src.learn_invert)
				src.contents += new/obj/Transform/Revert
				usr<<"Fixed"
			else
				src << "You dont have invert power."
				return

		Fix_All()
			src.Hair_Apply()
			src.underlays -= src.underlays
			src.overlays -= src.overlays
			src.dualtrain = 0
			src.dual_delay = 0
			src.doing = 0
			src.waiting = 0
			if(src.race == "Saiyan")
				if(src.tail_cut == 0)
					src.overlays += tail
			src.Inven()
			usr<<"Fixed"

		Fix_ST()
			src.waiting = 0
			src.doing = 0
			usr<<"Fixed"

		Fix_DT()
			src.dualtrain = 0
			src.dual_delay = 0
			usr<<"Fixed"

