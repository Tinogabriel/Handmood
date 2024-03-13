extends StaticBody2D

var vars2 = preload("res://Pontuacao.gd")

func ponto():	
	Pontuacao.adiciona_score(5)
func _physics_process(delta):
	# Atualiza o placar
	get_parent().get_node("placar").text = "score: " + str(Pontuacao.score)
	
func _on_Area2D_body_exited(body):
		if Pontuacao2.score2 > 195:
			get_tree().change_scene("res://Vitoria_1.tscn")
		else: 
			body.ponto()