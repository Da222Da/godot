extends Resource

class_name Item # 角色物品类

@export var name : String
@export var texture : Texture2D
@export var icon : Texture2D
@export var damage : float
@export_enum("Melee","Range") var type : String
@export var animation : String
@export var charge_animation : String
@export var delay : float
@export var projectile : int

 
