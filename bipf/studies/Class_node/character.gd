class_name Characterexo

var nom: String = "Jean-Michel"
var health: int = 100
var speed: int = 200
var weapon: String = "Sword"
var weapon_damage: int = 20

func display_stats() -> void:
	print(nom," ", health, " ", speed, " ", weapon, " ", weapon_damage)

func print_health() -> void: 
	print(nom, " : ", health, " PV")

func take_damage(_amount:int) -> void:
	health -= _amount 
	pass
