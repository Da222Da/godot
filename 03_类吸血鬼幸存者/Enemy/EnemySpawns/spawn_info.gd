# 敌人生成信息类
extends Resource 
class_name SpawnInfo 

@export var time_start:int
@export var time_end:int
@export var enemy:Resource # 敌人资源
@export var enemy_number: int # 第一次生成敌人的数目
@export var enemy_spawn_delay: int # 每次生成敌人的时候，延迟一会儿

var spawn_delay_counter = 0 # 延迟计数器，用于跟踪计时器延迟
