/*
 * Site 53 Security
 */

// MTF LOCKERS

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
		/obj/item/clothing/under/solgov/utility/fleet/combat/security,
		/obj/item/clothing/head/helmet/pcrc,
		/obj/item/clothing/accessory/armor/helmcover/navy,
		/obj/item/clothing/suit/armor/pcarrier,
		/obj/item/clothing/accessory/armorplate,
		/obj/item/clothing/accessory/armguards,
		/obj/item/clothing/accessory/legguards,
		/obj/item/clothing/accessory/armor/tag/solgov/sec,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/weapon/storage/belt/security/tactical,
		/obj/item/weapon/gun/projectile/pistol,
		/obj/item/ammo_magazine/mc9mm = 4,
		/obj/item/weapon/gun/projectile/automatic/c20r,
		/obj/item/ammo_magazine/a10mm = 4,
		/obj/item/weapon/melee/telebaton,
		/obj/item/weapon/handcuffs,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/gloves/tactical,
		/obj/item/clothing/accessory/holster/thigh,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/mask/balaclava
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
		/obj/item/clothing/under/solgov/utility/fleet/combat/security,
		/obj/item/clothing/head/helmet/site53/guardcomm,
		/obj/item/clothing/accessory/armor/helmcover/navy,
		/obj/item/clothing/suit/armor/pcarrier,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/clothing/accessory/armorplate/merc,
		/obj/item/clothing/accessory/armguards/merc,
		/obj/item/clothing/accessory/legguards/merc,
		/obj/item/clothing/accessory/armor/tag/solgov/com/guardcomm,
		/obj/item/weapon/storage/belt/security/tactical,
		/obj/item/clothing/accessory/storage/pouches/large,
		/obj/item/weapon/gun/projectile/pistol,
		/obj/item/ammo_magazine/mc9mm = 4,
		/obj/item/weapon/gun/projectile/automatic/c20r,
		/obj/item/ammo_magazine/a10mm = 4,
		/obj/item/weapon/melee/telebaton,
		/obj/item/weapon/handcuffs,
		/obj/item/clothing/gloves/tactical,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/clothing/accessory/holster/thigh,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/mask/balaclava
	)

/obj/structure/closet/secure_closet/mtf/nco
	name = "Guard's Locker"
	req_access = list(access_mtflvl3)
	icon_state = "nlocked"
	icon_closed = "nunlocked"
	icon_locked = "nlocked"
	icon_opened = "nopen"
	icon_off = "noff"

/obj/structure/closet/secure_closet/mtf/nco/WillContain()
	return list(
		/obj/item/clothing/under/solgov/utility/fleet/combat/security,
		/obj/item/clothing/head/helmet/pcrc,
		/obj/item/clothing/accessory/armor/helmcover/navy,
		/obj/item/clothing/suit/armor/pcarrier,
		/obj/item/clothing/accessory/armorplate/medium,
		/obj/item/clothing/accessory/armguards,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/clothing/accessory/legguards,
		/obj/item/clothing/accessory/armor/tag/solgov/sec,
		/obj/item/weapon/storage/belt/security/tactical,
		/obj/item/clothing/accessory/storage/pouches,
		/obj/item/weapon/gun/projectile/pistol,
		/obj/item/ammo_magazine/mc9mm = 4,
		/obj/item/weapon/gun/projectile/automatic/c20r,
		/obj/item/ammo_magazine/a10mm = 4,
		/obj/item/weapon/melee/telebaton,
		/obj/item/weapon/handcuffs,
		/obj/item/clothing/gloves/tactical,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/accessory/holster/thigh,
		/obj/item/clothing/mask/balaclava
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
		/obj/item/clothing/under/solgov/utility/fleet/combat/security,
		/obj/item/clothing/head/helmet/site53/zonecomm,
		/obj/item/clothing/accessory/armor/helmcover/navy,
		/obj/item/clothing/suit/armor/pcarrier,
		/obj/item/clothing/accessory/armorplate/tactical,
		/obj/item/clothing/accessory/armguards/ablative,
		/obj/item/clothing/accessory/legguards/ablative,
		/obj/item/clothing/accessory/armor/tag/solgov/com/zonecomm,
		/obj/item/weapon/storage/belt/security/tactical,
		/obj/item/clothing/accessory/storage/pouches/large,
		/obj/item/weapon/gun/projectile/pistol,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/ammo_magazine/mc9mm = 4,
		/obj/item/weapon/gun/projectile/automatic/c20r,
		/obj/item/ammo_magazine/a10mm = 4,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/weapon/melee/telebaton,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/weapon/handcuffs,
		/obj/item/clothing/gloves/tactical,
		/obj/item/clothing/accessory/holster/thigh,
		/obj/item/clothing/mask/balaclava
	)

/obj/structure/closet/secure_closet/mtf/breachautomatics
	name = "automatic weapons locker"
	req_access = list(access_mtflvl2)
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_off = "secoff"

/obj/structure/closet/secure_closet/mtf/breachautomatics/WillContain()
	return list(
		/obj/item/weapon/gun/projectile/automatic/z8,
		/obj/item/weapon/gun/projectile/automatic/z8,
		/obj/item/weapon/gun/projectile/automatic/z8,
		/obj/item/ammo_magazine/a762 = 12
	)


/obj/structure/closet/secure_closet/mtf/breachshotguns
	name = "tactical shotgun locker"
	req_access = list(access_mtflvl2)
	icon_state = "sec1"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_off = "secoff"

/obj/structure/closet/secure_closet/mtf/breachshotguns/WillContain()
	return list(
		/obj/item/weapon/gun/projectile/shotgun/tactical,
		/obj/item/weapon/gun/projectile/shotgun/tactical,
		/obj/item/weapon/gun/projectile/shotgun/tactical,
		/obj/item/weapon/storage/box/mtf/empammo = 6,
		/obj/item/weapon/storage/box/mtf/pelletammo = 6
	)