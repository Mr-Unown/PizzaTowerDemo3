//Shotgun
if (other.object_index == obj_player1)
{
    if (obj_player1.character != "S" && obj_player1.character != "V" && obj_player1.character != "D" && obj_player1.character != "PM")
    {
        if (obj_player1.GshotgunAnim == 0 && obj_player1.state == 22)
        {
			global.pausecombotime = true
			obj_tv.alarm[1] = 75
            obj_player1.GshotgunAnim = 1
            obj_player1.state = 38
            obj_player1.image_index = 0
            obj_player1.sprite_index = obj_player1.spr_shotgunpullout
            global.gotshotgun = 1
            scr_soundeffect(64)
            instance_destroy()
        }
    }
}
if (other.object_index == obj_player2)
{
    if (obj_player2.character != "S" && obj_player2.character != "V" && obj_player2.character != "D" && obj_player2.character != "PM")
    {
        if (obj_player2.GshotgunAnim == 0 && obj_player2.state == 22)
        {
			global.pausecombotime = true
			obj_tv.alarm[1] = 75
            obj_player2.GshotgunAnim = 1
            obj_player2.state = 38
            obj_player2.image_index = 0
            obj_player2.sprite_index = obj_player2.spr_shotgunpullout
            global.gotshotgun = 1
            scr_soundeffect(64)
            instance_destroy()
        }
    }
}


