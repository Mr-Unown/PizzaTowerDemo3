port = 25472;
max_clients = 14;

global.server = network_create_server(network_socket_tcp,port,max_clients);

server_buffer = buffer_create(2000,buffer_fixed,1);
socket_list = ds_list_create();




global.socket_instanceid = ds_map_create();
