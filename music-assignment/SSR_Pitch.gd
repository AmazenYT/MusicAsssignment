extends HSlider

@export
var audio_player_path: NodePath  

var audio_player: AudioStreamPlayer2D  

func _ready() -> void:
	
	audio_player = get_node(audio_player_path) as AudioStreamPlayer2D
	

	value_changed.connect(_on_value_changed)


func _on_value_changed(value: float) -> void:
	
	var pitch_scale = lerp(1.0, 2.0, value)  

	audio_player.pitch_scale = pitch_scale  
	
	
	print("Slider Value: ", value, " Pitch Scale: ", pitch_scale)
