draw_sprite_part(spr_scrollbar, 0, 0, 0, _sprite_width, _sprite_height, draw_x, (draw_y - sprite_get_yoffset(spr_scrollbar)))
draw_sprite_part(spr_scrollbar, 0, 0, 0, (_sprite_width * value), _sprite_height, draw_x, (draw_y - sprite_get_yoffset(spr_scrollbar)))
draw_sprite(spr_scrollbarbutton, 0, (draw_x + (_sprite_width * value)), draw_y)