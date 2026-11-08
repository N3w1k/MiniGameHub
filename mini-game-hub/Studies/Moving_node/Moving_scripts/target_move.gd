extends Sprite2D

@export var ambulance_speed : float
@export var target: Marker2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	moving_ambulance(ambulance_speed, delta)

func moving_ambulance(_speed: float, delta: float) -> void:
	var direction_to_target:Vector2 = self.position.direction_to(target.position)
	translate(direction_to_target * delta * ambulance_speed)
