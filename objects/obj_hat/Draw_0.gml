if global.freezeframe = false
_image_index += image_speed

if _image_index > 7
_image_index = 0
draw_sprite_ext(sprite_index,_image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)