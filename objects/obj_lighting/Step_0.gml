switch room
{
	#region Ancient
	case ancient_1:
		can_draw = true;
		targetdarkness = 0.75;
		break;
	case ancient_2:
		can_draw = true;
		targetdarkness = 0.75;
		break;		
	case ancient_3:
		can_draw = true;
		targetdarkness = 0.75;
		break;	
	case ancient_4:
		can_draw = true;
		targetdarkness = 0.75;
		break;	
	case ancient_5:
		can_draw = true;	
		targetdarkness = 0.75;
		break;	
	case ancient_6:
		can_draw = true;
		targetdarkness = 0.75;
		break;	
	case ancient_7:
		can_draw = true;
		targetdarkness = 0.75;
		break;	
	case ancient_8:
		can_draw = true;
		targetdarkness = 0.75;
		break;	
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
	default:
		targetdarkness = 0;
		darkness = 0
		can_draw = false;
		break;
}
//Change Darkness
darkness = approach(darkness,targetdarkness,0.015)

