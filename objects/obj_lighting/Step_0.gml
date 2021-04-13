switch room
{
	#region Ancient
	case ancient_1:
		targetdarkness = 0.5;
		break;
	case ancient_2:
		targetdarkness = 0.5;
		break;		
	case ancient_3:
		targetdarkness = 0.5;
		break;	
	case ancient_4:
		targetdarkness = 0.5;
		break;	
	case ancient_5:
		targetdarkness = 0.5;
		break;	
	case ancient_6:
		targetdarkness = 0.5;
		break;	
	case ancient_7:
		targetdarkness = 0.5;
		break;	
	case ancient_8:
		targetdarkness = 0.5;
		break;	
	case ancient_9:
		targetdarkness = 0.5;
		break;	
	case ancient_10:
		targetdarkness = clamp(clamp(camera_get_view_y(view_camera[0]),768,3264)/2000,0.5,1);
		break;	
	case ancient_11:
		targetdarkness = 0.5;
		break;				
	#endregion	
	default:
		targetdarkness = 0;
		darkness = 0
		break;
}
//Change Darkness
darkness = approach(darkness,targetdarkness,0.005)

