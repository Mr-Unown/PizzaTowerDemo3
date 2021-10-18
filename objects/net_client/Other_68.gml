type_event = ds_map_find_value(async_load,"type")

switch(type_event)
{
	case network_type_data:
		buffer = ds_map_find_value(async_load,"buffer");
		buffer_seek(buffer,buffer_seek_start,0);
		client_receive_packet(buffer);
		demo3_show_debug_message("Client Received Data")
		break;			
	default:
		demo3_show_debug_message("Null Type");
		break;
	
}

