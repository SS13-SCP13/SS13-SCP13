/datum/species/scp049_1
	name = "SCP-049-1"
	name_plural = "SCP-049-1s"

	darksight = 8
	has_organ = list()
	siemens_coefficient = 0

	blood_color = "#622a37"
	flesh_color = "#442A37"

	species_flags = SPECIES_FLAG_NO_SLIP | SPECIES_FLAG_NO_POISON
	spawn_flags = SPECIES_IS_RESTRICTED

	// immune to viruses
	virus_immune = TRUE

	// fists
	unarmed_types = list(/datum/unarmed_attack/claw)