extends Node

var soldier_armor := Armor.create_guard_armor()
var soldier_hood := Hood.new(Clothe.ClotheType.TRAVELER)
var soldier := Soldier.new("Jean", 50, soldier_armor, soldier_hood)

func _ready() -> void:
	_debug() #TEST Used for debug

func _process(_delta: float) -> void:
	pass

func _debug() -> void:
	soldier_armor._print_details()
	soldier._print_details()
	soldier.soldier_head_clothe._hidding()
	soldier.soldier_head_clothe._ironing()
	soldier.soldier_head_clothe._washing()
	soldier.soldier_head_clothe._print_var()

#ClotheType.TRAVELER
