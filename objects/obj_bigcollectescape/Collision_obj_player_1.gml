if(global.panic == 1)
{
	scr_soundeffect(sfx_collectpizza)
	global.collect += 100
	global.heattime = 120
	with (instance_create((x + 16), y, obj_smallnumber))
	    number = "100"
	with(instance_create(x, y, obj_collectpoint))
	sprite_index = other.id.sprite_index
	instance_destroy()
}
