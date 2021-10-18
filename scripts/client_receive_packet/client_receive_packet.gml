function client_receive_packet(argument0) {
	buffer = argument0;
	buffer_seek(buffer,buffer_seek_start,0);
	msgid = buffer_read(buffer,buffer_u8);
	switch(msgid)
	{	
		case msg_id.playerconnect:
			var _socket = buffer_read(buffer,buffer_u8);
				
			with instance_create(-500,-500,obj_playerghost)
			{
				socket = _socket
				ds_map_add(global.socket_instanceid,string(_socket),id)
				show_debug_message("Created Player ghost:" + string(_socket))
			}

				break;
			
		case msg_id.playerdisconnect:
			var _socket = buffer_read(buffer,buffer_u8);
		
			with obj_playerghost
			{
				if _socket = socket
					instance_destroy();
				ds_map_delete(global.socket_instanceid,string(_socket));
			
			}		
				break;		
		case msg_id.playerroom:
			
			var _sock = buffer_read(buffer,buffer_u8)
			var roomname = buffer_read(buffer,buffer_s16);
			var _player = (ds_map_find_value(global.socket_instanceid,string(_sock)))
			if _player != undefined
			{
				with _player
				{
					localroom = roomname
				}
			}		
				break;		
		case msg_id.playerposition:
			show_debug_message("MSG_ID: Playerposition")
			var _sock = buffer_peek(buffer, 1, buffer_u8);
			var xx = buffer_peek(buffer, 2, buffer_s16);
			var yy = buffer_peek(buffer, 3, buffer_s16);
		
			var _player = (ds_map_find_value(global.socket_instanceid,string(_sock)))
			show_debug_message("Updated Playerposition id:" + string(_sock))
			if _player != undefined
			{
				with _player
				{
					ds_queue_enqueue(position_queue,xx)	
					ds_queue_enqueue(position_queue,yy)
				}
			}
		
				break;
		case msg_id.playersprite:
				
			var _sock = buffer_read(buffer,buffer_u8)
			var sprite = buffer_read(buffer,buffer_s16)
			var image = buffer_read(buffer,buffer_s16)
			var xscale = buffer_read(buffer,buffer_s8)
			var _player = (ds_map_find_value(global.socket_instanceid,string(_sock)))
			if _player != undefined
			{
				with _player
				{
					ds_queue_enqueue(sprite_queue,sprite)	
					ds_queue_enqueue(sprite_queue,image)
					ds_queue_enqueue(sprite_queue,xscale)
				}
			}			
				break;					
		default:
			show_debug_message("Null Packet")
			break;
	}




}
