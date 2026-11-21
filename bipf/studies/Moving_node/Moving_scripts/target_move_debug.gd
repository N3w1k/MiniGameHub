extends Sprite2D

@export var ambulance_speed : float
@export var target: Marker2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	moving_ambulance(ambulance_speed, delta)

func moving_ambulance(_speed: float, delta: float) -> void:
	var direction_to_target:Vector2 = get_target_coordinates()
	global_position = global_position.move_toward(direction_to_target, delta * ambulance_speed)

func get_target_coordinates() -> Vector2:
	var current_target_node: Node2D = target
	return current_target_node.global_position
