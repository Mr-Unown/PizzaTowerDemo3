client = network_create_socket(network_socket_tcp);
global.clientsocket = client

global.ip = "" //Insert IPV4 here
var port = 25472;
global.connected = -4
if global.server < 0
global.connected = network_connect(client,global.ip,port)

if global.connected >= 0
{
	demo3_show_debug_message("Client has connected to server");
}
client_buffer = buffer_create(2000,buffer_fixed,1);



#region Enum
enum msg_id
{
	playerjoin = 0,
	playerconnect = 1,
	playerdisconnect = 2,
	playerroom = 3,
	playerposition = 4,	
	playersprite = 5
}
#endregion