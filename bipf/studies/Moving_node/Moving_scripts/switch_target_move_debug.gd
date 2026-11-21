extends Sprite2D

@export var ambulance_speed : float
@export var target_list: Array[Node2D] 

var current_index: int = 0

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	switch_target()
	moving_ambulance(ambulance_speed, delta)

func moving_ambulance(_speed: float, delta: float) -> void:
	var direction_to_target:Vector2 = get_target_coordinates()
	global_position = global_position.move_toward(direction_to_target, delta * ambulance_speed)

func get_target_coordinates() -> Vector2:
	var current_target_node: Node2D = target_list[current_index]
	return current_target_node.global_position

func switch_target()-> void:
	if Input.is_action_just_pressed("ui_accept"):  
		current_index = (current_index + 1) % target_list.size()
