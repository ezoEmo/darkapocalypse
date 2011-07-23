mob/var/level_tp = 0
mob/var/level_chance = 0

mob/proc/Level_Up()

	var/powerlevel_bonus = 0
	var/ki_bonus = 0
	var/st_bonus = 0
	var/de_bonus = 0
	if(src.exp >= src.tnl)
		switch(src.mode)
			if(1)
				switch(src.race)
				/*	if("Saiyan")
						powerlevel_bonus = rand(600,2000)//high stat 1
						ki_bonus = rand(100,1000)//low stat
						st_bonus = rand(400,1000)//high stat 2
						de_bonus = rand(200,500)//average stat

					if("Half Saiyan")
						powerlevel_bonus = rand(600,2000)//high stat 1
						ki_bonus = rand(100,1000)//low stat
						st_bonus = rand(200,500)//average stat
						de_bonus = rand(400,1000)//high stat 2

					if("Changling")
						powerlevel_bonus = rand(600,2000)//high stat 1
						ki_bonus = rand(600,2000)//high stat 2
						st_bonus = rand(200,500)//average stat
						de_bonus = rand(100,300)//low stat
					if("Human")
						powerlevel_bonus = rand(350,1300)//average stat
						ki_bonus = rand(100,1000)//low stat
						st_bonus = rand(400,1000)//high stat 1
						de_bonus = rand(400,1000)//high stat 2
					if("Tuffle")
						powerlevel_bonus = rand(350,1300)//average stat
						ki_bonus = rand(100,1000)//low stat
						st_bonus = rand(400,1000)//high stat 1
						de_bonus = rand(400,1000)//high stat 2
					if("Demon")
						powerlevel_bonus = rand(350,1300)//average stat
						ki_bonus = rand(600,2000)//high stat 1
						st_bonus = rand(400,1000)//high stat 2
						de_bonus = rand(100,300)//low stat
					if("Bio-Android")
						powerlevel_bonus = rand(600,2000)//high stat 1
						ki_bonus = rand(100,1000)//low stat
						st_bonus = rand(400,1000)//high stat 2
						de_bonus = rand(200,500)//average stat
					if("Majin")
						powerlevel_bonus = rand(600,2000)//high stat 1
						ki_bonus = rand(350,1300)//average stat
						st_bonus = rand(100,300)//low stat
						de_bonus = rand(400,1000)//high stat 2
					if("Namek")
						powerlevel_bonus = rand(350,1300)//average stat
						ki_bonus = rand(600,2000)//high stat 1
						st_bonus = rand(100,300)//low stat
						de_bonus = rand(400,1000)//high stat 2
					if("Android")
						powerlevel_bonus = rand(10,1000)//low stat
						ki_bonus = rand(400,2000)//high stat 1
						st_bonus = rand(400,1000)//high stat 2
						de_bonus = rand(200,500)//average stat
					if("Dragon")
						powerlevel_bonus = rand(600,2000)//high stat 1
						ki_bonus = rand(100,1000)//low stat
						st_bonus = rand(400,1000)//high stat 2
						de_bonus = rand(200,500)//average stat
					if("Bojack")
						powerlevel_bonus = rand(600,2000)//high stat 1
						ki_bonus = rand(100,1000)//low stat
						st_bonus = rand(400,1000)//high stat 2
						de_bonus = rand(200,500)//average stat
					if("Saibaman")
						powerlevel_bonus = rand(6000,10000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("All Star")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)
					if("Kai")
						powerlevel_bonus = rand(3000,6000)
						ki_bonus = rand(7000,12000)
						st_bonus = rand(6000,10000)
						de_bonus = rand(2000,4500)
					else
						powerlevel_bonus = rand(3000,6000)
						ki_bonus = rand(7000,12000)
						st_bonus = rand(6000,10000)
						de_bonus = rand(2000,4500)

			if(2)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(1000,4000)
						ki_bonus = rand(250,1400)
						st_bonus = rand(805,2000)
						de_bonus = rand(400,1300)
					if("Half Saiyan")
						powerlevel_bonus = rand(1000,4000)
						ki_bonus = rand(250,14000)
						st_bonus = rand(400,13000)
						de_bonus = rand(850,20000)
					if("Changling")
						powerlevel_bonus = rand(1000,4000)
						ki_bonus = rand(1000,4000)
						st_bonus = rand(400,1300)
						de_bonus = rand(400,1300)
					if("Human")
						powerlevel_bonus = rand(605,20000)
						ki_bonus = rand(250,1400)
						st_bonus = rand(850,2000)
						de_bonus = rand(850,2000)
					if("Tuffle")
						powerlevel_bonus = rand(65,200)
						ki_bonus = rand(25,140)
						st_bonus = rand(85,200)
						de_bonus = rand(85,200)
					if("Demon")
						powerlevel_bonus = rand(65,200)
						ki_bonus = rand(100,400)
						st_bonus = rand(85,200)
						de_bonus = rand(40,130)
					if("Bio-Android")
						powerlevel_bonus = rand(100,400)
						ki_bonus = rand(25,140)
						st_bonus = rand(85,200)
						de_bonus = rand(40,130)
					if("Majin")
						powerlevel_bonus = rand(100,400)
						ki_bonus = rand(65,200)
						st_bonus = rand(25,85)
						de_bonus = rand(85,200)
					if("Namek")
						powerlevel_bonus = rand(65,200)
						ki_bonus = rand(100,400)
						st_bonus = rand(25,85)
						de_bonus = rand(85,200)
					if("Android")
						powerlevel_bonus = rand(25,140)
						ki_bonus = rand(100,400)
						st_bonus = rand(40,130)
						de_bonus = rand(85,130)
					if("Bojack")
						powerlevel_bonus = rand(65,200)
						ki_bonus = rand(100,400)
						st_bonus = rand(25,85)
						de_bonus = rand(85,200)
					if("Dragon")
						powerlevel_bonus = rand(25,140)
						ki_bonus = rand(100,400)
						st_bonus = rand(40,130)
						de_bonus = rand(85,130)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					else
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
			if(3)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(300,700)
						ki_bonus = rand(100,250)
						st_bonus = rand(200,600)
						de_bonus = rand(150,400)
					if("Half Saiyan")
						powerlevel_bonus = rand(300,700)
						ki_bonus = rand(100,250)
						st_bonus = rand(150,400)
						de_bonus = rand(200,600)
					if("Changling")
						powerlevel_bonus = rand(300,700)
						ki_bonus = rand(300,700)
						st_bonus = rand(150,400)
						de_bonus = rand(100,250)
					if("Human")
						powerlevel_bonus = rand(200,600)
						ki_bonus = rand(100,250)
						st_bonus = rand(200,600)
						de_bonus = rand(200,600)
					if("Tuffle")
						powerlevel_bonus = rand(200,600)
						ki_bonus = rand(100,250)
						st_bonus = rand(200,600)
						de_bonus = rand(200,600)
					if("Demon")
						powerlevel_bonus = rand(200,600)
						ki_bonus = rand(300,700)
						st_bonus = rand(200,600)
						de_bonus = rand(100,250)
					if("Bio-Android")
						powerlevel_bonus = rand(300,700)
						ki_bonus = rand(100,250)
						st_bonus = rand(200,600)
						de_bonus = rand(150,400)
					if("Majin")
						powerlevel_bonus = rand(300,700)
						ki_bonus = rand(200,600)
						st_bonus = rand(100,250)
						de_bonus = rand(200,600)
					if("Namek")
						powerlevel_bonus = rand(200,600)
						ki_bonus = rand(300,700)
						st_bonus = rand(100,250)
						de_bonus = rand(200,600)
					if("Android")
						powerlevel_bonus = rand(100,250)
						ki_bonus = rand(300,700)
						st_bonus = rand(200,600)
						de_bonus = rand(150,400)
					if("Dragon")
						powerlevel_bonus = rand(200,600)
						ki_bonus = rand(300,700)
						st_bonus = rand(100,250)
						de_bonus = rand(200,600)
					if("Bojack")
						powerlevel_bonus = rand(100,250)
						ki_bonus = rand(300,700)
						st_bonus = rand(200,600)
						de_bonus = rand(150,400)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					else
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
			if(4)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(700,1200)
						ki_bonus = rand(300,600)
						st_bonus = rand(600,1000)
						de_bonus = rand(400,750)
					if("Half Saiyan")
						powerlevel_bonus = rand(700,1200)
						ki_bonus = rand(300,600)
						st_bonus = rand(400,750)
						de_bonus = rand(600,1000)
					if("Changling")
						powerlevel_bonus = rand(700,1200)
						ki_bonus = rand(700,1200)
						st_bonus = rand(400,750)
						de_bonus = rand(200,450)
					if("Human")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(300,600)
						st_bonus = rand(600,1000)
						de_bonus = rand(600,1000)
					if("Tuffle")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(300,600)
						st_bonus = rand(600,1000)
						de_bonus = rand(600,1000)
					if("Demon")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					if("Bio-Android")
						powerlevel_bonus = rand(700,1200)
						ki_bonus = rand(300,600)
						st_bonus = rand(600,1000)
						de_bonus = rand(400,750)
					if("Majin")
						powerlevel_bonus = rand(700,1200)
						ki_bonus = rand(600,1000)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Namek")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Android")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					if("Bojack")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Dragon")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					else
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)

			if(5)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(1400,3000)
						ki_bonus = rand(700,1300)
						st_bonus = rand(1000,1700)
						de_bonus = rand(700,1200)
					if("Half Saiyan")
						powerlevel_bonus = rand(1400,3000)
						ki_bonus = rand(700,1300)
						st_bonus = rand(700,1200)
						de_bonus = rand(1000,1700)
					if("Changling")
						powerlevel_bonus = rand(1400,3000)
						ki_bonus = rand(1400,3000)
						st_bonus = rand(700,1200)
						de_bonus = rand(450,900)
					if("Human")
						powerlevel_bonus = rand(1000,2500)
						ki_bonus = rand(700,1300)
						st_bonus = rand(1000,1700)
						de_bonus = rand(1000,1700)
					if("Tuffle")
						powerlevel_bonus = rand(1000,2500)
						ki_bonus = rand(700,1300)
						st_bonus = rand(1000,1700)
						de_bonus = rand(1000,1700)
					if("Demon")
						powerlevel_bonus = rand(1000,2500)
						ki_bonus = rand(1400,3000)
						st_bonus = rand(1000,1700)
						de_bonus = rand(450,900)
					if("Bio-Android")
						powerlevel_bonus = rand(1400,3000)
						ki_bonus = rand(700,1300)
						st_bonus = rand(1000,1700)
						de_bonus = rand(700,1200)
					if("Majin")
						powerlevel_bonus = rand(1400,3000)
						ki_bonus = rand(1000,2500)
						st_bonus = rand(450,900)
						de_bonus = rand(1000,1700)
					if("Namek")
						powerlevel_bonus = rand(1000,2500)
						ki_bonus = rand(1400,3000)
						st_bonus = rand(450,900)
						de_bonus = rand(1000,1700)
					if("Android")
						powerlevel_bonus = rand(700,1300)
						ki_bonus = rand(1000,2500)
						st_bonus = rand(1000,1700)
						de_bonus = rand(700,1200)
					if("Dragon")
						powerlevel_bonus = rand(1000,2500)
						ki_bonus = rand(1400,3000)
						st_bonus = rand(450,900)
						de_bonus = rand(1000,1700)
					if("Bojack")
						powerlevel_bonus = rand(700,1300)
						ki_bonus = rand(1000,2500)
						st_bonus = rand(1000,1700)
						de_bonus = rand(700,1200)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					else
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
			if(6)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(3000,5000)
						ki_bonus = rand(1500,3400)
						st_bonus = rand(1750,3000)
						de_bonus = rand(1500,2250)
					if("Half Saiyan")
						powerlevel_bonus = rand(3000,5000)
						ki_bonus = rand(1500,3400)
						st_bonus = rand(1500,2250)
						de_bonus = rand(1750,3000)
					if("Changling")
						powerlevel_bonus = rand(3000,5000)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(1500,2250)
						de_bonus = rand(900,1400)
					if("Human")
						powerlevel_bonus = rand(2200,4200)
						ki_bonus = rand(1500,3400)
						st_bonus = rand(1750,3000)
						de_bonus = rand(1750,3000)
					if("Tuffle")
						powerlevel_bonus = rand(2200,4200)
						ki_bonus = rand(1500,3400)
						st_bonus = rand(1750,3000)
						de_bonus = rand(1750,3000)
					if("Demon")
						powerlevel_bonus = rand(2200,4200)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(1750,3000)
						de_bonus = rand(900,1400)
					if("Bio-Android")
						powerlevel_bonus = rand(3000,5000)
						ki_bonus = rand(1500,3400)
						st_bonus = rand(1750,3000)
						de_bonus = rand(1500,2250)
					if("Majin")
						powerlevel_bonus = rand(3000,5000)
						ki_bonus = rand(2200,4200)
						st_bonus = rand(900,1400)
						de_bonus = rand(1750,3000)
					if("Namek")
						powerlevel_bonus = rand(2200,4200)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(900,1400)
						de_bonus = rand(1750,3000)
					if("Android")
						powerlevel_bonus = rand(1500,3400)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(1500,2250)
						de_bonus = rand(1750,3000)
					if("Bojack")
						powerlevel_bonus = rand(2200,4200)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(900,1400)
						de_bonus = rand(1750,3000)
					if("Dragon")
						powerlevel_bonus = rand(1500,3400)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(1500,2250)
						de_bonus = rand(1750,3000)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					else
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
			if(7)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(9000,13000)
						ki_bonus = rand(4500,6500)
						st_bonus = rand(3000,5000)
						de_bonus = rand(2500,4000)
					if("Half Saiyan")
						powerlevel_bonus = rand(9000,13000)
						ki_bonus = rand(4500,6500)
						st_bonus = rand(2500,4000)
						de_bonus = rand(3000,5000)
					if("Changling")
						powerlevel_bonus = rand(9000,13000)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(2500,4000)
						de_bonus = rand(1500,2500)
					if("Human")
						powerlevel_bonus = rand(7000,9000)
						ki_bonus = rand(4500,6500)
						st_bonus = rand(3000,5000)
						de_bonus = rand(3000,5000)
					if("Tuffle")
						powerlevel_bonus = rand(7000,9000)
						ki_bonus = rand(4500,6500)
						st_bonus = rand(3000,5000)
						de_bonus = rand(3000,5000)
					if("Demon")
						powerlevel_bonus = rand(7000,9000)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(3000,5000)
						de_bonus = rand(1500,2500)
					if("Bio-Android")
						powerlevel_bonus = rand(9000,13000)
						ki_bonus = rand(4500,6500)
						st_bonus = rand(3000,5000)
						de_bonus = rand(2500,4000)
					if("Majin")
						powerlevel_bonus = rand(9000,13000)
						ki_bonus = rand(7000,9000)
						st_bonus = rand(1500,2500)
						de_bonus = rand(3000,5000)
					if("Namek")
						powerlevel_bonus = rand(7000,9000)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(1500,2500)
						de_bonus = rand(3000,5000)
					if("Android")
						powerlevel_bonus = rand(4500,6500)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(3000,5000)
						de_bonus = rand(2500,4000)
					if("Dragon")
						powerlevel_bonus = rand(7000,9000)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(1500,2500)
						de_bonus = rand(3000,5000)
					if("Bojack")
						powerlevel_bonus = rand(4500,6500)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(3000,5000)
						de_bonus = rand(2500,4000)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					else
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
			if(8)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(18000,50000)
						ki_bonus = rand(10000,25000)
						st_bonus = rand(1800,2800)
						de_bonus = rand(1000,2200)
					if("Half Saiyan")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Changling")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Human")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Tuffle")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Demon")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Bio-Android")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Majin")
						powerlevel_bonus = rand(150000,300000)
						ki_bonus = rand(150000,300000)
						st_bonus = rand(5000,15000)
						de_bonus = rand(5000,15000)
					if("Namek")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Android")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Bojack")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Dragon")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					else
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)*/




					if("Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Half Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Changling")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Human")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Tuffle")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bio-Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Majin")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					if("Namek")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Dragon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Saibaman")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Kai")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat


					if("Bojack")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Good Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Makenshi")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Legend")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("All Star")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					else
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)
			if(2)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Half Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Changling")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Human")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Tuffle")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bio-Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Majin")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					if("Namek")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bojack")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Dragon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Saibaman")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Kai")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Good Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Makenshi")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Legend")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("All Star")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					else
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)
			if(3)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Half Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Changling")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Human")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Tuffle")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bio-Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Majin")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					if("Namek")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Dragon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bojack")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Saibaman")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Kai")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Good Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Makenshi")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Legend")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("All Star")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					else
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)
			if(4)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Half Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Changling")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Human")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Tuffle")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bio-Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Majin")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					if("Namek")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bojack")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Dragon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Saibaman")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Kai")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Good Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Makenshi")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Legend")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("All Star")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					else
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)
			if(5)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Half Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Changling")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Human")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Tuffle")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bio-Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Majin")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					if("Namek")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Dragon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bojack")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Saibaman")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Kai")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Good Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Makenshi")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Legend")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("All Star")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					else
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)
			if(6)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Half Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Changling")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Human")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Tuffle")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bio-Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Majin")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					if("Namek")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bojack")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Dragon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Saibaman")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Kai")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Good Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Makenshi")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Legend")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("All Star")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					else
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)
			if(7)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Half Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Changling")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Human")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Tuffle")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bio-Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Majin")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					if("Namek")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Dragon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bojack")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Saibaman")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Kai")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Good Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Makenshi")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Legend")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("All Star")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					else
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)
			if(8)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Half Saiyan")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Changling")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Human")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Tuffle")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bio-Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Majin")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					if("Namek")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Android")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Bojack")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Dragon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Saibaman")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat

					if("Kai")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Good Demon")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Makenshi")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("Legend")
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)//average stat
					if("All Star")
						powerlevel_bonus = rand(60000000,2000000000)//high stat 1
						ki_bonus = rand(10000000,100000000)//low stat
						st_bonus = rand(40000000,100000000)//high stat 2
						de_bonus = rand(20000000,500000000)//average stat
					else
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)


		src.exp -= src.tnl
		src.level ++
		src.level_tp ++
		src.level_chance ++

