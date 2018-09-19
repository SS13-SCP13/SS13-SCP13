/obj/tram/rail
	name = "tram rail"
	desc = "A guiding rail for trams"
	icon = 'icons/obj/tram/tram_rail.dmi'
	icon_state = "rail"
	layer = TURF_LAYER + 0.1
	anchored = 1
	var/godir = null
	var/stop_duration = null