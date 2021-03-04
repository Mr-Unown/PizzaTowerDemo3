if (other.object_index == obj_player1)
{
    if (obj_player1.character != "S" && obj_player1.character != "V")
    {
        if (obj_player1.GshotgunAnim == 0 && obj_player1.Gbackupweapon == 0 && obj_player1.state == 22)
        {
            obj_player1.GshotgunAnim = 1
            obj_player1.state = 38
            obj_player1.image_index = 0
            obj_player1.sprite_index = obj_player1.spr_shotgunpullout
            global.gotshotgun = 1
            scr_soundeffect(64)
            instance_destroy()
        }
        else if (obj_player1.GshotgunAnim == 1 && obj_player1.Gbackupweapon == 0 && obj_player1.state == 22)
        {
            obj_player1.Gbackupweapon = 1
            instance_destroy()
        }
    }
}
if (other.object_index == obj_player2)
{
    if (obj_player1.character != "S" && obj_player1.character != "V")
    {
        if (obj_player2.GshotgunAnim == 0 && obj_player2.Gbackupweapon == 0 && obj_player2.state == 22)
        {
            obj_player2.GshotgunAnim = 1
            obj_player2.state = 38
            obj_player2.image_index = 0
            obj_player2.sprite_index = obj_player2.spr_shotgunpullout
            global.gotshotgun = 1
            scr_soundeffect(64)
            instance_destroy()
        }
        else if (obj_player2.GshotgunAnim == 1 && obj_player2.Gbackupweapon == 0 && obj_player2.state == 22)
        {
            obj_player2.Gbackupweapon = 1
            instance_destroy()
        }
    }
}


