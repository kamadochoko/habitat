; 	vectors.m	jump vectors so ACTIONS can use routines in mainline
vectors:
	jmp	prepare_to_send_request
	jmp	send_request_byte
	jmp	send_request
	jmp	send_string
	jmp	balloonMessage
	jmp	set_actor_chore
	jmp	issue_nested_command
	jmp	goXY
	jmp	do_a_sound
	jmp	talk
	jmp	wait_for_something
	jmp	toggle_walking_music
	jmp	putInto
	jmp	get_subject_object
	jmp	change_containers
	jmp	beep
	jmp	depends
	jmp	delete_object
	jmp	unpack_and_cleanup		; unpack_contents_vector
	jmp	purge_contents
	jmp	pick_from_container
	jmp	create_object
	jmp	select_denomination
	jmp	spend
	jmp	text_handler
	jmp	boing
	jmp	init_state_animation
	jmp	balloon_printf
	jmp	send_arguments
	jmp	goToNewRegion
	jmp	wait_for_region
	jmp	ASYNC_animation_wait
	jmp	adjacency_check
	jmp	punt_if_not_adjacent
	jmp	face_cursor
	jmp	find_goto_coords
	jmp	set_up_actor_pointers
	jmp	caller			; the JSR hack!
	jmp	set_up_pointed_pointers
	jmp	change_light_level
	jmp	do_a_complex_sound
	jmp	get_ESP_text
	jmp	throw_it_away
	jmp	ESP_talk
	jmp	all_SFX_off
	jmp	get_furniture_xy
	jmp	update_cursor
	jmp	region_change
	jmp	clear_text_line
	jmp	change_player_color
	jmp	beep_or_boing
	jmp	start_walk
	jmp	find_goto_alt_entry
