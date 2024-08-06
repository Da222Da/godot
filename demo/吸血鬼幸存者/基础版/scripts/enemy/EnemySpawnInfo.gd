extends Resource

class_name EnemySpawnInfo # 敌人生成信息类

# 敌人的生成期间
@export var time_start:int
@export var time_end:int 

@export var enemy:Resource # 敌人的场景资源
@export var enemy_number:int # 敌人出现的数量
@export var enemy_spawn_delay:int # 敌人出现的延迟时间

var spawn_delay_counter = 0
