/*/decl/hierarchy/supply_pack/security
	name = "Security"
*/
/decl/hierarchy/supply_pack/security/specialops
	name = "Special Ops supplies"
	contains = list(/obj/item/weapon/storage/box/emps,
					/obj/item/weapon/grenade/smokebomb = 3,
					/obj/item/weapon/grenade/chem_grenade/incendiary)
	cost = 20
	containername = "\improper Special Ops crate"
	hidden = 1

/decl/hierarchy/supply_pack/security/lightarmor
	name = "Armor - Light"
	contains = list(/obj/item/clothing/suit/armor/pcarrier/light = 4,
					/obj/item/clothing/head/helmet =4)
	cost = 30
	containertype = /obj/structure/closet/crate/secure
	containername = "\improper Light armor crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/pistol
	name = "Pistol Crate"
	contains = list(/obj/item/weapon/gun/projectile/sec/sec, /obj/item/ammo_magazine/c45m = 4)
	cost = 20
	containertype = /obj/structure/closet/crate/secure
	containername = "\improper Pistol Crate"
	access = access_mtflvl2

 /decl/hierarchy/supply_pack/security/smg
	name = "SMG Crate"
	contains = list(/obj/item/weapon/gun/projectile/automatic/c20r, /obj/item/ammo_magazine/a10mm = 4)
	cost = 40
	containertype = /obj/structure/closet/crate/secure
	containername = "\improper SMG Crate"
	access = access_mtflvl4

 /decl/hierarchy/supply_pack/security/guard
	name = "Full Guard Crate"
	contains = list(/obj/item/clothing/under/scp/utility/security,
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
		/obj/item/weapon/melee/telebaton,
		/obj/item/weapon/handcuffs,
		/obj/item/clothing/gloves/tactical,
		/obj/item/device/flash,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/accessory/solgov/department/security/marine,
		/obj/item/clothing/accessory/holster/thigh,
		/obj/item/clothing/mask/balaclava,
		/obj/item/weapon/storage/box/bloodtypes
	)
	cost = 30
	containertype = /obj/structure/closet/secure_closet/mtf/nco
	containername = "\improper Guard Gear Crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/tacticalarmor
	name = "Armor - Tactical"
	contains = list(/obj/item/clothing/under/tactical,
					/obj/item/clothing/suit/armor/pcarrier/tan/tactical,
					/obj/item/clothing/head/helmet/tactical,
					/obj/item/clothing/mask/balaclava/tactical,
					/obj/item/clothing/glasses/tacgoggles,
					/obj/item/weapon/storage/belt/security/tactical,
					/obj/item/clothing/shoes/tactical,
					/obj/item/clothing/gloves/tactical)
	cost = 45
	containertype = /obj/structure/closet/crate/secure
	containername = "\improper Tactical armor crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/riotarmor
	name = "Armor - Riot gear"
	contains = list(/obj/item/weapon/shield/riot = 4,
					/obj/item/clothing/head/helmet/riot = 4,
					/obj/item/clothing/suit/armor/riot = 4,
					/obj/item/weapon/storage/box/flashbangs,
					/obj/item/weapon/storage/box/teargas)
	cost = 80
	containertype = /obj/structure/closet/crate/secure
	containername = "\improper Riot armor crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/ballisticarmor
	name = "Armor - Ballistic"
	contains = list(/obj/item/clothing/head/helmet/ballistic = 4,
					/obj/item/clothing/suit/armor/bulletproof = 4)
	cost = 60
	containertype = /obj/structure/closet/crate/secure
	containername = "\improper Ballistic suit crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/weapons
	name = "Junior Guard Weapons"
	contains = list(/obj/item/device/flash = 4,
					/obj/item/weapon/reagent_containers/spray/pepper = 4,
					/obj/item/weapon/melee/baton/loaded = 4,
					/obj/item/weapon/gun/energy/taser = 4)
	cost = 50
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper Weapons crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/shotgun
	name = "Weapons - Shotgun"
	contains = list(/obj/item/weapon/gun/projectile/shotgun/pump/combat = 2)
	cost = 60
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper Shotgun crate"
	access = access_mtflvl4
	security_level = SUPPLY_SECURITY_ELEVATED

/decl/hierarchy/supply_pack/security/flashbang
	name = "Weapons - Flashbangs"
	contains = list(/obj/item/weapon/storage/box/flashbangs = 2)
	cost = 30
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper Flashbang crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/teargas
	name = "Weapons - Tear gas grenades"
	contains = list(/obj/item/weapon/storage/box/teargas = 2)
	cost = 30
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper Tear gas grenades crate"
	access = access_mtflvl2

/decl/hierarchy/supply_pack/security/pistolammo
	name = "Ammunition - .45 magazines"
	contains = list(/obj/item/ammo_magazine/c45m = 4)
	cost = 20
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper .45 ammunition crate"
	access = access_mtflvl3
	security_level = SUPPLY_SECURITY_ELEVATED

