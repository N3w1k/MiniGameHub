extends Node

@export var enemy_hp: int
@export var boss_hp: int
@export var wave_size: int

var enemy_list: Array[bool]
var hp_total: int
var enemy_line: String = ""

func _ready() -> void:
	#_sorting_enemy()
	#_total_hp()
	_print_enemies_grid()

func _process(_delta: float) -> void:
	pass

func _sorting_enemy() -> void:
	for i in range(1, wave_size+1):
		enemy_list.insert(0, i % 4 == 0)
		if i % 4 == 0:
			enemy_line += "B"
			print("Enemy ", i, " : BOSS")
		else:
			enemy_line  += "E"
			print("Enemy ", i)
	print(enemy_list)

func _total_hp() -> void:
	hp_total= (enemy_list.count(true) * boss_hp) + (enemy_list.count(false) * enemy_hp)
	print(hp_total)

func _print_enemies_grid() -> void:
	var nb_lines: int = 2
	var nb_columns: int = 4
	var grid_line: String = ""
	for line_number in range(nb_lines):
		grid_line = ""
		for enemy in range(1, nb_columns+1):
			if enemy % 4 == 0:
				grid_line += "B"
			else:
				grid_line  += "E"
		print(grid_line)
