mob/var/banked_zenni = 0

mob
	NPC

		Banker

			name = "{NPC} Banker"
			icon = 'Banker.dmi'
			density = 1
			safe = 1

			powerlevel = 100

			energy_code = 5432211

			New()
				src.CreateName()

			verb
				Talk()
					set src in oview(2)
					switch(input("Whattz up [usr.name]. What do you need dog?","Bank Account")in list("Deposit","Withdrawl","Transfer Funds"))
						if("Deposit")
							var/deposit = input("How much do you wish to Deposit?")as num

							if(deposit > usr.zenni)
								usr << "<font color = white>Banker:</font> You Broke Cuz!"
								return

							if(deposit <= 1)
								return
							else
								usr.zenni -= deposit
								usr.banked_zenni += deposit
								usr << "<font color = white>Banker:</font> [deposit] has been successfully transfered into your Account!"
								return

						if("Withdrawl")
							var/withdrawl = input("How much do you wish to Withdraw?")as num

							if(withdrawl > usr.banked_zenni)
								usr << "<font color = white>Banker:</font> You Broke Cuz... are you trying to scam me!"
								return

							if(withdrawl <= 1)
								return
							else
								usr.banked_zenni -= withdrawl
								usr.zenni += withdrawl
								usr << "<font color = white>Banker:</font> [withdrawl] has been successfully withdrawn from your Account!"
								return

						if("Transfer Funds")
							var/transfer = input("How much do you wish to Transfer?")as num

							if(transfer > usr.banked_zenni)
								usr << "<font color = white>Banker:</font> You don't have that much Zenni in your Account!"
								return

							if(transfer <= 1)
								return
							else
								var/varPeople = list()
								for(var/mob/PC/M in world)
									varPeople += M

								var/varTo = input("Who would you like to Transfer [transfer] Zenni to?","Transfer Funds") in varPeople + list("Cancel")

								if(varTo == "Cancel" || varTo == "[usr]")
									return
								else
									usr.banked_zenni -= transfer
									varTo:banked_zenni += transfer
									usr << "<font color = white>Banker:</font> [transfer] Zenni has been successfully transferred to [varTo]'s Account"
									varTo << "<font color = white>Banker:</font> [transfer] Zenni has been successfully transferred to your account from [usr]"
									return