extends Node

var rex := chien.new("Rex", 4)
var felix := chat.new("Félix", 3)
var titi := oiseau.new("titi", 1, "Pélican")
var grizzy:= ours.new("Grizzy", 1)


var zoo : Array[Animal] = [
	chat.new("Mimine", 4), 
	chien.new("Ruby", 1), 
	oiseau.new("Plume", 5, "Moineau"), 
	ours.new("Grizzy", 1)
]

func _ready() -> void:
	rex._decrire()
	felix._manger()
	titi._decrire()
	rex._crier()
	felix._crier()
	titi._crier()
	titi._voler()
	
	for animaux in zoo:
		animaux.crier()
		
		if animaux is oiseau:
			animaux.voler()

func _process(_delta: float) -> void:
	pass
