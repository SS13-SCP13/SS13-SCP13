GLOBAL_LIST_EMPTY(scp173s)

/datum/scp/SCP_173
	name = "SCP-173"
	designation = "173"
	classification = EUCLID

/mob/living/scp_173
	name = "SCP-173"
	desc = "A statue, constructed from concrete and rebar with traces of Krylon brand spray paint"
	icon = 'icons/SCP/scp-173.dmi'
	icon_state = "173"
	SCP = /datum/scp/SCP_173

	maxHealth = 5000
	health = 5000

	var/last_snap = 0

/mob/living/scp_173/New()
	..()
	GLOB.scp173s += src

/mob/living/scp_173/Destroy()
	GLOB.scp173s -= src
	..()

/mob/living/scp_173/proc/IsBeingWatched()
	for(var/mob/living/carbon/human/H in view(src, 7))
		if(H.SCP)
			continue
		if(is_blind(H))
			continue
		if(H.stat != CONSCIOUS)
			continue
		if(InCone(H, H.dir))
			return TRUE
	return FALSE

/mob/living/scp_173/Move(a,b,f)
	if(IsBeingWatched())
		return FALSE
	return ..(a,b,f)

/mob/living/scp_173/movement_delay()
	return -5

/mob/living/scp_173/UnarmedAttack(var/atom/A)
	if(!IsBeingWatched() && ishuman(A))
		var/mob/living/carbon/human/H = A
		if(H.SCP)
			to_chat(src, "<span class='warning'><I>[H] is a fellow SCP!</I></span>")
			return
		if(H.stat == DEAD)
			to_chat(src, "<span class='warning'><I>[H] is already dead!</I></span>")
			return
		visible_message("<span class='danger'>[src] snaps [H]'s neck!</span>")
		playsound(loc, pick('sound/scp/spook/NeckSnap1.ogg', 'sound/scp/spook/NeckSnap3.ogg'), 50, 1)
		H.death()

/mob/living/scp_173/Life()
	. = ..()
	if (client)
		return
	if(IsBeingWatched())
		return
	var/mob/living/carbon/human/target
	var/mob/living/carbon/human/possible_targets = list()
	for(var/mob/living/carbon/human/H in view(src, 7))
		if(H.SCP)
			continue
		if(H.stat == DEAD)
			continue
		if(!AStar(loc, H.loc, /turf/proc/AdjacentTurfs, /turf/proc/Distance, max_nodes=25, max_node_depth=7))
			continue // We can't reach this person anyways
		possible_targets += H
	if(world.time >= last_snap+50)
		var/turf/spot
		target = pick(possible_targets)
		var/turf/behind_target = get_step(target.loc, turn(target.dir, 180))
		if(isfloor(behind_target) && get_dist(behind_target, loc) <= 7)
			spot = behind_target
		else
			var/list/directions = shuffle(GLOB.cardinal.Copy())
			for(var/D in directions)
				var/turf/T = get_step(target, D)
				if(isfloor(T) && get_dist(T, loc) <= 7)
					spot = T
					break
		if(!spot) // We couldn't find a spot to go to!
			return
		forceMove(spot)
		dir = get_dir(src, target)
		visible_message("<span class='danger'>[src] snaps [target]'s neck!</span>")
		playsound(loc, pick('sound/scp/spook/NeckSnap1.ogg', 'sound/scp/spook/NeckSnap3.ogg'), 50, 1)
		target.death()
		last_snap = world.time
