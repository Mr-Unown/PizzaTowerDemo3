image_speed = 0
obj_player.visible = true
obj_camera.visible = true
obj_player.state = 61
if instance_exists(obj_pizzakinshroom)
    obj_pizzakinshroom.visible = true
if instance_exists(obj_pizzakincheese)
    obj_pizzakincheese.visible = true
if instance_exists(obj_pizzakintomato)
    obj_pizzakintomato.visible = true
if instance_exists(obj_pizzakinsausage)
    obj_pizzakinsausage.visible = true
if instance_exists(obj_pizzakinpineapple)
    obj_pizzakinpineapple.visible = true
with (obj_player)
    targetroom = destroom
scr_soundeffect(sfx_door)
if (!instance_exists(obj_fadeout))
    instance_create(x, y, obj_fadeout)


