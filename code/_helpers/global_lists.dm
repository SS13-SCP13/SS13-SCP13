//Since it didn't really belong in any other category, I'm putting this here
//This is for procs to replace all the goddamn 'in world's that are chilling around the code

// New objects, mostly created at startup, get added to these lists. GLOB isn't used because it isn't available at startup.
var/global/list/objs = list()
var/global/list/structures = list() 
var/global/list/flora = list() 
var/global/list/effects = list() 
var/global/list/items = list()
var/global/list/devices = list() 
var/global/list/cameras = list()
var/global/list/cables = list()
var/global/list/chemical_reactions = list() 
var/global/list/chemical_reagents = list() 
var/global/list/landmarks = list() 
var/global/list/surgery_steps = list()
var/global/list/side_effects = list() 
var/global/list/mechas = list() 
var/global/list/jobs = list() 
var/global/list/lighting_corners = list()
var/global/list/lighting_overlays = list() 
var/global/list/nano_modules = list() 
var/global/list/singularities = list() 
var/global/list/admin_datums = list()
var/global/list/cleanables = list() 

#define all_genders_define_list list(MALE,FEMALE,PLURAL,NEUTER)
#define all_genders_text_list list("Male","Female","Plural","Neuter")

//Languages/species/whitelist.
var/global/list/all_species[0]
var/global/list/all_languages[0]
var/global/list/language_keys[0]					// Table of say codes for all languages
var/global/list/whitelisted_species = list(SPECIES_HUMAN) // Species that require a whitelist check.
var/global/list/playable_species = list(SPECIES_HUMAN)    // A list of ALL playable species, whitelisted, latejoin or otherwise.

var/list/mannequins_

// Posters
var/global/list/poster_designs = list()

// Grabs
var/global/list/all_grabstates[0]
var/global/list/all_grabobjects[0]

// Uplinks
var/list/obj/item/device/uplink/world_uplinks = list()

//Preferences stuff
//Hairstyles
GLOBAL_LIST_EMPTY(hair_styles_list)        //stores /datum/sprite_accessory/hair indexed by name
GLOBAL_LIST_EMPTY(facial_hair_styles_list) //stores /datum/sprite_accessory/facial_hair indexed by name

var/global/list/skin_styles_female_list = list()		//unused
GLOBAL_LIST_EMPTY(body_marking_styles_list)		//stores /datum/sprite_accessory/marking indexed by name

GLOBAL_DATUM_INIT(underwear, /datum/category_collection/underwear, new())

var/global/list/exclude_jobs = list(/datum/job/ai,/datum/job/cyborg)

// Visual nets
var/list/datum/visualnet/visual_nets = list()
var/datum/visualnet/camera/cameranet = new()

// Runes
var/global/list/rune_list = new()
var/global/list/endgame_exits = list()
var/global/list/endgame_safespawns = list()

var/global/list/syndicate_access = list(access_maint_tunnels, access_syndicate, access_external_airlocks)

// Strings which corraspond to bodypart covering flags, useful for outputting what something covers.
var/global/list/string_part_flags = list(
	"head" = HEAD,
	"face" = FACE,
	"eyes" = EYES,
	"upper body" = UPPER_TORSO,
	"lower body" = LOWER_TORSO,
	"legs" = LEGS,
	"feet" = FEET,
	"arms" = ARMS,
	"hands" = HANDS
)

// Strings which corraspond to slot flags, useful for outputting what slot something is.
var/global/list/string_slot_flags = list(
	"back" = SLOT_BACK,
	"face" = SLOT_MASK,
	"waist" = SLOT_BELT,
	"ID slot" = SLOT_ID,
	"ears" = SLOT_EARS,
	"eyes" = SLOT_EYES,
	"hands" = SLOT_GLOVES,
	"head" = SLOT_HEAD,
	"feet" = SLOT_FEET,
	"exo slot" = SLOT_OCLOTHING,
	"body" = SLOT_ICLOTHING,
	"uniform" = SLOT_TIE,
	"holster" = SLOT_HOLSTER
)

//////////////////////////
/////Initial Building/////
//////////////////////////

/hook/global_init/proc/populateGlobalLists()
	possible_cable_coil_colours = sortAssoc(list(
		"Yellow" = COLOR_YELLOW,
		"Green" = COLOR_LIME,
		"Pink" = COLOR_PINK,
		"Blue" = COLOR_BLUE,
		"Orange" = COLOR_ORANGE,
		"Cyan" = COLOR_CYAN,
		"Red" = COLOR_RED,
		"White" = COLOR_WHITE
	))
	return 1

