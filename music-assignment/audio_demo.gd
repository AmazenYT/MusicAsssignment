extends Node2D

# A list of song nodes for easier management
var songs: Array
var buttons: Array

func _ready() -> void:
	# Initialize songs and their corresponding buttons
	songs = [
		$LiveAndLearn,
		$AllHailShadow,
		$HisWorld,
		$ImHere,
		$EndlessPossibility,
		$FistBump,
		$WhatImMadeOf,
		$"Super Sonic Racing",
		$Everything
	]

	buttons = [
		$Button,
		$Button2,
		$Button3,
		$Button4,
		$Button5,
		$Button6,
		$Button7,
		$Button8,
		$Button9
	]

# Stop all songs
func stop_all_songs() -> void:
	for song in songs:
		if song is AudioStreamPlayer2D and song.playing:
			song.stop()

# Toggle a song and ensure only one plays at a time
func toggle_song(song: AudioStreamPlayer2D) -> void:
	if song.playing:
		song.stop()
	else:
		stop_all_songs()
		song.play()

# Button signal handlers
func _on_button_button_down() -> void:
	toggle_song($LiveAndLearn)

func _on_button_2_button_down() -> void:
	toggle_song($AllHailShadow)

func _on_button_3_button_down() -> void:
	toggle_song($HisWorld)

func _on_button_4_button_down() -> void:
	toggle_song($ImHere)

func _on_button_5_button_down() -> void:
	toggle_song($EndlessPossibility)

func _on_button_6_button_down() -> void:
	toggle_song($FistBump)

func _on_button_7_button_down() -> void:
	toggle_song($WhatImMadeOf)

func _on_button_8_button_down() -> void:
	toggle_song($"Super Sonic Racing")

func _on_button_9_button_down() -> void:
	toggle_song($Everything)
