draw_sprite(spr_scrollbar,-1,draw_x,draw_y)
//draw_rectangle_color(draw_x,draw_y,_sprite_width * value, draw_y +_sprite_height, c_black,c_white,c_white,c_black,false)
draw_sprite_part(spr_scrollbar, 0, 0, 0, (_sprite_width * value), _sprite_height, draw_x, draw_y)
draw_sprite(spr_scrollbarbutton, -1, (draw_x + (_sprite_width * value)), draw_y)