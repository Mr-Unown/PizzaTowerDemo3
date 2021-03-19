if collided = false
{
	#region Smash
	with (obj_player1)
	{
	    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (obj_player1.state == 91 || obj_player1.state == states.jetpack || obj_player1.state == 18)) {
			other.drawx = other.x
			other.drawy = other.y
			other.collided = true
            var vdirection = sign(hsp)
            other.throwdirection = vdirection
			other.vsp = -12
			other.hsp = (other.throwdirection * (3 + abs(floor(hsp))))
			scr_soundeffect(34)
			scr_soundeffect(sfx_breakmetal)
			other.grabbedby = 1
		}
	}
	with (obj_player2)
	{
	    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (obj_player2.state == 91 || obj_player2.state == states.jetpack || obj_player2.state == 18)) {
			other.drawx = other.x
			other.drawy = other.y
			other.collided = true
            var vdirection = sign(hsp)
            other.throwdirection = vdirection
			other.vsp = -12
			other.hsp = (other.throwdirection * (3 + abs(floor(hsp))))
			scr_soundeffect(34)
			scr_soundeffect(sfx_breakmetal)
			other.grabbedby = 2
		}
	}
	maxrot = random_range(-60,60)
	#endregion
}
else
{

	with instance_place(drawx,drawy,obj_baddie) {
		instance_destroy()
		grabbedby = other.grabbedby
	}

	mask_index = spr_mrcar_mask
    grav = 0.5
	//Rotation
	if abs(rot) < abs(maxrot)
		rot += 0.5 * sign(maxrot)
	//Destroy
    if (place_meeting((drawx + hsp), drawy, obj_solid) && !place_meeting((drawx + hsp), drawy, obj_mrcar) && (!place_meeting((drawx + hsp), drawy, obj_destructibles)))
        instance_destroy()
	//Into another Car
	with instance_place((drawx + hsp), drawy, obj_mrcar) {	
			collided = true
			vsp = -10
			hsp = (abs(other.hsp - 6)) * other.throwdirection
			scr_soundeffect(34)
			scr_soundeffect(sfx_breakmetal)
			grabbedby = other.grabbedby
	}
    if ((grounded || (grounded && (!place_meeting(drawx, drawy, obj_platform)))) && vsp > 0)
        instance_destroy()
}
