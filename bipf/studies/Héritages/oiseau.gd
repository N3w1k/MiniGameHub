class_name oiseau
extends animal

var race: String

func _init(p_nom: String, p_age: int, p_race: String) -> void:
	super(p_nom, p_age)
	race = p_race

func _decrire() -> void:
	super._decrire()
	print("Race : ", race)

func _crier() -> void:
	print("cuicui !")

func _voler() -> void:
	super._decrire()
	print(nom, " s'envole")
