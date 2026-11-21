class_name 

enum WeaponType { SWORD, BOW, STAFF }

var weapon_type: WeaponType 
var damage : WeaponType
var _name : WeaponType

func _init(_weapon_type: WeaponType) -> void:
	match _weapon_type:
		WeaponType.SWORD:
			_name = "Epée"
			damage = 35
		WeaponType.STAFF:
			weapon_name = "Baton"
			weapon_damage = 12
			
