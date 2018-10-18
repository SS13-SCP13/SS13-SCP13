/decl/hierarchy/supply_pack/science
	name = "Science"

/decl/hierarchy/supply_pack/science/virus
	name = "Virus sample crate"
	contains = list(/obj/item/weapon/virusdish/random = 4)
	cost = 25
	containertype = /obj/structure/closet/crate/secure
	containername = "\improper Virus sample crate"
	access = access_medicalviro

/decl/hierarchy/supply_pack/science/coolanttank
	name = "Coolant tank crate"
	contains = list(/obj/structure/reagent_dispensers/coolanttank)
	cost = 16
	containertype = /obj/structure/largecrate
	containername = "\improper coolant tank crate"

/decl/hierarchy/supply_pack/science/phoron
	name = "Fuel assembly crate"
	contains = list(/obj/item/weapon/tank/phoron = 3,
					/obj/item/device/assembly/igniter = 3,
					/obj/item/device/assembly/prox_sensor = 3,
					/obj/item/device/assembly/timer = 3)
	cost = 10
	containertype = /obj/structure/closet/crate/secure/phoron
	containername = "\improper Fuel assembly crate"
	access = access_sciencelvl3
