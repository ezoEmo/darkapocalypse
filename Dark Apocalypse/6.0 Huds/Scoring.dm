world/New()
	..()
	sleep(1)
	worldlistload()

world/Del()
	worldlistsave()
	..()

proc
	worldlistsave()
		var/savefile/F = new("scoreboard.sav")
		F["scoretext"] << scoretext
		F["scorelist"] << scorelist
		return 1

	worldlistload()
		var/savefile/F = new("scoreboard.sav")
		if(F["scoretext"]&&F["scorelist"])
			F["scoretext"] >> scoretext
			F["scorelist"] >> scorelist
			return 1
		return 0

var
	scoretext
	list/scorelist[0]

mob
	verb
		Addit(a as text,b as num)
			scoreboard_add(a,b)

		ScoreboardView()
			usr <<browse("[showscoreboard()]","window=scoreboard;size=524x344")

	proc
		scoreboard_add(name,score)
			if(!name)return
			if(!score)return

			if(score >= 1e+20)
				score = 1e+1000

			if(findtext("[scoretext]","[name]"))
				var/a
				var/n = 0
				var/z
				var/out
				for(var/i = 1, i <= length(scoretext), i++)
					if(!n)
						z = length(name) + 1
						a = copytext(scoretext, i, i+z)
						if(a == "[name]=")//replace text with new score.
							i += z
							n = 1
						else
							a = copytext(scoretext, i, i+1)
							out += a
					else
						out +="[name]=[num2text(round(score),100)]&"
						i = findtext3("[scoretext]","&",i)
						n = 0
				if(out)
					scoretext = out
					scorelist = params2list(scoretext)
					return

			scoretext += "[name]=[num2text(round(score),100)]&"
			scorelist = params2list(scoretext)

		changeit(n)
			if(findtext(n,"INF"))
				n = 1e+1000
				return n
			else
				n = text2num("[n]")
				return n

		showscoreboard()
			scorelist = params2list(scoretext)
			var/html="<center><TABLE BORDER=1><TR><TH><html><BODY><center><h1><U><font color=yellow>Scoreboard<font color=white></u></h1><TABLE CELLSPACING=10>"
			html+="<tr><th><B>#</th><th>Name</th><th>Score</th></tr>\n<br>"
			var/b
			var/c
			var/i
			while(scorelist.len)
				for(var/x in scorelist)
					if(changeit("[scorelist[x]]") > b)
						b = changeit("[scorelist[x]]")
						c = x
				i ++
				var/n = "[scorelist[c]]"
				html+="<tr><td><u><center>[i]\th</center></td><td></u><center>[c]</center></td><td><center>[n]</center></td></tr>\n"
				scorelist -= c
				b = null
				c = null

			if(!scorelist.len)
				scorelist = params2list(scoretext)
				var/scoreboardtitle={"<STYLE>BODY {background: black;  color: white}</STYLE><head><title>Scoreboard</title></head></body>"}
				return "[scoreboardtitle][html]"

		findtext3(hay,needle,start)
			if(hay == null||needle == null) return 0
			var/i = 1
			if(start) i = start
			var/b = ""
			var/end = length(hay)
			while(i < (end - length(needle)+2))
				b = copytext(hay,i,length(needle)+i)
				if(b == needle)
					return i
				else
					i ++
			return 0
