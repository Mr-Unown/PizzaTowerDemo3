var player = nearest_player();
if grabbed = false {
#region Attacking
//If player is within Range
if distance_to_object(player) <= 300 && (x == xstart && y == ystart) && sprite_index != spr_grabbiehand_hifive
{
	sprite_index = spr_grabbiehand_hifive;
	image_index = 0;
	grabbing = false;
	targetpos.xx = lerp(player.x,player.x + hsp,0.5);
	targetpos.yy = lerp(player.y,player.y + vsp,0.5);
}
//Target Spotted
if animation_end() && sprite_index == spr_grabbiehand_hifive
{
	sprite_index = spr_grabbiehand_fall;
	grabbing = true;
	scr_soundeffect(sfx_enemyprojectile);
}
//Go towards player
if grabbing = true
{
	var dir = point_direction(xstart,ystart,targetpos.xx,targetpos.yy);
	hsp = lengthdir_x(10,dir)
	vsp = lengthdir_y(10,dir)
	//Bump into wall
	if scr_solid(x + hsp, y + vsp) || point_distance(x,y,xstart,ystart) >= 300
	{
		returndelay = 50;
		grabbing = false;
		sprite_index = spr_grabbiehand_idle;
	}
}
else if (x != xstart && y != ystart) && release == false && returndelay <= 0 //Return to old spot
{
	var old = point_direction(x,y,xstart,ystart);
	hsp = lengthdir_x(5,old)
	vsp = lengthdir_y(5,old)	
	sprite_index = spr_grabbiehand_idle;
}
#endregion
}
else {
#region Taking
//Go towards Target
var target = point_direction(x,y,dropspotx,dropspoty);
x += floor( lengthdir_x(5,target) )
y += floor( lengthdir_y(5,target) )
sprite_index = spr_grabbiehand_catch

with obj_player
{
	if object_index == obj_player1 || (object_index == obj_player2 && global.coop == true)
	{
		vsp = 0
		hsp = 0
		state = states.bump
		sprite_index = spr_player_catched
		x = other.x
		y = other.y
	}
}
//Drop Players
if x == dropspotx && y == dropspoty
{
	obj_player1.state = 74
	if global.coop == true
		obj_player2.state = 74
    image_index = 0
    sprite_index = spr_grabbiehand_release
	grabbing = false;
	grabbed = false;
	release = true;
}

#endregion
}
//Timers
returndelay = approach(returndelay,0,1)
//Animation
if animation_end() && sprite_index = spr_grabbiehand_release
{
	release = false;
}
