SUBSYSTEM_DEF(inactivity)
	name = "Inactivity"
	priority = SS_PRIORITY_INACTIVITY
	init_order = INIT_ORDER_INACTIVITY
	flags = SS_NO_INIT|SS_BACKGROUND
	wait = 1 MINUTE

/datum/controller/subsystem/inactivity/fire()
	if(config.kick_inactive)
		for(var/last_object in GLOB.clients)
			var/client/C = last_object
			if(!C.holder && C.is_afk(config.kick_inactive MINUTES))
				if(!isobserver(C.mob))
					log_access("AFK: [key_name(C)]")
					to_chat(C, "<SPAN CLASS='warning'>You have been inactive for more than [config.kick_inactive] minute\s and have been disconnected.</SPAN>")
					qdel(C)
			CHECK_TICK