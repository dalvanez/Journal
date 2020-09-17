function endless_queue(argument0) {
	//endless_queue(queue)
	//Adds to the queue in endless mode
	if global.endless {
		highscore+=1;
		ds_queue_enqueue(argument0,get_random_word());
	}


}
