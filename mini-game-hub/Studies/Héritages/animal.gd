class_name Animal
extends RefCounted

var nom: String
var age: int

func _init(p_nom: String, p_age: int) -> void:
	nom = p_nom
	age = p_age

func _manger() -> void:
	print(nom, " mange")
	pass

func _decrire() -> void:
	if age > 1:
		print(nom, ",", " ", age, " ans")
	else:
		print(nom, ",", " ", age, " an")
	pass

func _crier() -> void:
	print(".....")
