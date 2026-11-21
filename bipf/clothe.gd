class_name Clothe
extends RefCounted

## Description of the class's role and func
##
## Description of the script
##and further detail.

enum ClotheType {
	COMMON, #[0] 
	COSTUME, #[1] 
	FINE, #[2] 
	GARGATH_WOOL, #[3] 
	TRAVELER, #[4] 
	}

#region Variables used for the armor. 
var clothe_resistance : int = 1
var _clothe_name : String = "Not dressed !"
var clothe_type : ClotheType
var clothe_type_int : int = 0
#endregion

#region Differents types of armors from the ArmorType
static func create_village_clothe() -> Clothe:
	var new_clothe:= Clothe.new(ClotheType.COMMON)
	new_clothe.clothe_resistance = 5
	new_clothe._clothe_name = "Tunic"
	return new_clothe
static func create_peasant_clothe() -> Clothe:
	var new_clothe:= Clothe.new(ClotheType.COMMON)
	new_clothe.clothe_resistance = 5
	new_clothe._clothe_name = "Loincloth"
	return new_clothe
#endregion

func _init(_clothe_class: ClotheType) -> void:
	match _clothe_class:
		ClotheType.COMMON:
			_clothe_name = "Shitty Clothes"
			clothe_resistance = 10
		ClotheType.COSTUME:
			_clothe_name = "Nice Clothes"
			clothe_resistance = 2
		ClotheType.FINE:
			_clothe_name = "Normal Clothes"
			clothe_resistance = 3
		ClotheType.GARGATH_WOOL:
			_clothe_name = "Beautiful Clothes"
			clothe_resistance = 4
		ClotheType.TRAVELER:
			_clothe_name = "Travel Clothes"
			clothe_resistance = 15

#region Function of clothes
func _washing() -> void:
	var message_to_print: String = "[{2}] {0} need to be wash beacaus it have {1} of resistance"\
	.format([_clothe_name, clothe_resistance, clothe_type])
	print(message_to_print)
func _ironing() -> void:
	var message_to_print: String = "[{2}] {0} need to be ironing because it have {1} of resistance"\
	.format([_clothe_name, clothe_resistance, clothe_type])
	print(message_to_print)
#endregion 

#TEST Function used to debug 
func _print_details() -> void:
	var message_to_print: String = "[{2}] {0} have {1} AC"\
	.format([_clothe_name, clothe_resistance, clothe_type])
	print(message_to_print)
func _print_var() -> void:
	var message_to_print: String = "[{0}] [{1}] [{2}] [{3}]"\
	.format([clothe_resistance, _clothe_name, clothe_type, clothe_type_int])
	print(message_to_print)
