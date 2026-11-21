extends Sprite2D

@export var ambulance_speed: float
@export var vertical_direction: bool = true

func _ready() -> void:
	pass 

func _process(delta: float) -> void:

	move_ambulance(ambulance_speed, vertical_direction, delta)

func move_ambulance(_speed: float, _direction: bool, delta: float) -> void:

	var vertical_move : Vector2 = Vector2.UP
	var horizontal_move : Vector2 = Vector2.RIGHT

	if vertical_direction == true :
		self.position += ambulance_speed * vertical_move.normalized() * delta
	else:
		self.position += ambulance_speed * horizontal_move.normalized() * delta
