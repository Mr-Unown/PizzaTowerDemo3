countdown -= 0.5
var devvsp = (vsp / 2)
hsp = (image_xscale * (movespeed))
#region Bounce
if (grounded && (!scr_slope_ext(x, y + 1)))
{
    if (movespeed > 0)
        movespeed -= 0.5
    if (vsp > 0.5)
        vsp = (-devvsp)
}
if vsp < 12 && vsp > 10
    vsp += grav
#endregion
#region Bump into walls
if (scr_solid((x + sign(image_xscale)), y) && !scr_slope_ext(x + sign(image_xscale),y) && (!place_meeting((x + sign(image_xscale)), y, obj_destructibles))) && movespeed > 0 
{
	image_xscale *= -1
	if (movespeed >= 0.25)
		movespeed /= 2
	if !instance_exists(bumpid)
		with (instance_create(x, y, obj_bumpeffect))
			other.bumpid = id
}
#endregion
#region Slope Physics
if place_meeting(x, y + 1,obj_slope)
{
	with (instance_place(x, (y + 1), obj_slope))
	{
		if (other.movespeed > other.grav && other.image_xscale == sign(image_xscale))
	        other.movespeed -= 0.25
		else if (other.movespeed <= 10 || other.image_xscale == sign((-image_xscale)))
		{
			other.image_xscale = sign((-image_xscale))
			other.movespeed += 0.25
		}
	}
}
#endregion
//Explody
if (place_meeting((x + 1), y, obj_bombblock) || place_meeting((x - 1), y, obj_bombblock) || place_meeting(x, (y - 1), obj_bombblock) || place_meeting(x, (y + 1), obj_bombblock)) {
	instance_create(x, y, obj_bombexplosion)
	instance_destroy()

}
if (countdown < 50)
    sprite_index = spr_bomblit
if (countdown <= 0) {
	instance_create(x, y, obj_bombexplosion)
    instance_destroy()
}

