event_inherited();
image_speed = 0.35
followQueue = ds_queue_create()
hsp = 0
vsp = 0
grav = 0.23
movespeed = 3
panic = 0
playerid = obj_player1
drawy = 0
if room = strongcold_miniboss
{
	with (obj_player)
{
    state = 51
    sprite_index = spr_bossintro
    image_index = 0
    scr_soundeffect(sfx_scream5)
}
sprite_index = spr_noisebomb_intro
instance_create(x, y, obj_taunteffect)

}