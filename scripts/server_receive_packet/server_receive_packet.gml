function server_receive_packet(argument0, argument1, argument2) {
	buffer = argument0; 
	socket = argument1;
	_id = argument2;
	buffer_seek(buffer,buffer_seek_start,0);
	msgid = buffer_read(buffer,buffer_u8);

	switch(msgid)
	{
		case msg_id.playerroom:
		
			var roomname = buffer_read(buffer,buffer_s16);
			//Send back to clients	
			for (var i = 0; i < ds_list_size(socket_list); ++i) 
			{
				var _sock = ds_list_find_value(socket_list,i)
				if _sock != socket
				{
					buffer_seek(server_buffer,buffer_seek_start,0);
					buffer_write(server_buffer,buffer_u8,msg_id.playerroom); //Room
					buffer_write(server_buffer,buffer_u8,socket);
					buffer_write(server_buffer,buffer_s16,roomname);		
					network_send_packet(_sock,server_buffer,buffer_tell(server_buffer));		
				}
			}
			break;		
		
		case msg_id.playerposition:
		//it fucks up around here
			var xx = buffer_read(buffer,buffer_s16)
			var yy = buffer_read(buffer,buffer_s16)
			var _player = (ds_map_find_value(global.socket_instanceid,string(_id)))
			if _player != undefined
			{
				with _player
				{
					ds_queue_enqueue(position_queue,xx)	
					ds_queue_enqueue(position_queue,yy)
				}
			}
		
			for (var i = 0; i < ds_list_size(socket_list); ++i) 
			{
				var _sock = ds_list_find_value(socket_list,i)
				if _sock != socket
				{
					buffer_seek(server_buffer,buffer_seek_start,0);
					buffer_write(server_buffer,buffer_u8,msg_id.playerposition);
					buffer_write(server_buffer,buffer_u8,string(_id));
					buffer_write(server_buffer,buffer_s16,xx);
					buffer_write(server_buffer,buffer_s16,yy);
					network_send_packet(_sock,server_buffer,buffer_tell(server_buffer));		
				}
			}
	
			break;
			
		case msg_id.playersprite:
			var sprite = buffer_read(buffer,buffer_s16)
			var image = buffer_read(buffer,buffer_s16)
			var xscale = buffer_read(buffer,buffer_s8)
			for (var i = 0; i < ds_list_size(socket_list); ++i) 
			{
				var _sock = ds_list_find_value(socket_list,i)
				if _sock != socket
				{
					buffer_seek(server_buffer,buffer_seek_start,0);		
					buffer_write(server_buffer,buffer_u8,msg_id.playersprite);
					buffer_write(server_buffer,buffer_u8,socket);
					buffer_write(server_buffer,buffer_s16,sprite);
					buffer_write(server_buffer,buffer_s16,image);
					buffer_write(server_buffer,buffer_s8,xscale);
					network_send_packet(_sock,server_buffer,buffer_tell(server_buffer));	
				}
			}	
			break;				
		default:
			show_debug_message("Null Packet")
			break;	
	}




}
