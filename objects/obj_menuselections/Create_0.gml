optionselect = 0
level[0] = "1.DESERT"
level[1] = "2.DESERT NIGHT"
level[2] = "3.MANSION"
level[3] = "4.FACTORY"
level[4] = "5.SEWERS"
level[5] = "6.FREEZER"
level[6] = "7.GOLF"
b = 0
levelselect = 0
global.level = "none"
if (!instance_exists(obj_cursor))
    instance_create((x - 150), y, obj_cursor)


