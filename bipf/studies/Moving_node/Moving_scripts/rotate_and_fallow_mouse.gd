extends Sprite2D

@export var ambulance_speed : float

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	moving_ambulance(ambulance_speed, delta)

func moving_ambulance(_speed: float, delta:float):
	
	look_at(get_global_mouse_position())
	move_local_x(delta * ambulance_speed)
	
