extends Node2D

func _ready():
	Global.claus = 0
	Global.monedes = 0
func _on_tornar_a_intentar_pressed():
	get_tree().change_scene_to_file(Global.escena_anerior) # Replace with function body.


func _on_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/interfaz.tscn") # Replace with function body.


func _on_sortir_pressed():
	get_tree().quit() # Replace with function body.
