/datum/donator/
	var/flags = 0
	var/client/client

	New(var/client/C, var/flgs = 0)
		client = C
		add_flags(flgs)

	proc/add_flags(var/flgs)
		flags |= flgs

	proc/remove_flags(var/flgs)
		flags &= ~flgs

