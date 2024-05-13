extends Node2D

func _ready():
	if Global.pollastres_necessaris == Global.monedes:
		$Estrella1.show()
		$Estrella2.show()
		$Estrella3.show()
	elif Global.pollastres_necessaris * 0.5 <= Global.monedes:
		$Estrella1.show()
		$Estrella2.show()
	elif Global.pollastres_necessaris * 0.1 <= Global.monedes:
		$Estrella1.show()
	if Global.escena_anerior == "res://Scenes/mapa_prueba.tscn":
		Global.nivell1_enable = true

func _on_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/interfaz.tscn") # Replace with function body.
	
func _on_try_again_pressed():
	get_tree().change_scene_to_file(Global.escena_anerior) # Replace with function body.

func _on_exit_pressed():
	get_tree().quit()  # Replace with function body.
