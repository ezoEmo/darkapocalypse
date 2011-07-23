/*
Outside Area Demo
By: Shadowdarke (shadowdarke@hotmail.com)
Sept. 6th, 2001

Outside Area Demo demonstrates how to implement day/night cycles two ways,
with overlays or with the luminosity variable. This demo also shows how to
change a turf from one area to another.

The area overlay day/night cycle is much faster than turf overlay day/night
systems, accomplishing the same effect with a couple lines of code and no
lag producing loops. I've tested it with maps as large as 500x500x5 with no
lag at all from the day/night cycle.
*/

/*world
	area = /area/outside	// make outside the default area

	New()									// When the world begins
		..()								// do the regular things
		for(var/area/outside/O in world)	// Look for outside areas
			spawn() O.daycycle()			// begin the daycycle
*/

/*area
	outside	// lay this area on the map anywhere you want it to change from night to day
		layer = 6	// set this layer above everything else so the overlay obscures everything
		var
			lit = 1	// determines if the area is lit or dark.
			obj/weather/Weather	// what type of weather the area is having


		proc
			daycycle()
				lit = 1 - lit	// toggle lit between 1 and 0
				if(lit)
					overlays += 'black25.dmi'	// add a 25% dither for a fading effect
					sleep(3)	// pause a moment
					overlays -= 'black25.dmi'	// remove the dither
					overlays += 'black50.dmi'	// add the 50% dither
				else
					overlays -= 'black50.dmi'	// remove the 50% dither
					overlays += 'black25.dmi'	// add a 25% dither for a fading effect
					sleep(3)	// pause a moment
					overlays -= 'black25.dmi'	// remove the dither
				spawn(36000) daycycle()	// change the 20 to make longer days and nights

/*
	If you prefer real darkness (luminosity = 0), replace the daycycle() proc
	with the one below. Using luminosity for outside darkness is better if
	you want to use other light sources like torches.

			daycycle()
				luminosity = 1 - luminosity	// toggle between 1 and 0
				spawn(20) daycycle()	// change the 20 to make longer days and nights
*/

			SetWeather(WeatherType)
				if(Weather)	// see if this area already has a weather effect
					if(istype(Weather,WeatherType)) return	// no need to reset it
					overlays -= Weather	// remove the weather display
					del(Weather)	// destroy the weather object
				if(WeatherType)	// if WeatherType is null, it just removes the old settings
					Weather = new WeatherType()	// make a new obj/weather of the right type
					overlays += Weather	// display it as an overlay for the area



	inside	// a sample area not affected by the daycycle or weather
		luminosity = 1

obj/weather
	layer = 7	// weather appears over the darkness because I think it looks better that way

	rain
		icon = 'rain.dmi'

	snow
		icon = 'snow.dmi'*/