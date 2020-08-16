//read_endless_words(array)
//Reads a list of words and saves them to an array
var _temp = array_create(1,"Hello");
if (global.endless) {
	endless_file = file_text_open_read(working_directory+"words.txt");
	if (endless_file!=-1) {
		var i = 0;
		while(!file_text_eof(endless_file)) {
			_temp[i] = string_lettersdigits(file_text_readln(endless_file));
			
			i++;
		}
		file_text_close(endless_file);
	} else {
		cout("[obj_global]: Couldn't open words.txt!!");
		room_goto(rm_intro);
	}
}
return _temp;