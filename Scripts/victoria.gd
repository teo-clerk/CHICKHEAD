extends Node2D

func _on_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/interfaz.tscn") # Replace with function body.
	
func _on_try_again_pressed():
	get_tree().change_scene_to_file(Global.escena_anerior) # Replace with function body.

func _on_exit_pressed():
	get_tree().quit()  # Replace with function body.
