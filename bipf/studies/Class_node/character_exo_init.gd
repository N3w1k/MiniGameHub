class_name Dwarf_fighter

var nom: String
var health: int
var weapon: String
var weapon_damage: int

func _init(p_nom: String, p_hp: int, p_weapon: String, p_dmg: int) -> void:
	nom = p_nom
	health = p_hp
	weapon = p_weapon
	weapon_damage = p_dmg


func display_stats() -> void:
	print(nom," ", health, " ", weapon, " ", weapon_damage)
