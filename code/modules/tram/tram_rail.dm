/obj/tram/rail
	name = "tram rail"
	desc = "A guiding rail for trams"
	icon = 'icons/obj/tram/tram_rail.dmi'
	icon_state = "rail"
	layer = BELOW_DOOR_LAYER + 0.001
	anchored = 1
	var/godir = null
	var/stop_duration = null