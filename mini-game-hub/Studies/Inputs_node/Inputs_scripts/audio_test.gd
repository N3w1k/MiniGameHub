extends Node2D

@onready var my_sound: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	play_my_sound()

func play_my_sound()-> void:
	if Input.is_action_just_pressed("ui_accept"):  
		$AudioStreamPlayer2D.play()
