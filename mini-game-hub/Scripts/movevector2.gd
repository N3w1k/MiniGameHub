extends Node2D

@onready var my_ambulance: Sprite2D = $Sprite2D
@export var speed: float
@export var direction: Vector2 = Vector2 (0.0,0.0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	my_ambulance.position = my_ambulance.position + speed * direction.normalized() * delta 
	
	pass
