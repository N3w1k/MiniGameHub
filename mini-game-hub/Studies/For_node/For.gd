extends Node

var inv: Array[String] = ["épée", "potion", "clé"]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_looking_array()
	_for_in_for()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _chek_inv() -> void:
	for i in range(inv.size()) :
		print (inv[i])

func _testing_for() -> void:
	for i in range (10, 0, -1):
		print("round ", i)
	print ("end")

func _testing_for_look() -> void:
	for e in ["épée", "potion", "clé"]:
		print(e)

func _break_and_go() -> void:
	for i in range(1, 11):
		if i % 2 == 0:
			continue
		if i > 7:
			break
		print (i)

func _looking_array() -> void:
	for épée in inv:
		print("épée")


func _for_in_for() -> void:
	for y in range(3):
		var ligne := ""
		for x in range(4):
			ligne += "#"
		print(ligne)
