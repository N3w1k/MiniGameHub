extends Node

var inv: Array[String] = ["épée", "potion", "clé"]

func _ready() -> void:
	print(inv[1], " ", inv[-1])
	print(inv[0], " ", inv[1], " ", inv[2])
	_tab_test()

func _process(_delta: float) -> void:
	_begin_add_object()
	_insert_add_object()
	_insert_full_object()
	_debug()
	_erase_last()
	pass

func _end_add_object() -> void:
	if Input.is_action_just_pressed("ui_accept"):
		inv.append("armure")
		print(inv[0], " ", inv[1], " ", inv[2], " ", inv[3])

func _begin_add_object() -> void:
	if Input.is_action_just_pressed("ui_left"):
		inv.push_front("bouclier")
		print(inv[0], " ", inv[1], " ", inv[2], " ", inv[3])

func _insert_add_object() -> void:
	if Input.is_action_just_pressed("ui_right"):
		inv.insert(0,"casque")
		print(inv[0], " ", inv[1], " ", inv[2], " ", inv[3])

func _insert_full_object() -> void:
	if Input.is_action_just_pressed("ui_up"):
		inv.append_array(inv)
		print(inv[0], " ", inv[1], " ", inv[2], " ", inv[3])

func _debug() -> void: 
	if Input.is_action_just_pressed("ui_down"):
		print(inv)

func _erase_last() -> void: 
	if Input.is_action_just_pressed("ui_cancel"):
		inv.pop_back()

func _tab_test() -> void:
	if inv.has("clé"):
		print("Look clé")
