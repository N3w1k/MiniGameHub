extends Node2D

@export var grogmyr_life : int
@export var gob_name : String
@export var gob_size : String
@export var gob_AC : int
@export var gob_HP: int
@export var gob_speed: float


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var Gnark = Goblin.new(gob_name,gob_size,gob_AC,gob_HP,gob_speed)
	Gnark._display_goblin_stats()
	var grogmyr = Dwarf_fighter.new("Grogmyr", grogmyr_life, "Sword", 20)
	grogmyr.display_stats()
	var hero := Character.new()
	hero.print_health()
	hero.take_damage(20)
	hero.print_health()
	print(hero.get_instance_id())
	hero.display_stats()
	var biloute := Character.new()
	biloute.nom = "Bibouze"
	biloute.speed = 30
	print(biloute.get_instance_id())
	biloute.display_stats()
	var copie = hero
	copie.nom = "Kikou"
	copie.health = 0
	copie.weapon = "Axe"
	copie.print_health()
	print(copie.get_instance_id())
	copie.display_stats()
	var trou_du_cul := Character.new()
	trou_du_cul.nom = "Cougnou"
	trou_du_cul.weapon_damage = 300
	print(trou_du_cul.get_instance_id())
	trou_du_cul.display_stats()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
