extends Sprite2D

@export var direction_x: int = 1
@export var speed:float = 50
@export var limit_R:int = 2650
@export var limit_L:int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	position.x = position.x + direction_x*speed*delta
	
	if position.x >= limit_R and direction_x > 0: 
		flip_h = true
		direction_x = -1
		
	elif position.x <= limit_L and direction_x < 0:
		flip_h = false
		direction_x = 1
	pass
