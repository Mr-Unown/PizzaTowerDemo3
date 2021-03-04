pal_swap_init_system(shd_pal_swapper)


ini_open("playerData_"+global.savefile+".ini")
if (!ini_section_exists("SAGE2019"))
{
    ini_write_string("SAGE2019", "shotgunsnick", 0)
    ini_write_string("SAGE2019", "dungeonbackup", 0)
    ini_write_string("SAGE2019", "srank", 0)
    ini_write_string("SAGE2019", "snicksrank", 0)
    ini_write_string("SAGE2019", "combo10", 0)
    ini_write_string("SAGE2019", "secret", 0)
    ini_write_string("SAGE2019", "knight", 0)
    ini_write_string("SAGE2019", "toppin", 0)
    ini_write_string("SAGE2019", "treasure", 0)
}
global.SAGEshotgunsnick = ini_read_string("SAGE2019", "shotgunsnick", 0)
global.SAGEshotgunsnicknumber = 0
global.SAGEdungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0)
global.SAGEsrank = ini_read_string("SAGE2019", "srank", 0)
global.SAGEsnicksrank = ini_read_string("SAGE2019", "snicksrank", 0)
global.SAGEcombo10 = ini_read_string("SAGE2019", "combo10", 0)
global.SAGEsecret = ini_read_string("SAGE2019", "secret", 0)
global.SAGEknight = ini_read_string("SAGE2019", "knight", 0)
global.SAGEknighttaken = 0
global.SAGEtoppin = ini_read_string("SAGE2019", "toppin", 0)
global.SAGEtreasure = ini_read_string("SAGE2019", "treasure", 0)
ini_close()