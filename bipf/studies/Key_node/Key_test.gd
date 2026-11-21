extends Node

var scores : Dictionary = {"Ana": 1200, "léo": 850}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scores["Max"] = 400
	scores["léo"] += 300
	scores.erase("Ana")
	for joueur in scores:
		print(joueur, " : ", scores[joueur])
	print(scores.get("Zoé", 0))



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
