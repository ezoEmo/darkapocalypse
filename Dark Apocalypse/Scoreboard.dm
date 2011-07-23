// Do not modify this code unless you know what your doing.

#define DEBUG
/var/const/
	scoreboard={""}
	scoreboardtitle={"<STYLE>BODY {background: black;  color: white}</STYLE><head><title>Scoreboard</title></head></body>"}
/Rank_Entry/
	var{Name;Key;Level;Date}
	New(mob/person)
		if(!person)return
		Name=(person.name)
		Key=(person.key)
		Level=(person.level)
		Date=(time2text(world.realtime))
/proc/
	RankingDisplay(var/mob/person)
		var/list/levels=new()
		var/savefile/F=new("levels.sav")
		F[("stuff")]>>(levels)
		var/html="<center><TABLE BORDER=1><TR><TH><html><BODY><center><h1><U><font color=red>Scoreboard<font color=white></u></h1><TABLE CELLSPACING=10>"
		if(!levels)html+="<TR><TD>No high rankings to display.</TD></TR>\n"
		else
			html+="<tr><th><B>#</th><th>Name <I>(key)</I></th><th>Level</th><th>Date</th></tr>\n<br>"
			for(var/number in 1 to levels.len)
				var{character=(levels[(number)]);Rank_Entry/player=(levels[(character)])}
				html+="<tr><td><u>[(number)]\th</td><td></u>[(player.Name)] <I>([(player.Key)])</I></td><td>[num2text(round(player.Level),100)]</td><td>[(player.Date)]</td></tr>\n"
		person<<browse("[scoreboardtitle][html]","window=scoreboard;size=524x344")
	Ranking(var/mob/player)
		if(!player||!player.client)return
		var/savefile/F=new("levels.sav")
		var/list/level=new()
		F[("stuff")]>>(level)
		if(!level)level=new()
		var{character="[(player.client.ckey)]/[(player.name)]"
			score=level.Find(character)
			Rank_Entry/newest=new(player)
			Rank_Entry/last}
		if(score)
			var/Rank_Entry/old=(level[(character)])
			if(old.Level>=player.level)return score
			while(score>1)
				last=level[(level[(score-1)])]
				if(last.Level>=player.level)break
				level[(score)]=(level[(score-1)])
				level[(--score)]=(character)
				level[(level[(score+1)])]=(last)
			level[(character)]=(newest)
			F[("stuff")]<<(level)
			return score
		score=(level.len)
		if(score>=10)
			last=(level[(level[(score)])])
			if(last.Level>=player.level)return 11
			level[(score)]=(character)
		else score=(level.len+1),level+=(character)
		while(score>1)
			last=(level[(level[(score-1)])])
			if(last.Level>=player.level)break
			level[(score)]=(level[(score-1)])
			level[(--score)]=(character)
			level[(level[(score+1)])]=(last)
		level[(character)]=(newest)
		F[("stuff")]<<(level)
		return score

mob/verb/Scoreboard()
	set category = "Channels"
	Ranking(src)
	RankingDisplay(src)

