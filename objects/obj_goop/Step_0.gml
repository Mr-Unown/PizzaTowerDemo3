scr_collide();

var rail = 0;
if grounded
rail = ( place_meeting(x,y+1,obj_railh) ? -5 : (place_meeting(x,y+1,obj_railh2) ? 5 : 0) )
hsp = (_direction * movespeed) + rail

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
	movespeed = 0
	
if y > (room_height * 1.3)
{
	repeat (6)
	{
		with instance_create(x, y, obj_balloonpop)
			sprite_index = spr_shotgunimpact
	}
	instance_destroy();
}
//Stuck
if scr_solid(x,y) && !place_meeting(x,y,obj_metalblockescape) && !place_meeting(x,y,obj_destructibles) 
{
	var player = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));
	maxspeed += 0.1
    x = median((x - maxspeed), player.x, (x + maxspeed))
    y = median((y - maxspeed), player.y, (y + maxspeed))
	stuck = true
	visible = false
}
else if stuck = true 
{
	stuck = false
	visible = true
	vsp = random_range(2,8) * _direction
	hsp = random_range(2,6) * _direction
	movespeed = abs(hsp);
}
	

if grounded
	movespeed = approach(movespeed,0,0.25)  //(abs(hsp) - 0.25) * _direction
