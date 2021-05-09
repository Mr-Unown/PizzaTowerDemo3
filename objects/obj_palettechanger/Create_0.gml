enum paletteoption
{
palettes = 0,
custom = 1,
characters = 2,
hats = 3
}
paletteoptions[0] = paletteoption.palettes
paletteoptions[1] = paletteoption.custom
paletteoptions[2] = paletteoption.characters
paletteoptions[3] = paletteoption.hats

optionselected = 0
selectedoption = paletteoption.palettes;
has_selectedoption = false;
player = obj_player1