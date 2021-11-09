/// @description Export Palettes
ExportButton.activated = true;
var file;
file = get_save_filename_ext("Palettes|*.d3palette", string(player.characters), working_directory, "Export your Palette");
if file != ""
{
	var _original = "Custom/"+string(player.characters)+"_"+string(player.customsavedpalette)+"_palettes.ini";
	file_copy(_original,file)
}	