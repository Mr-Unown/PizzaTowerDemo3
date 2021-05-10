_sprite_width = sprite_get_width(spr_scrollbar)
_sprite_height = sprite_get_height(spr_scrollbar)
button_sprite_width = sprite_get_width(spr_scrollbarbutton)
button_sprite_height = sprite_get_height(spr_scrollbarbutton)

indexedcolor = 0; //PAL1
customcolor = 0; //RED
value = 255; //Value
 
switch customcolor
{
	case 0: //R
	draw_x = 480
	draw_y = 288
	break;
	
	case 1: //G
	draw_x = 480
	draw_y = 320
	break;
	
	case 3: //B
	draw_x = 480
	draw_y = 352
	break;
}





max_value = 255;
selected = false;
image_speed = 0;
image_index = 0;


