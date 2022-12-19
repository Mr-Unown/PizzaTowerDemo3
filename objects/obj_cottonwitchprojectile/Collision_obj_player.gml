obj_player.state = 100
instance_destroy()
instance_create(obj_player.x, obj_player.y, obj_poofeffect)
obj_player.sprite_index = spr_cotton_idle