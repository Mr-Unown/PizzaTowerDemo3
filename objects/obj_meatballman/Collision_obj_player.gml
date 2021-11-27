if other.state == states.handstandjump && state != meatballstate.waiting && thrown = false
{
    instance_create((x + (other.xscale * 40)), y, obj_punchdust)
    with (other.id)
    {
        image_index = 0
        sprite_index = spr_haulingstart
        heavy = 0
        state = states.grab
        baddiegrabbedID = other.id
    }
    playerid = other.object_index
	grabbedby = (playerid == obj_player1 ? 1 : 2)
    grabbed = 1	
}
else if stuntouchbuffer = 0 && state != meatballstate.waiting
{
	stuntouchbuffer = stuntouchbuffer_max
	stuntime = stuntime_max
	meatstate = meatballstate.stunned
	vsp = -5
	hsp = -(sign(x - other.x) * 4)
	if x != other.x
		image_xscale = -(sign(x - other.x))
	scr_soundeffect(sfx_bumpwall)
	
	if other.state == states.jump && other.y < y
	{
		other.vsp = -11
		scr_soundeffect(sfx_stompenemy)
		other.sprite_index = other.spr_stompprep
	}
}