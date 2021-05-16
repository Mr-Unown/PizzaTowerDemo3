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

//Custom
indexedcolor = 0;
customcolor[0] = 0 //RED
customcolor[1] = 0 //GREEN
customcolor[2] = 0 //BLUE


//
//color[0] = make_color_rgb(colored[0,0],colored[0,1],colored[0,2])
//Scrollbar ID
scrollID[0] = noone
scrollID[1] = noone
scrollID[2] = noone

//Player
if player.character = "P"
characters = "Peppino"
if player.character = "N"
characters = "Noise"
if player.character = "S"
characters = "Snick"
if player.character = "V"
characters = "Vigilante"
if player.character = "PM"
characters = "Pepperman"
if player.character = "D"
characters = "Dougie"
if player.character = "PZ"
characters = "Pizzelle"

//Character Changer
selectedcharacter = player.selectedcharacter
playercharacter[0] = "P"
playercharacter[1] = "N" //Skateboard
playercharacter[2] = "N" //Pogo
playercharacter[3] = "S"
playercharacter[4] = "V"
playercharacter[5] = "PZ"
playercharacter[6] = "D"
playercharacter[7] = "PM"

//Hats
//sprite_index = choosenhat[player.choosenhat]