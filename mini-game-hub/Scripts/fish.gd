extends Node2D

@onready var fish1:Sprite2D = $Fish

@export var direction: Vector2 = Vector2 (100.0, 100.0)

@export var speed:float = 50


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	fish1.position = fish1.position + direction * speed * delta 
	
	pass
