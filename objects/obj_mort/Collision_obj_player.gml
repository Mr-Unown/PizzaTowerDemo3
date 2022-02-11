/*if (sprite_index != spr_mortspawn && sprite_index != spr_mortfall)
{
    with (other)
    {
        mort = 1
        global.mortfollowing = 1
    }
    instance_destroy()
}
*/
if !instance_exists(obj_mortfollow)
{
global.mortfollowing = true
instance_create(x,y,obj_mortfollow)
//Follower DS_list
ds_list_add(global.follower, id);
}