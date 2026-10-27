extends Sprite2D

@export var ambulance_speed: float
@export var vertical_direction: bool = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	move_ambulance(ambulance_speed, vertical_direction, delta)
	
func move_ambulance(speed: float, direction: bool, delta: float) -> void:
	
	var vertical_move : Vector2 = Vector2 (0.0,1.0)
	var horizontal_move : Vector2 = Vector2 (1.0,0.0)
	
	if vertical_direction == true :
		self.position += ambulance_speed * vertical_move.normalized() * delta
	else:
		self.position += ambulance_speed * horizontal_move.normalized() * delta
