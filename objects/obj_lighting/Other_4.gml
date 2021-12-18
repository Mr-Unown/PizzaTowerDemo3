if surface_exists(surf)
    surface_free(surf)
surf = -1
switch room
{
	#region Ancient
	case ancient_1:
	case ancient_2:
	case ancient_3:
	case ancient_4:
	case ancient_5:
	case ancient_6:
	case ancient_7:	
	case ancient_8:
	case ancient_9:
		can_draw = true;
		targetdarkness = 0.75;
		break;
	case ancient_10:
		can_draw = true;
		var _dark = clamp(camera_get_view_y(view_camera[0]),864,2756)/2756
		targetdarkness = clamp(_dark * 0.85,0.75,0.85)
		break;		
	case ancient_10_1:
		can_draw = true;
		targetdarkness = 0.85
		break;
	case ancient_10_2:
		can_draw = true;
		var _dark = clamp(camera_get_view_y(view_camera[0]),864,1632)/1632
		targetdarkness = clamp(_dark * 0.85,0.75,0.85)
		break;				
	case ancient_11:
		can_draw = true;
		targetdarkness = 0.75;
		break;				
	#endregion	
	#region Desert
	case desert_5:
	case desert_6:
	case desert_7:	
	case desert_8:
		can_draw = true;
		targetdarkness = 0.35;
		break;
	case desert_mart1:
	case desert_mart2:
		can_draw = true;
		targetdarkness = 0.60;
		break;
	#endregion
	case hub_roomSNICK:
		can_draw = true;
		darkness = 0.90
		targetdarkness = 0.90;
		break;
	default:
		targetdarkness = 0;
		darkness = 0
		can_draw = false;
		break;
}
