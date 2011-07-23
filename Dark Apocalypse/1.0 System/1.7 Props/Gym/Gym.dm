
obj/Gym
	Weight
		icon = 'Gym.dmi'
		icon_state = "Weight"
		layer = MOB_LAYER + 5

		var
			lift = 0
		verb
			Lift()
				set category = "Training"
				set src in oview(0)
				var/str_gain = rand(usr.level,(usr.level * 2))
				if(usr.fatigue >= usr.fatigue_max)
					usr << "You are too tired to Lift Weights!"
					return

				if(usr.doing)
					return

				if(src.lift)
					return
				else
					if(usr.strength_max <= (usr.powerlevel_max * 3))

						src.lift = 1
						if(!usr)return
						usr.frozen = 1
						src.icon_state = "W-Lift"
						usr.icon_state = "lift"
						sleep(22)
						src.icon_state = "Weight"
						usr.icon_state = ""
						usr.exp += round(rand(5,25) + usr.level/2)
						usr.Level_Up()
						usr.frozen = 0
						if(prob(32))

							usr.strength_max += str_gain
							usr.strength += str_gain
							if(prob(10))
								usr << "\white You feel your Muscles bulge slightly..."
						usr.fatigue += rand(5,9)

						if(usr.fatigue >= usr.fatigue_max)
							usr.fatigue = usr.fatigue_max

						sleep(5)
						src.lift = 0
					else
						usr << "\white You have reached your maximum strength."
						return

	Treadmill
		icon = 'Gym.dmi'
		icon_state = "Treadmill"
		layer = MOB_LAYER + 5

		var
			run = 0
		verb
			Run_on_Treadmill()
				set category = "Training"
				set src in oview(0)

				if(usr.fatigue >= usr.fatigue_max)
					usr << "You are too tired to use the Treadmill!"
					return

				if(usr.doing)
					return

				if(src.run)
					return

				else
					src.run = 1
					src.icon_state = "Treadmill On"
					usr.exp += round(rand(20,75) + usr.level/2)
					usr.fatigue_exp += round(rand(20,75) + usr.level)
					usr.Level_Up()
					usr.Fatigue_Level_Up()

					usr.fatigue += rand(6,10)

					if(usr.fatigue >= usr.fatigue_max)
						usr.fatigue = usr.fatigue_max

					usr.dir = EAST
					if(!usr)return
					usr.icon_state = "run"
					usr.frozen = 1
					usr.doing = 1
					sleep(50)
					src.icon_state = "Treadmill"
					src.run = 0
					if(!usr)return
					usr.icon_state = ""
					usr.frozen = 0
					usr.doing = 0
	Training_Dummy
		icon = 'Gym.dmi'
		icon_state = "Dummy"
		density = 1

		var
			hit = 0

		verb
			Hit_the_Dummy()
				set category = "Training"
				set src in oview(1)

				if(usr.fatigue >= usr.fatigue_max)
					usr << "You are too tired to use the Training Dummy!"
					return

				if(usr.doing)
					return

				usr.doing = 1
				usr.unarmed_exp += rand(10,20) + usr.level
				usr.exp += rand(1,5) + usr.level/2
				usr.fatigue += rand(1,3)
				spawn(5)usr.UA_Level_Up()
				spawn(5)usr.Level_Up()
				flick("attack",usr)
				spawn(5)usr.doing = 0

				if(usr.fatigue >= usr.fatigue_max)
					usr.fatigue = usr.fatigue_max

			Shoot_the_Dummy()
				set category = "Training"
				set src in oview(4)

				if(usr.ki <= 0)
					usr << "You are too tired to use the Training Dummy!"
					return

				if(usr.fatigue >= usr.fatigue_max)
					usr << "You are too tired to use the Training Dummy!"
					return

				if(usr.doing)
					return

				usr.doing = 1
				usr.ki_exp += rand(10,20) + usr.level
				usr.exp += rand(1,5) + usr.level/2
				usr.ki -= rand(10,50) + usr.level
				usr.fatigue += rand(0,2)
				spawn(5)usr.Ki_Level_Up()
				spawn(5)usr.Level_Up()
				missile('Ki Attack.dmi', usr, src)
				spawn(5)usr.doing = 0

				if(usr.fatigue >= usr.fatigue_max)
					usr.fatigue = usr.fatigue_max


	Counter_Machine
		icon = 'Counter Machine.dmi'
		icon_state = ""
		density = 1

		var
			lift = 0

		verb
			Hit_the_Machine()
				set category = "Training"
				set src in oview(1)
				var/str_gain = rand(usr.level,(usr.level * 2))
				if(usr.fatigue >= usr.fatigue_max)
					usr << "You are too tired to Hit this!"
					return

				if(usr.doing)
					return

				if(src.lift)
					return
				else
					if(usr.defence_max <= (usr.powerlevel_max * 3))

						src.lift = 1
						if(!usr)return
						usr.frozen = 1
						flick("Hit",src)
						sleep(22)
						usr.exp += round(rand(5,25) + usr.level/2)
						usr.Level_Up()
						usr.frozen = 0
						if(prob(32))

							usr.defence_max += str_gain
							usr.defence += str_gain
							flick("Counter",src)
							if(prob(10))
								usr << "\white your defense rises as the machine counters your attack..."
						usr.fatigue += rand(5,9)

						if(usr.fatigue >= usr.fatigue_max)
							usr.fatigue = usr.fatigue_max

						sleep(5)
						src.lift = 0

					else
						usr << "\white You have reached your maximum defense."
						return


