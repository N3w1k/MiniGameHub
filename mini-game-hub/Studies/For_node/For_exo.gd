extends Node

var ennemis: Array[String] = ["slime", "gobelin", "dragon"]
var wave_size: int = 8
var enemy_hp: int = 30
var boss_hp: int = enemy_hp * 2
var enemy_list : Array[bool]
var hp_total : int

func _ready() -> void:
	_listing_enemy()
	_total_hp()
	print(hp_total)
	pass # Replace with function body.

func _process(_delta: float) -> void:
	pass

func _count_down () -> void:
	for i in range(3, 0, -1):
		print("start in ", i)
	@warning_ignore("shadowed_variable_base_class")
	for name in ennemis:
		print (name, " appear")

func _listing_enemy() -> void:
	for i in range(1, 9):
		enemy_list.insert(0, i % 4 == 0)
		print(enemy_list)
		if i % 4 == 0:
			print("Enemy ", i, " : BOSS")
		else:
			print("Enemy ", i)

func _total_hp() -> void:
	hp_total= (enemy_list.count(true) * boss_hp ) + (enemy_list.count(false) * enemy_hp)
