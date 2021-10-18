//Networking
var _room = room
stepthing = 3
if instance_exists(net_client)
{
	with net_client 
	{
		//Room 
		buffer_seek(client_buffer,buffer_seek_start,0);
		buffer_write(client_buffer,buffer_u8,msg_id.playerroom) //Room
		buffer_write(client_buffer,buffer_s16,_room);
		network_send_packet(global.clientsocket,client_buffer,buffer_tell(client_buffer));
	}
}
// Inherit the parent event
event_inherited();
