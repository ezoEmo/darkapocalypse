mob/learn

	verb/Chou_Kamehameha(mob/M in oview(6))
		set category = "Techniques"
		var/ki_damage = (usr.powerlevel/rand(4,10))
		var/ki_cost = (usr.ki_max / 3)

		if(ki_damage<=0)
			ki_damage=1
		if(!M)return
		if(usr.buku == 1)
			return
		else
			if(M.z == usr.z)
				if(M.dead == 1)
					return
				else
					if(M.safe == 1)
						return
					else
						if(usr.dead == 1)
							return
						else
							if(usr.safe == 1)
								return
							else
								if(usr.doing == 1)
									usr << "<font size = -1><B>You can only do one thing at a time!"
									return
								else
									if(usr.monkey == 1)
										return
									else
										if(usr.ki_lock == 1)
											usr << "<font size = -1>Cannot use this Technique at his time"
											return
										else
											if(usr.ki >= ki_cost)
												usr.doing = 1
												usr << "<font size = -1><B>You beging to charge up <font color = yellow> Chou-Kamehameha!<font>"
												usr.overlays += usr.chou_kamehameha_charge
												usr.frozen = 1
												sleep(30)
												if(!M)return

												if(M)
													if(M.z == usr.z)
														usr.overlays -= usr.chou_kamehameha_charge
														view(6) << "<font size = -1><B>[usr.name] throws a <font color = #FF7E00> Chou-Kamehameha</font><B> at [M.name]!"
														missile('Chou Kamehameha.dmi', usr, M)
														usr.ki -= ki_cost
														sleep(10)
														if(!M)return
														if(M)
															if(M.z == usr.z)
																if(M.absorbing == 1)
																	if(usr.powerlevel_max > M.powerlevel_max)
																		M.powerlevel = 0
																		M.SmallKiDeathCheck()
																		usr.doing = 0
																		usr.frozen = 0
																		return
																	else
																		view(6) << "<font size = -1><B>[M.name] Absorbs the energy from [usr.name]'s <font color = #FF7E00> Chou-Kamehameha!"
																		M << "<font size = -1><B>You managed to Absorb [ki_damage] worth of power from that attack!"
																		M.powerlevel += ki_damage
																		usr.doing = 0
																		usr.frozen = 0
																		return
																else
																	M.powerlevel -= ki_damage
																	M.SmallKiDeathCheck()
																	usr.doing = 0
																	usr.frozen = 0
																	return


															else
																usr << "<font size = -1><B>[M.name] is gone! Where did they go?!"
																M << "<font size = -1><B>You narrowly escape [usr.name]'s <font color = #FF7E00> Chou-Kamehameha!"
																usr.doing = 0
																usr.frozen = 0
																return
														else
															usr.overlays -= usr.chou_kamehameha_charge
															usr << "<font size = -1><B>[M.name] is gone! Where did they go?!"
															usr.doing = 0
															usr.frozen = 0
															return
													else
														usr.overlays -= usr.chou_kamehameha_charge
														usr << "<font size = -1><B>[M.name] is gone! Where did they go?!"
														usr.doing = 0
														usr.frozen = 0
														return
			else
				usr.overlays -= usr.chou_kamehameha_charge
				usr << "<font size = -1><B>[M.name] is gone! Where did they go?!"
				usr.doing = 0
				usr.frozen = 0
				return







