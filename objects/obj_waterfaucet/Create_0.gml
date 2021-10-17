depth = 4
image_index = 0
image_speed = 0
can_switch = true
image_speed	= 0.35

if instance_exists(obj_water)
oldtargety = obj_water.targety;
else
oldtargety = 0;

activated = false;

targety = oldtargety; //ON
targety2 = oldtargety; //OFF
mode = 0;

