extends Node

var character_sheet : Dictionary = {"hp":100, "att":50, "def":20, "spd":10}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(character_sheet)
	character_sheet["hp"] = character_sheet["hp"] - 15 
	print(character_sheet)
	character_sheet["level"] = 1
	print(character_sheet)
	character_sheet.erase("spd")
	character_sheet.get("mana", 0)
	print(character_sheet)
	for stats in character_sheet:
		print(stats, ":", character_sheet[stats])
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



# var stats = {"hp": 100, "mana": 50}