obj/Guild
	Guild_Weight
		icon = 'Gym.dmi'
		icon_state = "Weight"
		layer = MOB_LAYER + 5

		var
			lift = 0
		verb
			Lift()
				set category = "Training"
				set src in oview(0)

				if(usr.fatigue >= usr.fatigue_max)
					usr << "You are too tired to Lift Weights!"
					return

				if(usr.doing)
					return

				if(src.lift)
					return
				else
					if(usr.strength_max <= (usr.powerlevel_max * 3))

						src.lift = 1
						if(!usr)return
						usr.frozen = 1
						src.icon_state = "W-Lift"
						sleep(22)
						if(!usr)return
						src.icon_state = "Weight"
						usr.exp += round(rand(2,10) + usr.level/2)
						usr.Level_Up()
						usr.frozen = 0
						if(prob(32))
							var/str_gain = rand(usr.level,(usr.level * 3))
							usr.strength_max += str_gain
							usr.strength += str_gain
							if(prob(10))
								usr << "\white You feel your Muscles bulge slightly..."
						usr.fatigue += rand(3,6)

						if(usr.fatigue >= usr.fatigue_max)
							usr.fatigue = usr.fatigue_max

						sleep(5)
						src.lift = 0
					else
						usr << "\white You have reached your maximum strength."
						return

	Guild_Treadmill
		icon = 'Gym.dmi'
		icon_state = "Treadmill"
		layer = MOB_LAYER + 5

		var
			run = 0
		verb
			Run_on_Treadmill()
				set category = "Training"
				set src in oview(0)

				if(usr.fatigue >= usr.fatigue_max)
					usr << "You are too tired to use the Treadmill!"
					return

				if(usr.doing)
					return

				else
					src.run = 1
					src.icon_state = "Treadmill On"
					usr.exp += round(rand(4,14) + usr.level/2)
					usr.fatigue_exp += round(rand(20,75) + usr.level)
					usr.Level_Up()
					usr.Fatigue_Level_Up()

					usr.fatigue += rand(4,8)

					if(usr.fatigue >= usr.fatigue_max)
						usr.fatigue = usr.fatigue_max

					usr.dir = EAST
					if(!usr)return
					usr.icon_state = "run"
					usr.frozen = 1
					usr.doing = 1
					sleep(50)
					src.icon_state = "Treadmill"
					src.run = 0
					if(!usr)return
					usr.icon_state = ""
					usr.frozen = 0
					usr.doing = 0

	Guild_Training_Dummy
		icon = 'Gym.dmi'
		icon_state = "Dummy"
		density = 1

		var
			hit = 0

		verb
			Hit_the_Dummy()
				set category = "Training"
				set src in oview(1)

				if(usr.fatigue >= usr.fatigue_max)
					usr << "You are too tired to use the Training Dummy!"
					return

				if(usr.doing)
					return

				usr.doing = 1
				usr.unarmed_exp += rand(10,20) * usr.level
				usr.exp += rand(1,5) + usr.level/2
				usr.fatigue += rand(1,3)
				spawn(5)usr.UA_Level_Up()
				spawn(5)usr.Level_Up()
				flick("attack",usr)
				spawn(5)usr.doing = 0

				if(usr.fatigue >= usr.fatigue_max)
					usr.fatigue = usr.fatigue_max

			Shoot_the_Dummy()
				set category = "Training"
				set src in oview(4)

				if(usr.ki <= 0)
					usr << "You are too tired to use the Training Dummy!"
					return

				if(usr.fatigue >= usr.fatigue_max)
					usr << "You are too tired to use the Training Dummy!"
					return

				if(usr.doing)
					return

				usr.doing = 1
				usr.ki_exp += rand(10,20) * usr.level
				usr.exp += rand(1,5) + usr.level/2
				usr.ki -= rand(10,50) + usr.level
				usr.fatigue += rand(0,2)
				spawn(5)usr.Ki_Level_Up()
				spawn(5)usr.Level_Up()
				missile('Ki Attack.dmi', usr, src)
				spawn(5)usr.doing = 0

				if(usr.fatigue >= usr.fatigue_max)
					usr.fatigue = usr.fatigue_max

	Guild_Counter_Machine
		icon = 'Counter Machine.dmi'
		icon_state = ""
		density = 1

		var
			lift = 0

		verb
			Hit_the_Machine()
				set category = "Training"
				set src in oview(1)

				if(usr.fatigue >= usr.fatigue_max)
					usr << "You are too tired to Hit this!"
					return

				if(usr.doing)
					return

				if(src.lift)
					return
				else
					if(usr.defence_max <= (usr.powerlevel_max * 3))

						src.lift = 1
						if(!usr)return
						usr.frozen = 1
						flick("Hit",src)
						sleep(22)
						usr.exp += round(rand(5,25) + usr.level/2)
						usr.Level_Up()
						usr.frozen = 0
						if(prob(32))
							var/str_gain = rand(usr.level,(usr.level * 3))
							usr.defence_max += str_gain
							usr.defence += str_gain
							flick("Counter",src)
							if(prob(10))
								usr << "\white your defense rises as the machine counters your attack..."
						usr.fatigue += rand(5,9)

						if(usr.fatigue >= usr.fatigue_max)
							usr.fatigue = usr.fatigue_max

						sleep(5)
						src.lift = 0
					else
						usr << "\white You have reached your maximum defense."
						return
