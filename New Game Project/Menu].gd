extends Control



func _on_Iniciar_pressed():
	Pontuacao.reset_score()
	get_tree().change_scene("res://Handmood.tscn")
	


func _on_Sair_pressed():
	get_tree().quit()



func _on_Instrucoes_pressed():
	get_tree().change_scene("res://Controles.tscn")
