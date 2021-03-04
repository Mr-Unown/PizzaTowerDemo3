image_speed = 0
hurtpoints = 0
timepoints = 0
escapetimepoints = 0
treasurepoints = 0
lastbesttimeminutes = 99
lastbesthurt = 99
lastbesttimeseconds = 99
image_index = 1
depth = 50
endgate = 0
roomname = room_get_name(room)
global.progress = string_letters(roomname)
if (global.snickchallenge == 1 && room == snick_challengeend)
    image_index = 1
if (global.snickchallenge == 1 && room != snick_challengeend)
    instance_destroy()

