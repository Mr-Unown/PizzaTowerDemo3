if instance_exists(obj_weaponmachine)
    visible = true
else if (show == 0)
    visible = false
if (show > 0)
{
    show -= 1
    visible = true
}
if oldshield != (player.pizzashieldbackup + player.pizzashield)
{
	show = 50
	oldshield = (player.pizzashieldbackup + player.pizzashield)
}