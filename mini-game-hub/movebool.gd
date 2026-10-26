extends Node

@onready var my_ambulance: Sprite2D = $Sprite2D
@export var speed: float
@export var horizontal: bool = true
var directionx : Vector2 = Vector2 (10,0.0)
var directiony : Vector2 = Vector2 (0.0,10)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if horizontal == true : 
		my_ambulance.position += speed * directionx.normalized() * delta
	else: 
		my_ambulance.position += speed * directiony.normalized() * delta
	
	pass