/*		src << "<center><I>------------------------------</I></center>"
		src << "<center><font color = #FBEC5D>« Level Up: \white [src] <font color = #FBEC5D> Level: \white [src.level] <font color = #FBEC5D>»</font></center>"
		if(powerlevel_bonus >=1)
			src << "<center><I> \yellow Your stored energy explodes as your power level grows  +[powerlevel_bonus]</center>"

		if(ki_bonus >=1)
			src << "<center><I> \blue Your stored energy explodes as your ki grows  +[ki_bonus]</center>"

		if(st_bonus >= 1)
			src << "<center><I> \green Your stored energy explodes as your strength grows  +[st_bonus]</center>"

		if(de_bonus >= 1)
			src << "<center><I> \red Your stored energy explodes as your defense grows \red +[de_bonus]</center>"

		if(src.level_tp >= 5)
			src << "<center><I>Training Points \white +1</center>"
			src.tp += 1
			src.level_tp = 0

		if(src.kk_quest2_start && !src.kk_quest2_complete)
			src.Kai_levels += 1

		if(src.babadi_quest_start && !src.babadi_quest_complete)
			src.babadi_levels += 1

		if(src.level_chance >= 15)
			var/chance = rand(1,5)
			var/chance_up = rand(1,2)

			if(chance == 1)
				if(src.block_max < 55)
					src << "<center><I>Chance to Block \white +[chance_up]%</center>"
					src.block += chance_up
					src.block_max += chance_up
					src.level_chance = 0
			if(chance == 2)
				if(src.reflect_max < 55)
					src << "<center><I>Chance to Reflect \white +[chance_up]%</center>"
					src.reflect += chance_up
					src.reflect_max += chance_up
					src.level_chance = 0
			if(chance == 3)
				if(src.dodge_max < 55)
					src << "<center><I>Chance to Dodge \white +[chance_up]%</center>"
					src.dodge += chance_up
					src.dodge_max += chance_up
					src.level_chance = 0
			if(chance == 4)
				if(src.critical_max < 55)
					src << "<center><I>Chance to Critical \white +[chance_up]%</center>"
					src.critical += chance_up
					src.critical_max += chance_up
					src.level_chance = 0
			if(chance == 5)
				if(src.counter_max < 55)
					src << "<center><I>Chance to Counter \white +[chance_up]%</center>"
					src.counter += chance_up
					src.counter_max += chance_up
					src.level_chance = 0
		src << "<center><I>------------------------------</I></center>"
*/

		src.powerlevel_max += powerlevel_bonus
		src.ki_max += ki_bonus
		src.unarmed_max += 5
		src.ki_skill_max  += 5

		src.strength += st_bonus
		src.defence += de_bonus
		src.strength_max += st_bonus
		src.defence_max += de_bonus
		src.Mode()
		src.Exp_Check()


		if(src.train_chromosome)
			spawn(5) src.Train_SSJ()

		spawn(5) src.Skill_Gain()
		spawn(5) src.Level_Up()

