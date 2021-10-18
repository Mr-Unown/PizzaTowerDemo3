if stepthing >= 3
{
stepthing = 0;
if instance_exists(net_client)
{
	with net_client 
	{	
		//Fix this shit
		//Position
		if other.xprevious != other.x || other.yprevious != other.y
		{
			buffer_seek(client_buffer,buffer_seek_start,0);
			buffer_write(client_buffer,buffer_u8,msg_id.playerposition) //Position
			buffer_write(client_buffer,buffer_s16,other.x);
			buffer_write(client_buffer,buffer_s16,other.y);
			network_send_packet(client,client_buffer,buffer_tell(client_buffer));
		}

		//Sprites
		buffer_seek(client_buffer,buffer_seek_start,0);
		buffer_write(client_buffer,buffer_u8,msg_id.playersprite) //Sprite
		buffer_write(client_buffer,buffer_s16,other.sprite_index);
		buffer_write(client_buffer,buffer_s16,other.image_index);
		buffer_write(client_buffer,buffer_s8,other.xscale);
		network_send_packet(global.clientsocket,client_buffer,buffer_tell(client_buffer));
	}
}
}
stepthing += 1;