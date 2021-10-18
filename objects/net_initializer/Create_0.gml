///@description Get local IPV4
global.ip = noone;
global.foundip = false;
randomize();
var port = irandom_range(49152,65535);
var host = network_create_server(network_socket_udp, port, 5);

if (host < 0)
{
    show_message("Failed to create a broadcast server");
}
else
{
    var sock = network_create_socket(network_socket_udp);
    var buff = buffer_create(32, buffer_fixed, 1);
    
    buffer_fill(buff, 0, buffer_bool, 0, 32);
    network_send_broadcast(sock, port, buff, buffer_get_size(buff));
    
    network_destroy(sock);
    buffer_delete(buff);
}