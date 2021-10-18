function scr_player_victory() {
	hsp = 0
	mach2 = 0
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 1
	machhitAnim = 0
	if place_meeting(x,y,obj_door) || place_meeting(x,y,obj_keydoor) || place_meeting(x,y,obj_geromedoor) || place_meeting(x,y,obj_snickchallengedoor)
	{
		with instance_place(x,y,group_door)
		{
			other.x = approach(other.x,x + sprite_width/2,2)
			other.y = approach(other.y,y + sprite_height/2,5)
		}
	}
	if place_meeting(x, y, obj_keydoor) || place_meeting(x, y, obj_geromedoor)
	{
	    sprite_index = spr_victory
		global.combotime = 60
		global.pausecombotime = true
		obj_tv.alarm[1] = 75	
	}
	if (place_meeting(x, y, obj_startgate) || place_meeting(x, y, obj_levelcomputer))
	    sprite_index = spr_entergate
	if (floor(image_index) == (image_number - 1))
	    image_speed = 0
	else
	    image_speed = 0.35



}
