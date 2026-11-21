extends Control

@onready var label_clic: Label = $LabelClic

var counter: int = 0

func _ready() -> void:
	label_clic.text = str(counter)
	pass 

func update_clic_label() -> void:
	label_clic.text = str(counter)

func _process(_delta: float) -> void:
	pass

func _on_button_clic_pressed() -> void:
	counter += 1
	update_clic_label()
	print(counter)

func _on_button_clic_2_button_down() -> void:
	pass # Replace with function body.
