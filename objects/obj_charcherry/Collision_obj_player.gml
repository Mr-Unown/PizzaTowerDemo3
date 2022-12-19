if global.panic = 1 && state != 110
{
instance_destroy()
instance_create(x, y, obj_bombexplosion)
obj_player.state = 20
obj_player.bombpeptimer = 0
obj_player.sprite_index = spr_bombpep_end
}