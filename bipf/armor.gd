class_name Armor

## Description of the class's role and func
##
## Description of the script
##and further detail.

enum ArmorType {
	BRONZE, #[0]
	SILVER, #[1]
	GOLD, #[2]
	}

#region Variables used for the armor. 
var armor_class : int = 10
var _armor_name : String = "Not armored!"
var armor_type : ArmorType 
var armor_type_int : int = 0
#endregion

#region Differents types of armors from the ArmorType
static func create_guard_armor() -> Armor:
	var new_armor:= Armor.new(ArmorType.BRONZE)
	new_armor.armor_class = 12
	new_armor._armor_name = "Brown"
	return new_armor
static func create_captain_guard_armor() -> Armor:
	var new_armor:= Armor.new(ArmorType.BRONZE)
	new_armor.armor_class = 14
	new_armor._armor_name = "Metal"
	return new_armor
#endregion

func _init(_armor_class: ArmorType) -> void:
	match _armor_class:
		ArmorType.BRONZE:
			_armor_name = "Earth Armor"
			armor_class = 15
		ArmorType.SILVER:
			_armor_name = "Moon Armor"
			armor_class = 20
		ArmorType.GOLD:
			_armor_name = "Sun Armor"
			armor_class = 25

#TEST Function used to debug 
func _print_details() -> void:
	var message_to_print: String = "[{2}] {0} have {1} AC"\
	.format([_armor_name, armor_class, armor_type])
	print(message_to_print)
