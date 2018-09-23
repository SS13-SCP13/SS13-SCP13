/obj/tram/controlpad
	name = "tram controller interface"
	desc = "Controls a tram."
	icon = 'icons/obj/airlock_machines.dmi'
	icon_state = "airlock_control_standby"
	anchored = 1
	var/obj/tram/tram_controller/tram_linked

/obj/tram/controlpad/attack_hand(var/mob/user)
	usr.set_machine(src)
	if(!tram_linked)	return
	var/dat = "<b>Tram Control Panel</b><br>"
	dat += "<br>Tram engine: <a href=?src=\ref[src];engine_toggle=1>[tram_linked.automode ? "<font color='green'>On</font>" : "<font color='red'>Off</font>"]</a>"
	dat += "<br>Direction: <a href=?src=\ref[src];direction=1>Switch</a>"
	if(tram_linked.delay_timer > 1)
		dat += "<br>Automatic delay active. <a href=?src=\ref[src];nodelay=1><font color=yellow>Force Start</font></a>"
	user << browse(dat, "window=trampad")
	onclose(user,"trampad")

/obj/tram/controlpad/Topic(href, href_list)
	if(!in_range(src, usr) || !isliving(usr))
		return

	if(..())
		usr << browse(null, "window=publiclibrary")
		onclose(usr, "publiclibrary")
		return

	if(href_list["engine_toggle"])
		tram_linked.automode = !tram_linked.automode

	if(href_list["direction"])
		var/stored_rail = null
		for(var/cdir in list(NORTH, SOUTH, EAST, WEST))
			for(var/obj/tram/rail/R in get_step(tram_linked,cdir))
				if(!istype(R))	continue
				if(R != tram_linked.last_played_rail)
					tram_linked.last_played_rail = stored_rail

	if(href_list["nodelay"])
		tram_linked.delay_timer = 1 //1 instead of 0 because if delay_timer is 0 the logic will evaluate to false and it will just reset the timer.

	add_fingerprint(usr)
	updateUsrDialog()