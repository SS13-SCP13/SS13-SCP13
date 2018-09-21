SUBSYSTEM_DEF(updateserver)
	name = "Update Server"
	flags = SS_KEEP_TIMING|SS_BACKGROUND|SS_NO_INIT
	runlevels = RUNLEVEL_GAME|RUNLEVEL_POSTGAME
	wait = 5 SECONDS
	var/done = FALSE

/datum/controller/subsystem/updateserver/fire()
	var/update = FALSE

	if (!done && length(GLOB.clients) > 1)

		switch (ticker.current_state)
			if (GAME_STATE_PLAYING)
				if (world.realtime >= 20 MINUTES)
					update = TRUE
			if (GAME_STATE_FINISHED)
				update = TRUE

	if (update)

		update()
		done = TRUE


/datum/controller/subsystem/updateserver/proc/update()
	shell("python3 tools/updateserver.py")

/datum/controller/subsystem/updateserver/stat_entry()
	..(done ? "updated" : "not updated")