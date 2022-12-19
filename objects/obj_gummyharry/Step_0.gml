if global.panic = 1
{
instance_deactivate_object(obj_gummyharry)	
}
else
{
}
/*if (place_meeting((x + obj_player.hsp), y, obj_player.id) && ((obj_player.state == 15) && (hp <= 0)))
{
obj_player.state = 90
obj_player.sprite_index = choose(spr_player_suplexmash1, spr_player_suplexmash2, spr_player_suplexmash3, spr_player_suplexmash4)
}
if obj_player.state = 90 && image_index >= image_number - 1
{
instance_destroy()	
}
with obj_player
{
if place_meeting(x + 1, y, obj_gummyharry) && state != 90
{
state = 90
sprite_index = choose(spr_player_suplexmash1, spr_player_suplexmash2, spr_player_suplexmash3, spr_player_suplexmash4)	
}
}
with (obj_player)
{
if state = 63 || 83 && place_meeting(x, y, obj_gummyharry)
{
instance_destroy(obj_gummyharry)	
}	
}
*/
if place_meeting(x + obj_player.hsp, y, obj_player)
{
	with obj_player
	{
		state = 90
		sprite_index = choose(spr_player_suplexmash1, spr_player_suplexmash2, spr_player_suplexmash3, spr_player_suplexmash4)		
	}
}
if obj_player.state = 90 && obj_player.image_index >= obj_player.image_number - 1
{
	instance_destroy()	
}
if place_meeting(x, y, obj_swordhitbox)
{
	scr_sound(sound_enemythrow)
	instance_destroy()	
}
if place_meeting(x + 1, y, obj_player && obj_player.state = 65)
{
	obj_player.state = 90	
}