/*
 * Torch Command
 */


/obj/structure/closet/secure_closet/XO/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/weapon/cartridge/hop,
		/obj/item/clothing/suit/armor/pcarrier/medium/command,
		/obj/item/clothing/head/helmet/solgov/command,
		/obj/item/device/radio/headset/heads/torchxo,
		/obj/item/weapon/gun/projectile/revolver/webley,
		/obj/item/ammo_magazine/c44,
		/obj/item/ammo_magazine/c44,
		/obj/item/clothing/accessory/holster/thigh,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/headset,
		/obj/item/weapon/storage/box/headset/torchxo,
		/obj/item/weapon/storage/box/large/ids,
		/obj/item/weapon/storage/box/PDAs,
		/obj/item/weapon/clipboard,
		/obj/item/device/holowarrant,
		/obj/item/weapon/folder/blue,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/captain, /obj/item/weapon/storage/backpack/satchel_cap)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/captain, /obj/item/weapon/storage/backpack/messenger/com)),
		/obj/item/weapon/storage/box/imprinting
	)

/obj/structure/closet/secure_closet/administration/facilityadmin
	name = "facility director's locker"
	req_access = list(access_adminlvl5)
	icon_state = "flocked"
	icon_closed = "funlocked"
	icon_locked = "flocked"
	icon_opened = "fopen"
	icon_off = "foff"

/obj/structure/closet/secure_closet/administration/facilityadmin/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/megaphone,
		/obj/item/weapon/clipboard,
		/obj/item/weapon/folder/blue,
		/obj/item/clothing/under/suit_jacket/charcoal,
		/obj/item/clothing/under/suit_jacket/charcoal,
		/obj/item/clothing/under/suit_jacket/charcoal,
		/obj/item/clothing/shoes/dress,
		/obj/item/device/radio,
	)

/obj/structure/closet/secure_closet/administration/hop
	name = "head of personnel's locker"
	req_access = list(access_adminlvl5)
	icon_state = "flocked"
	icon_closed = "funlocked"
	icon_locked = "flocked"
	icon_opened = "fopen"
	icon_off = "foff"

/obj/structure/closet/secure_closet/administration/hop/WillContain()
	return list(
		/obj/item/clothing/under/suit_jacket/checkered,
		/obj/item/clothing/under/suit_jacket/checkered,
		/obj/item/clothing/under/suit_jacket/checkered,
		/obj/item/clothing/shoes/dress,
		/obj/item/device/radio,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/headset,
		/obj/item/weapon/clipboard,
		/obj/item/weapon/folder/blue,
	)
