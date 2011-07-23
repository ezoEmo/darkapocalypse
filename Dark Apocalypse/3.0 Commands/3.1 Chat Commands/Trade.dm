

mob/PC/verb/Trade(mob/M in get_step(usr,usr.dir))
	set category = "Channels"
	var/items = list()
	var/items_2 = list()
	for(var/obj/Equipment/O in usr.contents)
		items += O
	for(var/obj/Equipment/O2 in M.contents)
		items_2 += O2

	if(M.trading)
		usr << "[M] is busy trading!"
		return

	if(usr.trading)
		usr << "You are busy trading!"
		return

	M.trading = 1
	usr.trading = 1

	switch(alert(M,"[usr] wants to Trade with you! Do you want to Trade with [usr]?","Secure Trade","Yes","No"))
		if("Yes")
			var/obj/item = input("Please select the Item you wish to Trade") in items
			if(!item)
				usr << "You have no Items to Trade!"
				M.trading = 0
				usr.trading = 0
				return
			if(item.item_owner != null)
				usr << "That Item is Bio-Linked and cannot be Traded!"
				M.trading = 0
				usr.trading = 0
				return
			if(item.equiped)
				usr << "You must unequip the item first!"
				M.trading = 0
				usr.trading = 0
				return
			switch(alert(M,"[usr] wishes to trade: [item]. Do you accept?","Secure Trade","Yes","No"))
				if("Yes")
					var/obj/item_2 = input("Please select the Item you wish to Trade") in items_2
					if(!item_2)
						M << "You have no Items to Trade!"
						M.trading = 0
						usr.trading = 0
						return
					if(item_2.item_owner != null)
						M << "That Item is Bio-Linked and cannot be Traded!"
						M.trading = 0
						usr.trading = 0
						return
					if(item_2.equiped)
						M << "You must unequip the item first!"
						M.trading = 0
						usr.trading = 0
						return
					switch(alert(usr,"[M] wishes to trade: [item_2]. Do you accept?","Secure Trade","Yes","No"))
						if("Yes")
							usr.contents -= item
							M.contents -= item_2

							usr.contents += item_2
							M.contents += item

							M.trading = 0
							usr.trading = 0

							usr << "Secure Trade Complete!"
							M << "Secure Trade Complete!"
						else
							M.trading = 0
							usr.trading = 0
							M << "Trade has been Cancelled"
							usr << "Trade has been Cancelled"
							return
				else
					M.trading = 0
					usr.trading = 0
					M << "Trade has been Cancelled"
					usr << "Trade has been Cancelled"
					return
		else
			M.trading = 0
			usr.trading = 0
			M << "Trade has been Cancelled"
			usr << "Trade has been Cancelled"
			return