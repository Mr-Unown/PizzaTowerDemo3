if room = roomid {
visible = true
x = roomx
y = roomy
image_speed = 0.35
frozen = false
sprite_index = sprite
image_index = image
}
else {
visible = false	
frozen = true
x = -200 
y = -200
image_speed = 0
sprite_index = sprite
image_index = image
}
maxspeed = 0