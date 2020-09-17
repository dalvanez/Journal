function get_random_word() {
	//get_random_word()
	//Returns a random word from the word list.
	var _rand = irandom_range(0,array_length_1d(global.endless_words)-1);
	return global.endless_words[_rand];


}
