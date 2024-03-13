extends StaticBody2D

var vars = preload("res://Pontuacao2.gd")

func ponto():	
	Pontuacao2.adiciona_score2(5)
func _physics_process(delta):
	get_parent().get_node("placar2").text = "score: " + str(Pontuacao2.score2)

func _on_Area2D_body_entered(body):
		if Pontuacao.score > 195:
			get_tree().change_scene("res://Vitoria_2.tscn")
		else: 
			body.ponto()