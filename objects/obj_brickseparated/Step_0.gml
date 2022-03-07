returnbuffer--
if sprite_index = spr_brickread || sprite_index = spr_stupidratsmalldebris
{
grav = 0.5
vsp += grav
}
else
grav = 0
if returnbuffer <= 0 && obj_player1.state != states.ladder && obj_player1.state != states.crouch && obj_player1.state != states.machroll && obj_player1.state != states.crouchslide && obj_player1.state != states.crouchjump
	isreturning = true
else
	isreturning = false
if isreturning = true
{
	sprite_index = spr_brick_ball
	x = approach(x,obj_player1.x, hsp)
	y = approach(y,obj_player1.y, vsp)
	hsp += .5
	vsp += .5
}
else
{
hsp = 0
vsp = 0
}
if sprite_index = spr_brickread
	scr_collide()