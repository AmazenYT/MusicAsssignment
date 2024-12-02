extends Control

# The function that is called when the play button is pressed
func _on_play_pressed() -> void:
	var click_sound = $MarginContainer/VBoxContainer/Play/Click 
	if click_sound is AudioStreamPlayer2D:
		click_sound.play()  
		await click_sound.finished 
		get_tree().change_scene_to_file("res://my assignment.tscn") 
		

# The function that is called when the exit button is pressed
func _on_exit_pressed() -> void:
	get_tree().quit()  # Close the game