/proc/get_mannequin(var/ckey)
	if(!mannequins_)
		mannequins_ = new()
	. = mannequins_[ckey]
	if(!.)
		. = new/mob/living/carbon/human/dummy/mannequin()
		mannequins_[ckey] = .

/hook/global_init/proc/makeDatumRefLists()
	var/list/paths

	//Hair - Initialise all /datum/sprite_accessory/hair into an list indexed by hair-style name
	paths = typesof(/datum/sprite_accessory/hair) - /datum/sprite_accessory/hair
	for(var/path in paths)
		var/datum/sprite_accessory/hair/H = new path()
		GLOB.hair_styles_list[H.name] = H

	//Facial Hair - Initialise all /datum/sprite_accessory/facial_hair into an list indexed by facialhair-style name
	paths = typesof(/datum/sprite_accessory/facial_hair) - /datum/sprite_accessory/facial_hair
	for(var/path in paths)
		var/datum/sprite_accessory/facial_hair/H = new path()
		GLOB.facial_hair_styles_list[H.name] = H

	//Body markings - Initialise all /datum/sprite_accessory/marking into an list indexed by marking name
	paths = typesof(/datum/sprite_accessory/marking) - /datum/sprite_accessory/marking
	for(var/path in paths)
		var/datum/sprite_accessory/marking/M = new path()
		GLOB.body_marking_styles_list[M.name] = M

	//Surgery Steps - Initialize all /datum/surgery_step into a list
	paths = typesof(/datum/surgery_step)-/datum/surgery_step
	for(var/T in paths)
		var/datum/surgery_step/S = new T
		GLOB.surgery_steps += S
	sort_surgeries()

	//List of job. I can't believe this was calculated multiple times per tick!
	paths = typesof(/datum/job)-/datum/job
	paths -= exclude_jobs
	for(var/T in paths)
		var/datum/job/J = new T
		GLOB.jobs[J.title] = J

	//Languages and species.
	paths = typesof(/datum/language)-/datum/language
	for(var/T in paths)
		var/datum/language/L = new T
		all_languages[L.name] = L

	for (var/language_name in all_languages)
		var/datum/language/L = all_languages[language_name]
		if(!(L.flags & NONGLOBAL))
			language_keys[lowertext(L.key)] = L

	var/rkey = 0
	paths = typesof(/datum/species)
	for(var/T in paths)

		rkey++

		var/datum/species/S = T
		if(!initial(S.name))
			continue

		S = new T
		S.race_key = rkey //Used in mob icon caching.
		all_species[S.name] = S

		if(!(S.spawn_flags & SPECIES_IS_RESTRICTED))
			playable_species += S.name
		if(S.spawn_flags & SPECIES_IS_WHITELISTED)
			whitelisted_species += S.name

	//Posters
	paths = typesof(/datum/poster) - /datum/poster
	for(var/T in paths)
		var/datum/poster/P = new T
		poster_designs += P

	//Grabs
	paths = typesof(/datum/grab) - /datum/grab
	for(var/T in paths)
		var/datum/grab/G = new T
		if(G.state_name)
			all_grabstates[G.state_name] = G

	paths = typesof(/obj/item/grab) - /obj/item/grab
	for(var/T in paths)
		var/obj/item/grab/G = T
		all_grabobjects[initial(G.type_name)] = T

	for(var/grabstate_name in all_grabstates)
		var/datum/grab/G = all_grabstates[grabstate_name]
		G.refresh_updown()

	return 1

/* // Uncomment to debug chemical reaction list.
/client/verb/debug_chemical_list()

	for (var/reaction in GLOB.chemical_reactions)
		. += "GLOB.chemical_reactions\[\"[reaction]\"\] = \"[GLOB.chemical_reactions[reaction]]\"\n"
		if(islist(GLOB.chemical_reactions[reaction]))
			var/list/L = GLOB.chemical_reactions[reaction]
			for(var/t in L)
				. += "    has: [t]\n"
	log_debug(.)

*/

//*** params cache

var/global/list/paramslist_cache = list()

#define cached_key_number_decode(key_number_data) cached_params_decode(key_number_data, /proc/key_number_decode)
#define cached_number_list_decode(number_list_data) cached_params_decode(number_list_data, /proc/number_list_decode)

/proc/cached_params_decode(var/params_data, var/decode_proc)
	. = paramslist_cache[params_data]
	if(!.)
		. = call(decode_proc)(params_data)
		paramslist_cache[params_data] = .

/proc/key_number_decode(var/key_number_data)
	var/list/L = params2list(key_number_data)
	for(var/key in L)
		L[key] = text2num(L[key])
	return L

/proc/number_list_decode(var/number_list_data)
	var/list/L = params2list(number_list_data)
	for(var/i in 1 to L.len)
		L[i] = text2num(L[i])
	return L
