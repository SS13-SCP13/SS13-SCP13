/datum/species/scp106
	name = "SCP-106"
	name_plural = "SCP-106s"

	darksight = 8
	has_organ = list()
	siemens_coefficient = 0

	blood_color = "#622a37"
	flesh_color = "#442A37"

	species_flags = SPECIES_FLAG_NO_SLIP | SPECIES_FLAG_NO_POISON
	spawn_flags = SPECIES_IS_RESTRICTED

	genders = list(MALE)

	// immune to viruses
	virus_immune = TRUE

	// icon overrides
	icobase = null
	deform = null

	// damage icon overrides
	damage_overlays = null
	damage_mask = null
	blood_mask = null

/datum/species/scp106/handle_npc(var/mob/living/carbon/human/scp106/H)
	if (!H.client)
		H.lying = FALSE
		H.pursueTarget()
