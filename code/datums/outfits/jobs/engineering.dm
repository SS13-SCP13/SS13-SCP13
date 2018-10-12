/*/decl/hierarchy/outfit/job/engineering
	hierarchy_type = /decl/hierarchy/outfit/job/engineering
	belt = /obj/item/weapon/storage/belt/utility/full
	l_ear = /obj/item/device/radio/headset/headset_eng
	shoes = /obj/item/clothing/shoes/workboots
	pda_slot = slot_l_store
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/engineering/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING
*/
/decl/hierarchy/outfit/job/engineering/chief_engineer
	name = OUTFIT_JOB_NAME("Chief Engineer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	l_ear = /obj/item/device/radio/headset/heads/ce
	shoes = /obj/item/clothing/shoes/dutyboots
//	id_type = /obj/item/weapon/card/id/seclvl4


/decl/hierarchy/outfit/job/ds90/crew/engineering/juneng
	name = OUTFIT_JOB_NAME("Junior Engineer")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	shoes = /obj/item/clothing/shoes/dutyboots
//	id_type = /obj/item/weapon/card/id/seclvl2

/*
/decl/hierarchy/outfit/job/engineering/engineer
	name = OUTFIT_JOB_NAME("Engineer")
	head = /obj/item/clothing/head/hardhat
	uniform = /obj/item/clothing/under/rank/engineer
	r_pocket = /obj/item/device/t_scanner
	id_type = /obj/item/weapon/card/id/engineering
	pda_type = /obj/item/device/pda/engineering

/decl/hierarchy/outfit/job/engineering/engineer/void
	name = OUTFIT_JOB_NAME("Engineer - Voidsuit")
	head = /obj/item/clothing/head/helmet/space/void/engineering
	mask = /obj/item/clothing/mask/breath
	suit = /obj/item/clothing/suit/space/void/engineering

/decl/hierarchy/outfit/job/engineering/atmos
	name = OUTFIT_JOB_NAME("Atmospheric technician")
	uniform = /obj/item/clothing/under/rank/atmospheric_technician
	belt = /obj/item/weapon/storage/belt/utility/atmostech
	id_type = /obj/item/weapon/card/id/engineering/atmos
	pda_type = /obj/item/device/pda/atmos
*/
