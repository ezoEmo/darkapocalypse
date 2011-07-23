

mob


	proc
		updateHealth()
			var/percent=round(src.powerlevel/src.powerlevel_max*100,10)
			if(percent>200) percent = 101
			else if(percent>100) percent=100
			if(percent<0) percent=0
			for(var/obj/hudMeters/o in src.client.screen)
				o.icon_state=num2text(percent)
			spawn(10)
				src.updateHealth()

		updateki()
			var/percent2=round(src.ki/src.ki_max*100,10)
			if(percent2>200) percent2 = 101
			else if(percent2>100) percent2=100

			if(percent2<0) percent2=0
			for(var/obj/kimeters/o in src.client.screen)
				o.icon_state=num2text(percent2)
			spawn(10)
				src.updateki()

		updateexp()
			var/percent3=round(src.exp/src.tnl*100,10)
			if(percent3>100) percent3=100

			if(percent3<0) percent3=0
			for(var/obj/expmeters/o in src.client.screen)
				o.icon_state=num2text(percent3)
			spawn(10)
				src.updateexp()


obj
	hudMeters
		health_01
			icon='meter_01.dmi'
			icon_state="0"
			layer = 100
			New(client/c)
				screen_loc="3,14"
				c.screen+=src
		health_02
			icon='meter_02.dmi'
			icon_state="0"
			layer = 100
			New(client/c)
				screen_loc="4,14"
				c.screen+=src
		health_03
			icon='meter_03.dmi'
			icon_state="0"
			layer = 100
			New(client/c)
				screen_loc="5,14"
				c.screen+=src
	kimeters
		ki_01
			icon='Ki hud.dmi'
			icon_state="0"
			layer = 100
			New(client/c)
				screen_loc="3,14"
				c.screen+=src
		ki_02
			icon='Ki hud2.dmi'
			icon_state="0"
			layer = 100
			New(client/c)
				screen_loc="4,14"
				c.screen+=src
		ki_03
			icon='Ki hud3.dmi'
			icon_state="0"
			layer = 100
			New(client/c)
				screen_loc="5,14"
				c.screen+=src
	expmeters

		exp_01
			icon='Exp1.dmi'
			icon_state="0"
			layer = 100
			New(client/c)
				screen_loc="2,14"
				c.screen+=src
		exp_02
			icon='Exp2.dmi'
			icon_state="0"
			layer = 100
			New(client/c)
				screen_loc="3,14"
				c.screen+=src
		exp_03
			icon='Exp3.dmi'
			icon_state="0"
			layer = 100
			New(client/c)
				screen_loc="4,14"
				c.screen+=src
		exp_04
			icon='Exp4.dmi'
			icon_state="0"
			layer = 100
			New(client/c)
				screen_loc="5,14"
				c.screen+=src

obj
	Bar1
		icon='Outside.dmi'
		icon_state="1"
		layer = 100
		New(client/c)
			screen_loc="2,14"
			c.screen+=src

	Bar2
		icon='Outside.dmi'
		icon_state="2"
		layer = 100
		New(client/c)
			screen_loc="3,14"
			c.screen+=src
	Bar3
		icon='Outside.dmi'
		icon_state="3"
		layer = 100
		New(client/c)
			screen_loc="4,14"
			c.screen+=src
	Bar4
		icon='Outside.dmi'
		icon_state="4"
		layer = 100
		New(client/c)
			screen_loc="5,14"
			c.screen+=src




obj
	edge2
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,2"
			c.screen+=src

	edge3
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,3"
			c.screen+=src

	edge4
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,4"
			c.screen+=src

	edge5
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,5"
			c.screen+=src

	edge6
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,6"
			c.screen+=src


	edge7
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,7"
			c.screen+=src

	edge8
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,8"
			c.screen+=src

	edge9
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,9"
			c.screen+=src

	edge10
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,10"
			c.screen+=src

	edge11
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,11"
			c.screen+=src

	edge12
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,12"
			c.screen+=src

	edge13
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,13"
			c.screen+=src

	edge14
		icon='Outside.dmi'
		icon_state="L"
		layer = 100
		New(client/c)
			screen_loc="1,14"
			c.screen+=src

	edge15
		icon='Outside.dmi'
		icon_state="LB"
		layer = 100
		New(client/c)
			screen_loc="1,1"
			c.screen+=src

	edge16
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="2,1"
			c.screen+=src

	edge17
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="3,1"
			c.screen+=src

	edge18
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="4,1"
			c.screen+=src

	edge19
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="5,1"
			c.screen+=src

	edge20
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="6,1"
			c.screen+=src


	edge21
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="7,1"
			c.screen+=src

	edge22
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="8,1"
			c.screen+=src

	edge23
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="9,1"
			c.screen+=src

	edge24
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="10,1"
			c.screen+=src

	edge25
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="11,1"
			c.screen+=src

	edge26
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="12,1"
			c.screen+=src


	edge27
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="13,1"
			c.screen+=src

	edge28
		icon='Outside.dmi'
		icon_state="B"
		layer = 100
		New(client/c)
			screen_loc="14,1"
			c.screen+=src


	edge30
		icon='Outside.dmi'
		icon_state="RB"
		layer = 100
		New(client/c)
			screen_loc="15,1"
			c.screen+=src

	edge31
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,2"
			c.screen+=src

	edge32
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,3"
			c.screen+=src


	edge33
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,4"
			c.screen+=src

	edge34
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,5"
			c.screen+=src

	edge35
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,6"
			c.screen+=src

	edge36
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,7"
			c.screen+=src

	edge37
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,8"
			c.screen+=src

	edge38
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,9"
			c.screen+=src

	edge39
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,10"
			c.screen+=src

	edge40
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,11"
			c.screen+=src


	edge41
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,12"
			c.screen+=src

	edge42
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,13"
			c.screen+=src

	edge43
		icon='Outside.dmi'
		icon_state="R"
		layer = 100
		New(client/c)
			screen_loc="15,14"
			c.screen+=src

	edge44
		icon='Outside.dmi'
		icon_state="RT"
		layer = 100
		New(client/c)
			screen_loc="15,15"
			c.screen+=src

	edge45
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="14,15"
			c.screen+=src

	edge46
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="13,15"
			c.screen+=src


	edge47
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="12,15"
			c.screen+=src

	edge48
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="11,15"
			c.screen+=src

	edge49
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="10,15"
			c.screen+=src

	edge50
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="9,15"
			c.screen+=src

	edge51
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="8,15"
			c.screen+=src

	edge52
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="7,15"
			c.screen+=src

	edge53
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="6,15"
			c.screen+=src

	edge54
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="5,15"
			c.screen+=src

	edge55
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="4,15"
			c.screen+=src

	edge56
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="3,15"
			c.screen+=src

	edge57
		icon='Outside.dmi'
		icon_state="T"
		layer = 100
		New(client/c)
			screen_loc="2,15"
			c.screen+=src


	edge58
		icon='Outside.dmi'
		icon_state="LT"
		layer = 100
		New(client/c)
			screen_loc="1,15"
			c.screen+=src

