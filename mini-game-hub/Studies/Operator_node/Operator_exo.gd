extends Node

var health: int = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	take_damage(health)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func take_damage(current_health: int, damage: int = 100) -> int:
	if (current_health < 0):
		return 0
	if (damage > 1000):
		return 0
	print("Santé avant calcul: ", current_health)
	current_health = current_health - damage
	print("Santé après degats: ", current_health)
	if (current_health <= 0):
		current_health = 0
		print("T'es mort")
	else:
		print("On est en vie")
		
	return current_health
