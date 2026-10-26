extends Sprite2D

@export var ambulance_speed: float 
@export var ambulance_direction: Vector2 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	move_ambulance(ambulance_speed, ambulance_direction, delta)
	
## Je bouge mon ambulance  
func move_ambulance(speed: float, direction: Vector2, delta: float) -> void:
	
	self.position += speed * direction.normalized() * delta 
	self.rotation = direction.angle()
	
	pass
	
