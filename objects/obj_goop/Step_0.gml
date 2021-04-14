if frozen = false
{
	//Animations
	if !grounded
	sprite_index = spr_goop_fall
	else if grounded && sprite_index = spr_goop_fall
	sprite_index = spr_goop_land
	//Variety
	if floor(image_index) = image_number -1 && sprite_index = spr_goop_land
	sprite_index = choose(spr_goop_1,spr_goop_2,spr_goop_3,spr_goop_4,spr_goop_5)
	
	//Wallstop
	if place_meeting(x + hsp,y,obj_solid)
	hsp = 0
	
	
	//Stuck
	if place_meeting(x,y,obj_solid) && !place_meeting(x,y,obj_metalblockescape) && !place_meeting(x,y,obj_destructibles){
	var player = instance_nearest(x,y,obj_player)
	maxspeed += 0.1
    x = median((x - maxspeed), player.x, (x + maxspeed))
    y = median((y - maxspeed), player.y, (y + maxspeed))
	stuck = true
	visible = false
	}
	else if stuck = true {
	stuck = false
	visible = true
	vsp = random_range(2,8) * _direction
	hsp = random_range(2,6) * _direction
	}
	
	//Grounded
	if grounded
	hsp = (abs(hsp) - 0.25) * _direction
	if instance_number(obj_goop) > 150
		instance_destroy()
}
