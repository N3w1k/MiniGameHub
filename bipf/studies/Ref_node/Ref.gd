extends Node

func soigner(n: int) -> void:
	n += 10
	print("Dans la fonction : ", n)

func ajouter_ennemi(liste: Array) -> void:
	liste.append("Slime")
	print("Dans la fonction : ", liste)

func _ready() -> void:
	var vie: int = 100
	soigner(vie)
	print("Après l'appel : ", vie)
	var ennemis: Array = ["Gobelin"]
	ajouter_ennemi(ennemis)
	print("Après l'appel : ", ennemis)
