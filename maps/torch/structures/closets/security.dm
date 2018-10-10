/*
 * Torch Security
 */

// MTF LOCKERS

/obj/structure/closet/secure_closet/mtf/enlisted
	name = "Junior Guard's Locker"
	req_access = list(access_mtflvl1)
	icon_state = "enlistedlocked"
	icon_closed = "enlistedunlocked"
	icon_locked = "enlistedlocked"
	icon_opened = "enlistedopen"
	icon_off = "enlistedoff"

/obj/structure/closet/secure_closet/mtf/enlisted/WillContain()
	return list(
		/obj/item/clothing/under/scp/whiteuniform,
		/obj/item/clothing/head/helmet/pcrc,
		/obj/item/clothing/accessory/armor/helmcover/navy,
		/obj/item/clothing/suit/armor/pcarrier/navy,
		/obj/item/clothing/accessory/armorplate,
		/obj/item/clothing/accessory/armguards/blue,
		/obj/item/clothing/accessory/legguards/blue,
		/obj/item/clothing/accessory/armor/tag/solgov/sec,
		/obj/item/weapon/storage/belt/security/tactical,
		/obj/item/weapon/gun/projectile/pistol,
		/obj/item/ammo_magazine/mc9mm,
		/obj/item/weapon/melee/classic_baton,
		/obj/item/weapon/handcuffs,
		/obj/item/clothing/mask/balaclava,
		/obj/item/weapon/storage/box/bloodtypes
	)

/obj/structure/closet/secure_closet/mtf/commander
	name = "Guard Commander Locker"
	req_access = list(access_mtflvl5)
	icon_state = "cmlocked"
	icon_closed = "cmunlocked"
	icon_locked = "cmlocked"
	icon_opened = "cmopen"
	icon_off = "cmoff"

/obj/structure/closet/secure_closet/mtf/commander/WillContain()
	return list(
		/obj/item/clothing/under/scp/whiteuniform,
		/obj/item/clothing/head/helmet/site53/guardcomm,
		/obj/item/clothing/accessory/armor/helmcover/navy,
		/obj/item/clothing/suit/armor/pcarrier/navy,
		/obj/item/clothing/accessory/armorplate/merc,
		/obj/item/clothing/accessory/armguards/merc,
		/obj/item/clothing/accessory/legguards/merc,
		/obj/item/clothing/accessory/armor/tag/solgov/com/guardcomm,
		/obj/item/weapon/storage/belt/security/tactical,
		/obj/item/clothing/accessory/storage/pouches/large/blue,
		/obj/item/weapon/gun/projectile/pistol,
		/obj/item/ammo_magazine/mc9mm,
		/obj/item/weapon/melee/telebaton,
		/obj/item/weapon/handcuffs,
		/obj/item/clothing/mask/balaclava,
		/obj/item/weapon/storage/box/bloodtypes
	)

/obj/structure/closet/secure_closet/mtf/nco
	name = "Guard's Locker"
	req_access = list(access_mtflvl2)
	icon_state = "nlocked"
	icon_closed = "nunlocked"
	icon_locked = "nlocked"
	icon_opened = "nopen"
	icon_off = "noff"

/obj/structure/closet/secure_closet/mtf/nco/WillContain()
	return list(
		/obj/item/clothing/under/scp/whiteuniform,
		/obj/item/clothing/head/helmet/pcrc,
		/obj/item/clothing/accessory/armor/helmcover/navy,
		/obj/item/clothing/suit/armor/pcarrier/navy,
		/obj/item/clothing/accessory/armorplate/medium,
		/obj/item/clothing/accessory/armguards/blue,
		/obj/item/clothing/accessory/legguards/blue,
		/obj/item/clothing/accessory/armor/tag/solgov/sec,
		/obj/item/weapon/storage/belt/security/tactical,
		/obj/item/clothing/accessory/storage/pouches/blue,
		/obj/item/weapon/gun/projectile/pistol,
		/obj/item/ammo_magazine/mc9mm,
		/obj/item/weapon/melee/classic_baton,
		/obj/item/weapon/handcuffs,
		/obj/item/clothing/mask/balaclava,
		/obj/item/weapon/storage/box/bloodtypes
	)

/obj/structure/closet/secure_closet/mtf/co
	name = "Zone Commander's Locker"
	req_access = list(access_mtflvl4)
	icon_state = "colocked"
	icon_closed = "counlocked"
	icon_locked = "colocked"
	icon_opened = "coopen"
	icon_off = "cooff"

/obj/structure/closet/secure_closet/mtf/co/WillContain()
	return list(
		/obj/item/clothing/under/scp/whiteuniform,
		/obj/item/clothing/head/helmet/site53/zonecomm,
		/obj/item/clothing/accessory/armor/helmcover/navy,
		/obj/item/clothing/suit/armor/pcarrier/navy,
		/obj/item/clothing/accessory/armorplate/tactical,
		/obj/item/clothing/accessory/armguards/ablative,
		/obj/item/clothing/accessory/legguards/ablative,
		/obj/item/clothing/accessory/armor/tag/solgov/com/zonecomm,
		/obj/item/weapon/storage/belt/security/tactical,
		/obj/item/clothing/accessory/storage/pouches/large/blue,
		/obj/item/weapon/gun/projectile/pistol,
		/obj/item/ammo_magazine/mc9mm,
		/obj/item/weapon/melee/classic_baton,
		/obj/item/weapon/handcuffs,
		/obj/item/clothing/mask/balaclava,
		/obj/item/weapon/storage/box/bloodtypes
	)