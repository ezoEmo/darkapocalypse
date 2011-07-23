/obj/Overlays/Oozaru

	Oozaru_Head
	icon = 'Oozaru.dmi'
	icon_state = "head"
	layer = 14
	density = 1
	New()
		pixel_y = 32

mob/var/oozaru_delay = 0
mob/learn/Saiyan

	verb
		Fake_Moon()
			set category = "Techniques"

			if(src.monkey)
				usr.oozaru_break()


			else
				if(src.oozaru_delay)
					src << "You must wait before using this technique again."
					return
				if(!src.tail_cut)
					usr << "<font color = blue>Error:</font></B>you dont have a tail!"
					return

				if(src.kaioken)
					src << "<font color = blue>Error:</font></B>Its too dangerous to use Kaioken right now!"
					return

				if(src.form_1)
					src << "<font color = blue>Error:</font></B>You are already transformed, revert then try again!"
					return

				if(src.doing)
					src << "<font color = blue>Error:</font></B>You are already doing something!"
					return

				if(!src.monkey)
					view() <<"<B>[usr.name] shoots a blast of energy up into the sky, creating a false moon!"
					src.oozaru_delay = 1
					src.monkey = 1
					src.doing =1
					src.icon_state = "enrage"

					src.frozen = 1
					sleep(10)
					src.icon_state = ""
					src.frozen = 0
					view() <<"<B>[usr.name] begins to sweat.. Fur suddenly sprout out all over his body.."
					sleep(5)
					view() <<"<B>[usr.name] has gone Oozaru!"
					src.overlays = null
					src.icon = 'Oozaru.dmi'
					src.overlays += new /obj/Overlays/Oozaru/Oozaru_Head
					src.underlays -= usr.aura
					src.aura_on = 0
					src.powerlevel *= 3
					src.strength *= 3
					src.defence *= 4
					src.speed -= 1.7
					src.doing = 0
					spawn(50) src.oozaru_delay = 0
mob/proc/oozaru_break()
	view() <<"<B>[src.name] begins to shrink down from Oozaru back to normal form!"
	src.powerlevel /= 2
	src.defence = usr.defence_max
	src.strength = usr.strength_max
	src.speed = usr.speed_max
	src.monkey = 0
	src.overlays = null
	src.Skin_Apply()
	if(src.tail_cut)
		src.overlays += src.tail
	src.monkey = 0
	src.Power_Redefine()
	src.buku = 0
	src.buku_lock = 0
	src.Hair_Apply()

mob/proc/apply_tail()
	src << "<center>\white ..:: Your Tail Grew Back ::..</center>"
	src.overlays += src.tail
	src.tail_cut = 1
	return
