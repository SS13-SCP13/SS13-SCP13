/*
 * Site13 Spare Closets
 */

/obj/structure/closet/secure_closet/animals13
	name = "animal control closet"
	req_access = list(access_mtflvl2)

/obj/structure/closet/secure_closet/animals13/WillContain()
	return list(
		/obj/item/device/assembly/signaler,
		/obj/item/device/radio/electropack = 3,
		/obj/item/weapon/gun/launcher/syringe/rapid,
		/obj/item/weapon/storage/box/syringegun,
		/obj/item/weapon/storage/box/syringes,
		/obj/item/weapon/reagent_containers/glass/bottle/chloralhydrate,
		/obj/item/weapon/storage/box/handcuffs,
		/obj/item/weapon/reagent_containers/glass/bottle/stoxin,
	)
