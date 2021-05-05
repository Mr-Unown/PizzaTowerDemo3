if character = "P"
characters = "Peppino"
if character = "N"
characters = "Noise"
if character = "S"
characters = "Snick"
if character = "V"
characters = "Vigilante"
if character = "PM"
characters = "Pepperman"
if character = "D"
characters = "Dougie"
if character = "PZ"
characters = "Pizzelle"


//Colorindex
colorindex[0] = 0
colorindex[1] = 1
colorindex[2] = 2
colorindex[3] = 3
colorindex[4] = 4
colorindex[5] = 5
colorindex[6] = 6
colorindex[7] = 7


//Saved Colors
#region Spaghetti
ini_open("saveData.ini")
if !ini_section_exists(string(characters)+"Colors"+string(colorindex[0])) {
 ini_write_real(string(characters)+"Colors"+string(colorindex[0]), "Red", 0);
 ini_write_real(string(characters)+"Colors"+string(colorindex[0]), "Green", 0);
 ini_write_real(string(characters)+"Colors"+string(colorindex[0]), "Blue", 0);
}
if !ini_section_exists(string(characters)+"Colors"+string(colorindex[1])) {
 ini_write_real(string(characters)+"Colors"+string(colorindex[1]), "Red", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[1]), "Green", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[1]), "Blue", 255);
}
if !ini_section_exists(string(characters)+"Colors"+string(colorindex[2])) {
 ini_write_real(string(characters)+"Colors"+string(colorindex[2]), "Red", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[2]), "Green", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[2]), "Blue", 255);
}
if !ini_section_exists(string(characters)+"Colors"+string(colorindex[3])) {
 ini_write_real(string(characters)+"Colors"+string(colorindex[3]), "Red", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[3]), "Green", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[3]), "Blue", 255);
}
if !ini_section_exists(string(characters)+"Colors"+string(colorindex[4])) {
 ini_write_real(string(characters)+"Colors"+string(colorindex[4]), "Red", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[4]), "Green", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[4]), "Blue", 255);
}
if !ini_section_exists(string(characters)+"Colors"+string(colorindex[5])) {
 ini_write_real(string(characters)+"Colors"+string(colorindex[5]), "Red", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[5]), "Green", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[5]), "Blue", 255);
}
if !ini_section_exists(string(characters)+"Colors"+string(colorindex[6])) {
 ini_write_real(string(characters)+"Colors"+string(colorindex[6]), "Red", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[6]), "Green", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[6]), "Blue", 255);
}
if !ini_section_exists(string(characters)+"Colors"+string(colorindex[7])) {
 ini_write_real(string(characters)+"Colors"+string(colorindex[7]), "Red", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[7]), "Green", 255);
 ini_write_real(string(characters)+"Colors"+string(colorindex[7]), "Blue", 255);
}


colored[colorindex[0],0] = ini_read_real(string(characters)+"Colors"+string(colorindex[0]), "Red", 0);
colored[colorindex[0],1] = ini_read_real(string(characters)+"Colors"+string(colorindex[0]), "Green", 0);
colored[colorindex[0],2] = ini_read_real(string(characters)+"Colors"+string(colorindex[0]), "Blue", 0);

colored[colorindex[1],0] = ini_read_real(string(characters)+"Colors"+string(colorindex[1]), "Red", 255);
colored[colorindex[1],1] = ini_read_real(string(characters)+"Colors"+string(colorindex[1]), "Green", 255);
colored[colorindex[1],2] = ini_read_real(string(characters)+"Colors"+string(colorindex[1]), "Blue", 255);

colored[colorindex[2],0] = ini_read_real(string(characters)+"Colors"+string(colorindex[2]), "Red", 255);
colored[colorindex[2],1] = ini_read_real(string(characters)+"Colors"+string(colorindex[2]), "Green", 255);
colored[colorindex[2],2] = ini_read_real(string(characters)+"Colors"+string(colorindex[2]), "Blue", 255);

colored[colorindex[3],0] = ini_read_real(string(characters)+"Colors"+string(colorindex[3]), "Red", 255);
colored[colorindex[3],1] = ini_read_real(string(characters)+"Colors"+string(colorindex[3]), "Green", 255);
colored[colorindex[3],2] = ini_read_real(string(characters)+"Colors"+string(colorindex[3]), "Blue", 255);

colored[colorindex[4],0] = ini_read_real(string(characters)+"Colors"+string(colorindex[4]), "Red", 255);
colored[colorindex[4],1] = ini_read_real(string(characters)+"Colors"+string(colorindex[4]), "Green", 255);
colored[colorindex[4],2] = ini_read_real(string(characters)+"Colors"+string(colorindex[4]), "Blue", 255);

colored[colorindex[5],0] = ini_read_real(string(characters)+"Colors"+string(colorindex[5]), "Red", 255);
colored[colorindex[5],1] = ini_read_real(string(characters)+"Colors"+string(colorindex[5]), "Green", 255);
colored[colorindex[5],2] = ini_read_real(string(characters)+"Colors"+string(colorindex[5]), "Blue", 255);

colored[colorindex[6],0] = ini_read_real(string(characters)+"Colors"+string(colorindex[6]), "Red", 255);
colored[colorindex[6],1] = ini_read_real(string(characters)+"Colors"+string(colorindex[6]), "Green", 255);
colored[colorindex[6],2] = ini_read_real(string(characters)+"Colors"+string(colorindex[6]), "Blue", 255);

colored[colorindex[7],0] = ini_read_real(string(characters)+"Colors"+string(colorindex[7]), "Red", 255);
colored[colorindex[7],1] = ini_read_real(string(characters)+"Colors"+string(colorindex[7]), "Green", 255);
colored[colorindex[7],2] = ini_read_real(string(characters)+"Colors"+string(colorindex[7]), "Blue", 255);

//ini_write_real(string(characters["P"])+"Colors", "Red", color[0])
ini_close()
#endregion


//Colors
color[0] = make_color_rgb(colored[0,0],colored[0,1],colored[0,2])
color[1] = make_color_rgb(colored[1,0],colored[1,1],colored[1,2])
color[2] = make_color_rgb(colored[2,0],colored[2,1],colored[2,2])
color[3] = make_color_rgb(colored[3,0],colored[3,1],colored[3,2])
color[4] = make_color_rgb(colored[4,0],colored[4,1],colored[4,2])
color[5] = make_color_rgb(colored[5,0],colored[5,1],colored[5,2])
color[6] = make_color_rgb(colored[6,0],colored[6,1],colored[6,2])
color[7] = make_color_rgb(colored[7,0],colored[7,1],colored[7,2])