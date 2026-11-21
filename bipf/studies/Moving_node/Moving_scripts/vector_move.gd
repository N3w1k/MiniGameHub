extends Sprite2D

@export var ambulance_speed: float
@export var ambulance_direction: Vector2 

func _ready() -> void:
	pass 

func _process(delta: float) -> void:

	move_ambulance(ambulance_speed, ambulance_direction, delta)

func move_ambulance (_speed: float, _direction: Vector2, delta: float) -> void:

	self.position += ambulance_speed * ambulance_direction.normalized() * delta
