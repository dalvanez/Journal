//write_highscore()
//Writes out the highscore to the save file
ini_open(save_file);
if (highscore>=old_score) ini_write_real("game","hiscore",highscore);
ini_close();