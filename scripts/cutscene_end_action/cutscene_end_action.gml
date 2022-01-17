function cutscene_end_action()
{
obj_cutscene_handler.scene++
if (obj_cutscene_handler.scene > (array_length_1d(scene_info) - 1))
    instance_destroy(obj_cutscene_handler)
}