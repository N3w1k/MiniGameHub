extends Node

#Starting values
var gold_player: int = 10
var price_sword: int = 35
var damage: int = 12
var life: int = 90
var critics: int = damage * 3
var score: int = 99

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_damage_receive()
	_branch()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


#Counting player gold
func _counting_player_gold() -> void:
	gold_player = gold_player - price_sword
	print(gold_player)

#Multiplicating combat damages
func _multi_damage() -> void:
	damage = damage * 3 
	print(damage)

#Max damage before dead
func _check_resistance() -> void:
	@warning_ignore("integer_division")
	var resistance: int = (life / damage) * damage 
	print(resistance)

#Life after damage
func _counting_life() -> void:
	@warning_ignore("integer_division")
	life = life - ((life/damage) * damage)
	print(life)

#Checking if enougth gold to buy 
func _check_gold() -> void:
	if gold_player >= price_sword:
		print("You can buy a sword")
	else :
		print ("You can't buy a sword")

#Life information 
func _check_life_status() -> void:
	if life < 30 or damage > 50:
		print("danger")

#Receive damage
func _damage_receive() -> void:
	life = life - critics
	print(life)

#Choising branch 
func _branch() -> void:
	#score += score #180
	print("score = ",score)
	if score >= 100:
		print("Bonus win")
	elif score == 99:
		print("Pas loin")
	else:
		print("encore ", 100-score, " points")
