#if !defined(using_map_DATUM)

	#include "ds90_announcements.dm"
	#include "ds90areas.dm"
	#include "../torch/torch_areas.dm"
//	#include "torch_elevator.dm"
	#include "ds90elevators.dm"
//	#include "torch_holodecks.dm"
//	#include "torch_overmap.dm"
	#include "ds90_presets.dm"
//	#include "torch_ranks.dm"
	#include "site_ds90_ranks.dm"
	#include "../torch/torch_shuttles.dm"
	#include "../torch/torch_presets.dm"
//	#include "torch_unit_testing.dm"
//	#include "torch_antagonism.dm"
//	#include "torch_npcs.dm"
	#include "ds90_securitystate.dm"

//	#include "datums/uniforms.dm"
//	#include "datums/uniforms_expedition.dm"
//	#include "datums/uniforms_fleet.dm"
//	#include "datums/supplypacks/security.dm"
//	#include "datums/supplypacks/science.dm"

	#include "items/cards_ids.dm"
	#include "items/encryption_keys.dm"
	#include "items/headsets.dm"
	#include "items/items.dm"
//	#include "items/machinery.dm"
	#include "items/manuals.dm"
	#include "items/stamps.dm"
//	#include "items/uniform_vendor.dm"
	#include "items/rigs.dm"

//	#include "items/clothing/clothing.dm"
	#include "items/clothing/solgov-accessory.dm"
	#include "items/clothing/solgov-armor.dm"
	#include "items/clothing/solgov-feet.dm"
	#include "items/clothing/solgov-head.dm"
	#include "items/clothing/solgov-suit.dm"
	#include "items/clothing/solgov-under.dm"

	#include "job/access.dm"
	#include "job/jobs.dm"
	#include "job/outfits.dm"

//	#include "structures/closets.dm"
	#include "structures/signs.dm"
//	#include "structures/closets/command.dm"
//	#include "structures/closets/engineering.dm"
//	#include "structures/closets/medical.dm"
//	#include "structures/closets/misc.dm"
	#include "structures/closets/research.dm"
	#include "structures/closets/security.dm"
	#include "structures/closets/services.dm"
	#include "structures/closets/supply.dm"
//	#include "structures/closets/exploration.dm"*/

//	#include "loadout/_defines.dm"
//	#include "loadout/loadout_accessories.dm"
/*	#include "loadout/loadout_eyes.dm"
	#include "loadout/loadout_gloves.dm"
	#include "loadout/loadout_head.dm"
	#include "loadout/loadout_shoes.dm"
	#include "loadout/loadout_suit.dm"
	#include "loadout/loadout_uniform.dm"
	#include "loadout/loadout_xeno.dm"*/
//	#include "loadout/~defines.dm"

	#include "ds90-1.dmm"
	#include "ds90-2.dmm"
	#include "ds90-3.dmm"
	#include "ds90-4.dmm"
	#include "ds90-5.dmm"
	#include "ds90-6.dmm"
	#include "ds90-7.dmm"
	#include "ds90-8.dmm"
//	#include "torch-3.dmm"
//	#include "torch-4.dmm"
//	#include "torch-5.dmm"
//	#include "torch-6.dmm"
//	#include "torch-7.dmm"
/*	#include "../away/empty.dmm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/marooned/marooned.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/hydro/hydro.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/icarus/icarus.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"*/

	#include "../../code/modules/lobby_music/Perdition.dm"
	#include "../../code/modules/lobby_music/sm.dm"
	#include "../../code/modules/lobby_music/std.dm"


	#define using_map_DATUM /datum/map/ds90

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Site DS90

#endif
