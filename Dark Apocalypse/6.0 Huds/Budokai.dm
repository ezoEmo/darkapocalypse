var
	budo_count = 0
	budokai = 0
mob/var/budokai_wins = 0

mob/learn
	verb
		Join_Budokai()
			set category = "Budokai"
			if(budokai)
				if(src.pk)