/decl/hierarchy/supply_pack/security/pistolammorubber
	name = "Ammunition - .45 rubber"
	contains = list(/obj/item/ammo_magazine/c45m/rubber = 4)
	cost = 15
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper .45 rubber ammunition crate"
	access = access_mtflvl1

/decl/hierarchy/supply_pack/security/pistolammopractice
	name = "Ammunition - .45 practice"
	contains = list(/obj/item/ammo_magazine/c45m/practice = 8)
	cost = 15
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper .45 practice ammunition crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/shotgunammo
	name = "Ammunition - Lethal shells"
	contains = list(/obj/item/weapon/storage/box/shotgunammo = 2,
					/obj/item/weapon/storage/box/shotgunshells = 2)
	cost = 60
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper Lethal shotgun shells crate"
	access = access_mtflvl3
	security_level = SUPPLY_SECURITY_ELEVATED

/decl/hierarchy/supply_pack/security/shotgunbeanbag
	name = "Ammunition - Beanbag shells"
	contains = list(/obj/item/weapon/storage/box/beanbags = 3)
	cost = 30
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper Beanbag shotgun shells crate"
	access = access_mtflvl1

/decl/hierarchy/supply_pack/security/pdwammo
	name = "Ammunition - 9mm top mounted"
	contains = list(/obj/item/ammo_magazine/mc9mmt = 4)
	cost = 40
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper 9mm ammunition crate"
	access = access_mtflvl3
	security_level = SUPPLY_SECURITY_HIGH

/decl/hierarchy/supply_pack/security/pdwammorubber
	name = "Ammunition - 9mm top mounted rubber"
	contains = list(/obj/item/ammo_magazine/mc9mmt/rubber = 4)
	cost = 30
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper 9mm rubber ammunition crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/pdwammopractice
	name = "Ammunition - 9mm top mounted practice"
	contains = list(/obj/item/ammo_magazine/mc9mmt/practice = 8)
	cost = 30
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper 9mm practice ammunition crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/bullpupammo
	name = "Ammunition - 7.62"
	contains = list(/obj/item/ammo_magazine/a762 = 4)
	cost = 60
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper 7.62 ammunition crate"
	access = access_mtflvl3
	security_level = SUPPLY_SECURITY_HIGH

/decl/hierarchy/supply_pack/security/bullpupammopractice
	name = "Ammunition - 7.62 practice"
	contains = list(/obj/item/ammo_magazine/a762/practice = 8)
	cost = 30
	containertype = /obj/structure/closet/crate/secure/weapon
	containername = "\improper 7.62 practice ammunition crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/forensics //Not access-restricted so PIs can use it.
	name = "Forensics - Auxiliary tools"
	contains = list(/obj/item/weapon/forensics/sample_kit,
					/obj/item/weapon/forensics/sample_kit/powder,
					/obj/item/weapon/storage/box/swabs = 3,
					/obj/item/weapon/reagent_containers/spray/luminol)
	cost = 30
	containername = "\improper Auxiliary forensic tools crate"

/decl/hierarchy/supply_pack/security/detectivegear
	name = "Forensics - investigation equipment"
	contains = list(/obj/item/weapon/storage/box/evidence = 2,
					/obj/item/device/radio/headset/headset_sec,
					/obj/item/taperoll/police,
					/obj/item/clothing/glasses/sunglasses,
					/obj/item/device/camera,
					/obj/item/weapon/folder/red,
					/obj/item/weapon/folder/blue,
					/obj/item/clothing/gloves/forensic,
					/obj/item/device/taperecorder,
					/obj/item/device/mass_spectrometer,
					/obj/item/device/camera_film = 2,
					/obj/item/weapon/storage/photo_album,
					/obj/item/device/reagent_scanner,
					/obj/item/weapon/storage/briefcase/crimekit = 2)
	cost = 50
	containertype = /obj/structure/closet/crate/secure
	containername = "\improper Forensic equipment crate"
	access = access_mtflvl3

/decl/hierarchy/supply_pack/security/securitybarriers
	name = "Misc - Barrier crate"
	contains = list(/obj/machinery/deployable/barrier = 4)
	cost = 20
	containertype = /obj/structure/closet/crate/secure/large
	containername = "\improper Security barrier crate"
	access = access_mtflvl1

/decl/hierarchy/supply_pack/security/securitybarriers
	name = "Misc - Wall shield Generators"
	contains = list(/obj/machinery/shieldwallgen = 2)
	cost = 20
	containertype = /obj/structure/closet/crate/secure/large
	containername = "\improper wall shield generators crate"
	access = access_mtflvl1

/decl/hierarchy/supply_pack/security/securitybiosuit
	name = "Misc - Security biohazard gear"
	contains = list(/obj/item/clothing/head/bio_hood/security,
					/obj/item/clothing/suit/bio_suit/security,
					/obj/item/clothing/mask/gas,
					/obj/item/weapon/tank/oxygen,
					/obj/item/clothing/gloves/latex)
	cost = 30
	containertype = /obj/structure/closet/crate/secure
	containername = "\improper Security biohazard gear crate"
	access = access_mtflvl3