mob
	proc
		Train_SSJ()
			if(!src.gone_ssj && src.level >= 50)
				if(src.race == "Half Saiyan")
					if(src.powerlevel_max >= 75000)
						src.gone_ssj = 1
						src.icon_state = "enrage"

						view(6) << "\white <I>[src.name] feels an uncontrollable rage burning in them as they remember those Saiyan's who have Surpassed them"
						sleep(25)
						view(6) << "\white <I>[src.name] clentchs their fists, as tears well in their eyes. Veins protrude from their hands and forehead as the ground rumbles"
						sleep(25)
						view(6) << "\white [src.name]: I AM THE STRONGEST OF THE SAIYAN'S! NO ONE SHALL SURPASS ME!!"
						src.icon_state = ""

						src.contents += new/obj/Transform/Transform
						src.contents += new/obj/Transform/Revert

						src.Half_Saiyan_Trans()
						Explode(new /Effect/BasicBoom(src.loc,1,3))

						sleep(25)

						var/chance = rand(30,60)

						if(prob(chance))
							src << "You are unable to fully control your Super Saiyan state!"
							src.Half_Saiyan_Revert()
				else
					if(src.race == "Saiyan")
						if(src.powerlevel_max >= 85000)
							src.gone_ssj = 1
							src.icon_state = "enrage"

							view(6) << "\white <I>[src.name] feels an uncontrollable rage burning in them as they remember those Saiyan's who have Surpassed them"
							sleep(25)
							view(6) << "\white <I>[src.name] clentchs their fists, as tears well in their eyes. Veins protrude from their hands and forehead as the ground rumbles"
							sleep(25)
							view(6) << "\white [src.name]: I AM THE STRONGEST OF THE SAIYAN'S! NO ONE SHALL SURPASS ME!!"
							src.icon_state = ""

							src.contents += new/obj/Transform/Transform
							src.contents += new/obj/Transform/Revert

							src.Half_Saiyan_Trans()
							Explode(new /Effect/BasicBoom(src.loc,1,3))

							sleep(25)

							var/chance = rand(30,60)

							if(prob(chance))
								src << "You are unable to fully control your Super Saiyan state!"
								src.Saiyan_Revert()

			else
				return


