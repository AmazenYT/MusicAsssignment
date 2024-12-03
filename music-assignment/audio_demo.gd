extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass # Replace with function body.

func _on_button_button_down() -> void:
	if $LiveAndLearn.playing:
		# Stop LiveAndLearn and change button text to "Play"
		$LiveAndLearn.stop()
		$Button.text = "Play"
	else:
		# If AllHailShadow is playing, stop it before playing LiveAndLearn
		if $AllHailShadow.playing:
			$AllHailShadow.stop()
			$Button2.text = "Play"  # Update the button for AllHailShadow
		# Play LiveAndLearn and change button text to "Stop"
		$LiveAndLearn.play()
		$Button.text = "Stop"

func _on_h_slider_value_changed(value: float) -> void:
	$LiveAndLearn.pitch_scale = value
	pass # Replace with function body.

func _on_button_2_button_down() -> void:
	if $AllHailShadow.playing:
		# If AllHailShadow is playing, stop it
		$AllHailShadow.stop()
		$Button2.text = "Play"
	else:
		# If LiveAndLearn is playing, stop it first before playing AllHailShadow
		if $LiveAndLearn.playing:
			$LiveAndLearn.stop()
			$Button.text = "Play"  # Update the button for LiveAndLearn
		# Now play AllHailShadow and change button text to "Stop"
		$AllHailShadow.play()
		$Button2.text = "Stop"
