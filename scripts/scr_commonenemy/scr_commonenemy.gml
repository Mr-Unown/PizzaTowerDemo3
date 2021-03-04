//Drain Scare
if scarebuffer > 0
scarebuffer--
//Spaghetti Scare
if scarebuffer > 0 && shake != 1 && state = 94 && state != 109 && thrown = 0 && state != 106 && markedfordeath != 1 {
    state = 94
	if (sprite_index != scaredspr)
    {
       sprite_index = scaredspr
       vsp = -5
    }
}
else if !(state = 94 && scarebuffer > 0)
	scarebuffer = 0
//An attempt at preventing out of bound enemies
if (markedfordeath == 1 && markedfordeathbuffer <= 0 && thrown == 1)
    instance_destroy()
if (thrown == 0 || markedfordeath == 0)
{
    markedfordeath = 0
    markedfordeathbuffer = 100
}
if (markedfordeath == 1)
    markedfordeathbuffer--
if (thrown == 1 && place_meeting((x + hsp), (y + vsp), obj_hallway))
    markedfordeath = 1
//Lower the Stuntimer
if hp > 1 && stunned > 70
	stunned = 70
//Dying
if hp <= 0 {
	dying = true
	deathbuffer = 100
}
else if shake = 1 && hp <= 1 {
	dying = true
	deathbuffer = 100
}
else {
	dying = false
	deathbuffer = 100
}
if deathbuffer > 0 && dying = true {
	deathbuffer--
	stunned = 100
	var size = random_range(0.5, 1)
	var randomgore = random_range(-50,100)
	if randomgore >= 95 {
			with (instance_create((x + random_range(-5, 5)), ((y + random_range(-5, 5))), obj_slimedebris))
			{
				image_xscale = size
				image_yscale = image_xscale
				hsp = (initialhsp + other.hsp)
			}
	}
}
//Force Death
if dying = true && thrown != 1 && ((state != 105 && state != 109 && state != 106 && state != 200)) && deathbuffer <= 0 {
	event_user(0)
}
