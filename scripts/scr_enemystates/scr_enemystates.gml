#region Enum
enum enemystates
{
	enemyidle = 94,
	enemycharge = 96,	
	enemythrow = 97,
	enemyturn = 98,
	enemywalk = 102,
	enemyland = 104,
	enemyhit = 105,
	enemystun = 106,
	enemygrabbed = 109,
	enemyshake = 200,
	enemyfrozen = 201,
	enemyheat = 202
}
//Also added baddiestates enum
#endregion
#region States
switch state
{
    case 94:
        scr_enemy_idle()
        break
    case 96:
        scr_enemy_charge()
        break
    case 98:
        scr_enemy_turn()
        break
    case 102:
        scr_enemy_walk()
        break
    case 104:
        scr_enemy_land()
        break
    case 105:
        scr_enemy_hit()
        break
    case 106:
        scr_enemy_stun()
        break
    case 97:
        scr_enemy_throw()
        break
    case 109:
        scr_enemy_grabbed()
        break
    case 200:
        scr_enemy_shake()
        break
    case enemystates.enemyfrozen:
        scr_enemy_frozen()
        break		
    case enemystates.enemyheat:
        scr_enemy_heat()
        break				
}




#endregion