extends Node

var save = " ana the brave;120;80 "
#string : Ana the brave string
#int : 120
#int : 80

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_extracting_save()
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _extracting_save() -> void:
	var save_cleaning = save.strip_edges()
	print(save_cleaning)
	var save_capitalizing = save_cleaning.capitalize()
	print(save_capitalizing)
	var save_sorting = save_capitalizing.split(";")
	print(save_sorting)
	var name1 = save_sorting.substr(0)
	print(save_sorting)
