//Heat Meter Palettes
if global.heatmeter >= 4 && object_index != obj_shrimp && object_index != obj_shrimpred && object_index != obj_shrimpblue
{
	paletteselect = 1
}
else if global.heatmeter < 4 && object_index != obj_shrimp && object_index != obj_shrimpred && object_index != obj_shrimpblue
{
	paletteselect = 0
}

if (ds_list_find_index(global.baddieroom, id) != -1)
    instance_destroy()
markedfordeath = 0
markedfordeathbuffer = 500


