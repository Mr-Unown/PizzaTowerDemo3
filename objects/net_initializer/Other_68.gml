global.ip = ds_map_find_value(async_load, "ip")
if global.ip != noone
{
	instance_create(x,y,net_server)
	instance_create(x,y,net_client)
	instance_destroy();
}