mob/var/frozen = 0
mob/var/speeding = 0

mob/PC/Move()

	if(src.frozen)
		return 0

	if(src.wrapped)
		return 0

	if(src.donut_wrapped)
		return 0

	var/delay = src.speed
	var/buku_speed = src.speed - 2

	if(buku_speed < 0)
		buku_speed = 0

	if(src.speeding <= 0)
		src.speeding = 1
		..()
		if(src.buku)
			sleep((buku_speed))
			src.speeding = 0
		else
			sleep(delay)
			src.speeding = 0
	else
		return