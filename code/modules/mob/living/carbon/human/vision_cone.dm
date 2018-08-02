/////////////VISION CONE///////////////
//Vision cone code by Matt and Honkertron. This vision cone code allows for mobs and/or items to blocked out from a players field of vision.
//This code makes use of the "cone of effect" proc created by Lummox, contributed by Jtgibson. More info on that here:
//http://www.byond.com/forum/?post=195138
///////////////////////////////////////

//"Made specially for Otuska"
// - Honker

// Optimized by Kachnov

//Defines.
#define OPPOSITE_DIR(D) turn(D, 180)

/client
	var/list/hidden_atoms = list()
	var/list/hidden_mobs = list()

/atom/proc/InCone(atom/center, dir = NORTH)
	if(!get_dist(center, src))
		return FALSE

	var/d = get_dir(center, src)
	var/dx = abs(x - center.x)
	var/dy = abs(y - center.y)

	if(!d || d == dir)
		return TRUE
	else if(dir & (dir-1))
		return (d & ~dir) ? FALSE : TRUE
	else if(!(d & dir))
		return FALSE
	else if(dx == dy)
		return TRUE
	else if(dy > dx)
		return (dir & (NORTH|SOUTH)) ? TRUE : FALSE

	return (dir & (EAST|WEST)) ? TRUE : FALSE

/mob/dead/InCone(mob/center, dir = NORTH)
	return FALSE

/mob/living/InCone(mob/center, dir = NORTH)
	. = ..()

	for (var/grab in grabbed_by)
		var/obj/item/grab/G = grab
		if (G.assailant == center)
			return FALSE
	return .

/proc/cone(atom/center, dir = NORTH, list/list)
	for(var/atom in list)
		var/atom/A = atom
		if(!A.InCone(center, dir))
			list -= A
	return list

/mob/proc/update_vision_cone()
	return FALSE

/mob/living/carbon/human/update_vision_cone()
	var/delay = 10
	if(client)
		var/image/I = null
		for(var/image in client.hidden_atoms)
			I = image
			I.override = FALSE
			spawn (delay)
				qdel(I)
			delay += 10
		check_fov()
		client.hidden_atoms.Cut()
		client.hidden_mobs.Cut()
		fov.dir = dir
		if(fov.alpha)
			for(var/mob/living/L in cone(src, OPPOSITE_DIR(dir), oviewers(10, src)))
				I = image("split", L)
				I.override = TRUE
				client.images += I
				client.hidden_atoms += I
				client.hidden_mobs += L

				if(pulling == L)//If we're pulling them we don't want them to be invisible, too hard to play like that.
					I.override = FALSE

				else if(L.footstep >= 1)
					L.in_vision_cones[client] = TRUE

			//Optional items can be made invisible too. Uncomment this part if you wish to items to be invisible.
			//var/obj/item/O
			//for(O in cone(src, OPPOSITE_DIR(src.dir), oview(src)))
			//	I = image("split", O)
			//	I.override = 1
			//	src.client.images += I
			//	src.client.hidden_atoms += I

	else
		return

/mob/living/carbon/human/proc/SetFov(var/n)
	if(!n)
		hide_cone()
	else
		show_cone()

/mob/living/carbon/human/proc/check_fov()

	if(resting || lying || (client.eye != client.mob && client.eye != client.mob.loc))
		fov.alpha = 0
		return

	else if(usefov)
		show_cone()

	else
		hide_cone()

//Making these generic procs so you can call them anywhere.
/mob/living/carbon/human/proc/show_cone()
	if(fov)
		fov.alpha = 255
		usefov = 1

mob/living/carbon/human/proc/hide_cone()
	if(fov)
		fov.alpha = 0
		usefov = 0