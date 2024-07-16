extends CanvasLayer

var score = 0
@onready var score_label = $ScoreLabel

func add_score():
	score = score + 1
	score_label.text = "金币：" + str(score)
