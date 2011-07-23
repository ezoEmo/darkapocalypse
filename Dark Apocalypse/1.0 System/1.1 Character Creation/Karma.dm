mob
	proc
		Karma()
			switch(input("Karma: ???","Character Creation",text) in list ("Good","Evil",))

				if("Good")
					src.karma = "Good"
					src.karma_rating = 0

				if("Evil")
					src.karma = "Evil"
					src.karma_rating = 0