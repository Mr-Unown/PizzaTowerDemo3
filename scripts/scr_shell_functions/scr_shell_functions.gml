function scr_shell_openconsole()
{
	global.shellactivate = true;
}
function scr_shell_closeconsole()
{
	global.shellactivate = false;
}
function scr_shell_roomstart()
{
	layer_set_visible("Tiles_Solid",global.showcollisions);
}