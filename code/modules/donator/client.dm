/client/
	var/datum/donator/donator_holder
	New()
		if (..())
			if(GLOB.donator_keys[ckey])
				donator_holder = new/datum/donator(src, GLOB.donator_keys[ckey])
				GLOB.donators += src
			else
				donator_holder = new/datum/donator(src, 0) // Adding a Donator Holder anyway is worth while.