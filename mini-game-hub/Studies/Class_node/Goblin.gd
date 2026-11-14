class_name Goblin

var name: String
var size: String
var AC: int
var HP: int
var speed: float

func _init(p_name: String, p_size: String, p_AC: int, p_HP: int, p_speed: float) -> void:
	name = p_name
	size = p_size
	AC = p_AC
	HP = p_HP
	speed = p_speed

func _display_goblin_stats() -> void:
	print(name, " ", size," ", AC," ", HP, " ", speed, " ")
