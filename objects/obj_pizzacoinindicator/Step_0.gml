if instance_exists(obj_weaponmachine)
    visible = true
else if (show == 0)
    visible = false
if (show > 0)
{
    show -= 1
    visible = true
}
if (obj_player1.spotlight == 1)
    player = obj_player1
else if (obj_player1.spotlight == 0)
    player = obj_player2
