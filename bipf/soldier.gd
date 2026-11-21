class_name Soldier

## Description of the class's role and func
##
## Description of the script
##and further detail.

var soldier_max_health: int = 100 #Set the max health of the soldier.

#region Var used for the soldier characteristics
var soldier_name: String
var soldier_health: int:
	set(value):
		soldier_health = clampi(value, 0, soldier_max_health)
	get:
		return soldier_health
var soldier_armor: Armor
var soldier_head_clothe: Hood
#endregion 

func _init(s_name: String, s_health: int, 
	s_armor: Armor = Armor.create_captain_guard_armor(), 
	s_h_clothe: Hood = Hood.new(Clothe.ClotheType.TRAVELER)) -> void:
	soldier_name = s_name
	soldier_health = s_health
	soldier_armor = s_armor
	soldier_head_clothe = s_h_clothe

#TEST Function used to debug 
func _print_details() -> void:
	var message_to_print: String = "{0} wear the {2}, wear {3} and have {1} HP"\
	.format([soldier_name, soldier_health, soldier_armor._armor_name,
	soldier_head_clothe._clothe_name])
	print(message_to_print)
