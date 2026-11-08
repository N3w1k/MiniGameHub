extends Sprite2D

@export var ambulance_speed: float

func _ready() -> void:
	pass 

func _process(delta: float) -> void:

	move_ambulance(ambulance_speed, delta)

func move_ambulance (_speed: float, delta: float) -> void:

	self.position += transform.x * ambulance_speed * delta