mob/proc
	Mode()
		if(src.level == 10)
			tnl = 6000  //was 7500


mob/proc/Quiet_Level_Up()

	var/powerlevel_bonus = 0
	var/ki_bonus = 0
	var/st_bonus = 0
	var/de_bonus = 0
	if(src.exp >= src.tnl)
		switch(src.mode)
			if(1)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(60,200)//high stat 1
						ki_bonus = rand(10,100)//low stat
						st_bonus = rand(40,100)//high stat 2
						de_bonus = rand(20,50)//average stat

					if("Half Saiyan")
						powerlevel_bonus = rand(60,200)//high stat 1
						ki_bonus = rand(10,100)//low stat
						st_bonus = rand(20,50)//average stat
						de_bonus = rand(40,100)//high stat 2

					if("Changling")
						powerlevel_bonus = rand(60,200)//high stat 1
						ki_bonus = rand(60,200)//high stat 2
						st_bonus = rand(20,50)//average stat
						de_bonus = rand(10,30)//low stat
					if("Human")
						powerlevel_bonus = rand(35,130)//average stat
						ki_bonus = rand(10,100)//low stat
						st_bonus = rand(40,100)//high stat 1
						de_bonus = rand(40,100)//high stat 2
					if("Tuffle")
						powerlevel_bonus = rand(35,130)//average stat
						ki_bonus = rand(10,100)//low stat
						st_bonus = rand(40,100)//high stat 1
						de_bonus = rand(40,100)//high stat 2
					if("Demon")
						powerlevel_bonus = rand(35,130)//average stat
						ki_bonus = rand(60,200)//high stat 1
						st_bonus = rand(40,100)//high stat 2
						de_bonus = rand(10,30)//low stat
					if("Bio-Android")
						powerlevel_bonus = rand(60,200)//high stat 1
						ki_bonus = rand(10,100)//low stat
						st_bonus = rand(40,100)//high stat 2
						de_bonus = rand(20,50)//average stat
					if("Majin")
						powerlevel_bonus = rand(60,200)//high stat 1
						ki_bonus = rand(35,130)//average stat
						st_bonus = rand(10,30)//low stat
						de_bonus = rand(40,100)//high stat 2
					if("Namek")
						powerlevel_bonus = rand(35,130)//average stat
						ki_bonus = rand(60,200)//high stat 1
						st_bonus = rand(10,30)//low stat
						de_bonus = rand(40,100)//high stat 2
					if("Android")
						powerlevel_bonus = rand(10,100)//low stat
						ki_bonus = rand(40,200)//high stat 1
						st_bonus = rand(40,100)//high stat 2
						de_bonus = rand(20,50)//average stat
					if("Dragon")
						powerlevel_bonus = rand(60,200)//high stat 1
						ki_bonus = rand(10,100)//low stat
						st_bonus = rand(40,100)//high stat 2
						de_bonus = rand(20,50)//average stat
					if("Bojack")
						powerlevel_bonus = rand(60,200)//high stat 1
						ki_bonus = rand(10,100)//low stat
						st_bonus = rand(40,100)//high stat 2
						de_bonus = rand(20,50)//average stat
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					else
						powerlevel_bonus = rand(6000000,20000000)//high stat 1
						ki_bonus = rand(1000000,10000000)//low stat
						st_bonus = rand(4000000,10000000)//high stat 2
						de_bonus = rand(2000000,50000000)
			if(2)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(100,400)
						ki_bonus = rand(25,140)
						st_bonus = rand(85,200)
						de_bonus = rand(40,130)
					if("Half Saiyan")
						powerlevel_bonus = rand(100,400)
						ki_bonus = rand(25,140)
						st_bonus = rand(40,130)
						de_bonus = rand(85,200)
					if("Changling")
						powerlevel_bonus = rand(100,400)
						ki_bonus = rand(100,400)
						st_bonus = rand(40,130)
						de_bonus = rand(40,130)
					if("Human")
						powerlevel_bonus = rand(65,200)
						ki_bonus = rand(25,140)
						st_bonus = rand(85,200)
						de_bonus = rand(85,200)
					if("Tuffle")
						powerlevel_bonus = rand(65,200)
						ki_bonus = rand(25,140)
						st_bonus = rand(85,200)
						de_bonus = rand(85,200)
					if("Demon")
						powerlevel_bonus = rand(65,200)
						ki_bonus = rand(100,400)
						st_bonus = rand(85,200)
						de_bonus = rand(40,130)
					if("Bio-Android")
						powerlevel_bonus = rand(100,400)
						ki_bonus = rand(25,140)
						st_bonus = rand(85,200)
						de_bonus = rand(40,130)
					if("Majin")
						powerlevel_bonus = rand(100,400)
						ki_bonus = rand(65,200)
						st_bonus = rand(25,85)
						de_bonus = rand(85,200)
					if("Namek")
						powerlevel_bonus = rand(65,200)
						ki_bonus = rand(100,400)
						st_bonus = rand(25,85)
						de_bonus = rand(85,200)
					if("Android")
						powerlevel_bonus = rand(25,140)
						ki_bonus = rand(100,400)
						st_bonus = rand(40,130)
						de_bonus = rand(85,130)
					if("Bojack")
						powerlevel_bonus = rand(65,200)
						ki_bonus = rand(100,400)
						st_bonus = rand(25,85)
						de_bonus = rand(85,200)
					if("Dragon")
						powerlevel_bonus = rand(25,140)
						ki_bonus = rand(100,400)
						st_bonus = rand(40,130)
						de_bonus = rand(85,130)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
			if(3)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(300,700)
						ki_bonus = rand(100,250)
						st_bonus = rand(200,600)
						de_bonus = rand(150,400)
					if("Half Saiyan")
						powerlevel_bonus = rand(300,700)
						ki_bonus = rand(100,250)
						st_bonus = rand(150,400)
						de_bonus = rand(200,600)
					if("Changling")
						powerlevel_bonus = rand(300,700)
						ki_bonus = rand(300,700)
						st_bonus = rand(150,400)
						de_bonus = rand(100,250)
					if("Human")
						powerlevel_bonus = rand(200,600)
						ki_bonus = rand(100,250)
						st_bonus = rand(200,600)
						de_bonus = rand(200,600)
					if("Tuffle")
						powerlevel_bonus = rand(200,600)
						ki_bonus = rand(100,250)
						st_bonus = rand(200,600)
						de_bonus = rand(200,600)
					if("Demon")
						powerlevel_bonus = rand(200,600)
						ki_bonus = rand(300,700)
						st_bonus = rand(200,600)
						de_bonus = rand(100,250)
					if("Bio-Android")
						powerlevel_bonus = rand(300,700)
						ki_bonus = rand(100,250)
						st_bonus = rand(200,600)
						de_bonus = rand(150,400)
					if("Majin")
						powerlevel_bonus = rand(300,700)
						ki_bonus = rand(200,600)
						st_bonus = rand(100,250)
						de_bonus = rand(200,600)
					if("Namek")
						powerlevel_bonus = rand(200,600)
						ki_bonus = rand(300,700)
						st_bonus = rand(100,250)
						de_bonus = rand(200,600)
					if("Android")
						powerlevel_bonus = rand(100,250)
						ki_bonus = rand(300,700)
						st_bonus = rand(200,600)
						de_bonus = rand(150,400)
					if("Dragon")
						powerlevel_bonus = rand(200,600)
						ki_bonus = rand(300,700)
						st_bonus = rand(100,250)
						de_bonus = rand(200,600)
					if("Bojack")
						powerlevel_bonus = rand(100,250)
						ki_bonus = rand(300,700)
						st_bonus = rand(200,600)
						de_bonus = rand(150,400)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
			if(4)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(700,1200)
						ki_bonus = rand(300,600)
						st_bonus = rand(600,1000)
						de_bonus = rand(400,750)
					if("Half Saiyan")
						powerlevel_bonus = rand(700,1200)
						ki_bonus = rand(300,600)
						st_bonus = rand(400,750)
						de_bonus = rand(600,1000)
					if("Changling")
						powerlevel_bonus = rand(700,1200)
						ki_bonus = rand(700,1200)
						st_bonus = rand(400,750)
						de_bonus = rand(200,450)
					if("Human")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(300,600)
						st_bonus = rand(600,1000)
						de_bonus = rand(600,1000)
					if("Tuffle")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(300,600)
						st_bonus = rand(600,1000)
						de_bonus = rand(600,1000)
					if("Demon")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					if("Bio-Android")
						powerlevel_bonus = rand(700,1200)
						ki_bonus = rand(300,600)
						st_bonus = rand(600,1000)
						de_bonus = rand(400,750)
					if("Majin")
						powerlevel_bonus = rand(700,1200)
						ki_bonus = rand(600,1000)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Namek")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Android")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					if("Bojack")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Dragon")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)

			if(5)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(1400,3000)
						ki_bonus = rand(700,1300)
						st_bonus = rand(1000,1700)
						de_bonus = rand(700,1200)
					if("Half Saiyan")
						powerlevel_bonus = rand(1400,3000)
						ki_bonus = rand(700,1300)
						st_bonus = rand(700,1200)
						de_bonus = rand(1000,1700)
					if("Changling")
						powerlevel_bonus = rand(1400,3000)
						ki_bonus = rand(1400,3000)
						st_bonus = rand(700,1200)
						de_bonus = rand(450,900)
					if("Human")
						powerlevel_bonus = rand(1000,2500)
						ki_bonus = rand(700,1300)
						st_bonus = rand(1000,1700)
						de_bonus = rand(1000,1700)
					if("Tuffle")
						powerlevel_bonus = rand(1000,2500)
						ki_bonus = rand(700,1300)
						st_bonus = rand(1000,1700)
						de_bonus = rand(1000,1700)
					if("Demon")
						powerlevel_bonus = rand(1000,2500)
						ki_bonus = rand(1400,3000)
						st_bonus = rand(1000,1700)
						de_bonus = rand(450,900)
					if("Bio-Android")
						powerlevel_bonus = rand(1400,3000)
						ki_bonus = rand(700,1300)
						st_bonus = rand(1000,1700)
						de_bonus = rand(700,1200)
					if("Majin")
						powerlevel_bonus = rand(1400,3000)
						ki_bonus = rand(1000,2500)
						st_bonus = rand(450,900)
						de_bonus = rand(1000,1700)
					if("Namek")
						powerlevel_bonus = rand(1000,2500)
						ki_bonus = rand(1400,3000)
						st_bonus = rand(450,900)
						de_bonus = rand(1000,1700)
					if("Android")
						powerlevel_bonus = rand(700,1300)
						ki_bonus = rand(1000,2500)
						st_bonus = rand(1000,1700)
						de_bonus = rand(700,1200)
					if("Dragon")
						powerlevel_bonus = rand(1000,2500)
						ki_bonus = rand(1400,3000)
						st_bonus = rand(450,900)
						de_bonus = rand(1000,1700)
					if("Bojack")
						powerlevel_bonus = rand(700,1300)
						ki_bonus = rand(1000,2500)
						st_bonus = rand(1000,1700)
						de_bonus = rand(700,1200)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
			if(6)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(3000,5000)
						ki_bonus = rand(1500,3400)
						st_bonus = rand(1750,3000)
						de_bonus = rand(1500,2250)
					if("Half Saiyan")
						powerlevel_bonus = rand(3000,5000)
						ki_bonus = rand(1500,3400)
						st_bonus = rand(1500,2250)
						de_bonus = rand(1750,3000)
					if("Changling")
						powerlevel_bonus = rand(3000,5000)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(1500,2250)
						de_bonus = rand(900,1400)
					if("Human")
						powerlevel_bonus = rand(2200,4200)
						ki_bonus = rand(1500,3400)
						st_bonus = rand(1750,3000)
						de_bonus = rand(1750,3000)
					if("Tuffle")
						powerlevel_bonus = rand(2200,4200)
						ki_bonus = rand(1500,3400)
						st_bonus = rand(1750,3000)
						de_bonus = rand(1750,3000)
					if("Demon")
						powerlevel_bonus = rand(2200,4200)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(1750,3000)
						de_bonus = rand(900,1400)
					if("Bio-Android")
						powerlevel_bonus = rand(3000,5000)
						ki_bonus = rand(1500,3400)
						st_bonus = rand(1750,3000)
						de_bonus = rand(1500,2250)
					if("Majin")
						powerlevel_bonus = rand(3000,5000)
						ki_bonus = rand(2200,4200)
						st_bonus = rand(900,1400)
						de_bonus = rand(1750,3000)
					if("Namek")
						powerlevel_bonus = rand(2200,4200)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(900,1400)
						de_bonus = rand(1750,3000)
					if("Android")
						powerlevel_bonus = rand(1500,3400)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(1500,2250)
						de_bonus = rand(1750,3000)
					if("Bojack")
						powerlevel_bonus = rand(2200,4200)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(900,1400)
						de_bonus = rand(1750,3000)
					if("Dragon")
						powerlevel_bonus = rand(1500,3400)
						ki_bonus = rand(3000,5000)
						st_bonus = rand(1500,2250)
						de_bonus = rand(1750,3000)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
			if(7)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(9000,13000)
						ki_bonus = rand(4500,6500)
						st_bonus = rand(3000,5000)
						de_bonus = rand(2500,4000)
					if("Half Saiyan")
						powerlevel_bonus = rand(9000,13000)
						ki_bonus = rand(4500,6500)
						st_bonus = rand(2500,4000)
						de_bonus = rand(3000,5000)
					if("Changling")
						powerlevel_bonus = rand(9000,13000)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(2500,4000)
						de_bonus = rand(1500,2500)
					if("Human")
						powerlevel_bonus = rand(7000,9000)
						ki_bonus = rand(4500,6500)
						st_bonus = rand(3000,5000)
						de_bonus = rand(3000,5000)
					if("Tuffle")
						powerlevel_bonus = rand(7000,9000)
						ki_bonus = rand(4500,6500)
						st_bonus = rand(3000,5000)
						de_bonus = rand(3000,5000)
					if("Demon")
						powerlevel_bonus = rand(7000,9000)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(3000,5000)
						de_bonus = rand(1500,2500)
					if("Bio-Android")
						powerlevel_bonus = rand(9000,13000)
						ki_bonus = rand(4500,6500)
						st_bonus = rand(3000,5000)
						de_bonus = rand(2500,4000)
					if("Majin")
						powerlevel_bonus = rand(9000,13000)
						ki_bonus = rand(7000,9000)
						st_bonus = rand(1500,2500)
						de_bonus = rand(3000,5000)
					if("Namek")
						powerlevel_bonus = rand(7000,9000)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(1500,2500)
						de_bonus = rand(3000,5000)
					if("Android")
						powerlevel_bonus = rand(4500,6500)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(3000,5000)
						de_bonus = rand(2500,4000)
					if("Dragon")
						powerlevel_bonus = rand(7000,9000)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(1500,2500)
						de_bonus = rand(3000,5000)
					if("Bojack")
						powerlevel_bonus = rand(4500,6500)
						ki_bonus = rand(9000,13000)
						st_bonus = rand(3000,5000)
						de_bonus = rand(2500,4000)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)
			if(8)
				switch(src.race)
					if("Saiyan")
						powerlevel_bonus = rand(18000,50000)
						ki_bonus = rand(10000,25000)
						st_bonus = rand(1800,2800)
						de_bonus = rand(1000,2200)
					if("Half Saiyan")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Changling")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Human")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Tuffle")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Demon")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Bio-Android")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Majin")
						powerlevel_bonus = rand(150000,300000)
						ki_bonus = rand(150000,300000)
						st_bonus = rand(5000,15000)
						de_bonus = rand(5000,15000)
					if("Namek")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Android")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Bojack")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Dragon")
						powerlevel_bonus = rand(15000,30000)
						ki_bonus = rand(15000,30000)
						st_bonus = rand(500,1500)
						de_bonus = rand(500,1500)
					if("Saibaman")
						powerlevel_bonus = rand(600,1000)
						ki_bonus = rand(700,1200)
						st_bonus = rand(200,450)
						de_bonus = rand(600,1000)
					if("Kai")
						powerlevel_bonus = rand(300,600)
						ki_bonus = rand(700,1200)
						st_bonus = rand(600,1000)
						de_bonus = rand(200,450)



		src.exp -= src.tnl
		src.level ++
		src.level_tp ++
		src.level_chance ++


		if(src.level_tp >= 5)
			src.tp += 1
			src.level_tp = 0

		if(src.kk_quest2_start && !src.kk_quest2_complete)
			src.Kai_levels += 1

		if(src.level_chance >= 15)
			var/chance = rand(1,5)
			var/chance_up = rand(1,2)

			if(chance == 1)
				if(src.block_max < 55)
					src.block += chance_up
					src.block_max += chance_up
					src.level_chance = 0
			if(chance == 2)
				if(src.reflect_max < 55)
					src.reflect += chance_up
					src.reflect_max += chance_up
					src.level_chance = 0
			if(chance == 3)
				if(src.dodge_max < 55)
					src.dodge += chance_up
					src.dodge_max += chance_up
					src.level_chance = 0
			if(chance == 4)
				if(src.critical_max < 55)
					src.critical += chance_up
					src.critical_max += chance_up
					src.level_chance = 0
			if(chance == 5)
				if(src.counter_max < 55)
					src.counter += chance_up
					src.counter_max += chance_up
					src.level_chance = 0


		src.powerlevel_max += powerlevel_bonus
		src.ki_max += ki_bonus
		src.unarmed_max += 5
		src.ki_skill_max  += 5

		src.strength += st_bonus
		src.defence += de_bonus
		src.strength_max += st_bonus
		src.defence_max += de_bonus
		src.Mode()


		if(src.train_chromosome)
			spawn(5) src.Train_SSJ()

		spawn(5) src.Skill_Gain()
		spawn(5) src.Quiet_Level_Up()


