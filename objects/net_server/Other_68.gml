type_event = ds_map_find_value(async_load,"type")

switch(type_event)
{
	case network_type_connect:
		socket = ds_map_find_value(async_load,"socket");
		ds_list_add(socket_list,socket);
		
		with instance_create(-500,-500,obj_playerghost)
		{
			socket = other.socket
			ds_map_add(global.socket_instanceid,string(other.socket),id)	
			demo3_show_debug_message("Created Player ghost S:" + string(socket))
		}
		
		//Create Host to the Join
		buffer_seek(server_buffer,buffer_seek_start,0);
		buffer_write(server_buffer,buffer_u8,msg_id.playerconnect);
		buffer_write(server_buffer,buffer_u8,global.clientsocket);
		network_send_packet(socket,server_buffer,buffer_tell(server_buffer));
		
		//Create Players
		for (var i = 0; i < ds_list_size(socket_list); ++i) 
		{
			var _sock = ds_list_find_value(socket_list,i)
			if _sock != socket
			{	
				//Send back to who joined
				buffer_seek(server_buffer,buffer_seek_start,0);
				buffer_write(server_buffer,buffer_u8,msg_id.playerconnect);
				buffer_write(server_buffer,buffer_u8,_sock);
				network_send_packet(socket,server_buffer,buffer_tell(server_buffer));				
				
				//Send back to who were already there
				buffer_seek(server_buffer,buffer_seek_start,0);
				buffer_write(server_buffer,buffer_u8,msg_id.playerconnect);
				buffer_write(server_buffer,buffer_u8,socket);
				network_send_packet(_sock,server_buffer,buffer_tell(server_buffer));
			}
		}
		demo3_show_debug_message("Server Connected")
		break;
	case network_type_disconnect:
		socket = ds_map_find_value(async_load,"socket");
		ds_list_delete(socket_list,ds_list_find_index(socket_list,socket));

		with(ds_map_find_value(global.socket_instanceid,string(socket)))
		{
			instance_destroy();
			ds_map_delete(global.socket_instanceid,string(socket));
		}
		
		//Send back to clients	
		for (var i = 0; i < ds_list_size(socket_list); ++i) 
		{
			var _sock = ds_list_find_value(socket_list,i)
			if _sock != socket
			{
				buffer_seek(server_buffer,buffer_seek_start,0);
				buffer_write(server_buffer,buffer_u8,msg_id.playerdisconnect);
				buffer_write(server_buffer,buffer_u8,socket);
				network_send_packet(_sock,server_buffer,buffer_tell(server_buffer));				
			}
		}
		
		demo3_show_debug_message("Server Disconnected")
		break;		
	case network_type_data:
	
		buffer = ds_map_find_value(async_load,"buffer");
		socket = ds_map_find_value(async_load,"id");
		_id = ds_map_find_value(async_load,"socket");
		buffer_seek(buffer,buffer_seek_start,0);
		server_receive_packet(buffer,socket,_id);
		demo3_show_debug_message("Server Received Data")
		
		break;			
	default:
		demo3_show_debug_message("Null Type");
		break;
	
}