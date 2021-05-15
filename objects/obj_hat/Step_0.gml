sprite_index = choosenhat[player.choosenhat]
x = player.x
y = ((sprite_get_bbox_top(player.sprite_index) + player.y) - 45)
image_xscale = player.xscale
image_alpha = player.image_alpha
//image_blend = player.image_blend
image_angle = player.image_angle
if (player.state = states.knightpepslopes || player.state = states.knightpep || room = Realtitlescreen  || room = timesuproom || room = Scootertransition || room = rank_room)
    visible = false
else if (player.equippedhat == 1)
    visible = player.visible
else
    visible = false

