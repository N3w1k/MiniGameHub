extends Sprite2D

@export var ambulance_speed: float

func _ready() -> void:
	pass 

func _process(delta: float) -> void:

	move_ambulance(ambulance_speed, delta)
	flip_ambulance()

func move_ambulance (_speed: float, delta: float) -> void:

	self.position += transform.x * ambulance_speed * delta

func flip_ambulance () -> void:

	if self.position.x >= 1152 :
		self.rotation += PI
		flip_v = true
	if self.position.x <= 0 :
		self.rotation += PI 
		flip_v = false
	if self.position.y >= 648 :
		self.rotation += PI
		flip_v = true
	if self.position.y <= 0 :
		self.rotation += -PI
		flip_v = false
