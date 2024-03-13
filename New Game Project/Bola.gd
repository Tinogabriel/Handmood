extends RigidBody2D

var vars = preload("res://Pontuacao.gd")
var vars2 = preload("res://Pontuacao2.gd")

func _ready():
	
	
	Pontuacao.reset_score()
	Pontuacao2.reset_score2()