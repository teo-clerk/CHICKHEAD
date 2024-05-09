extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_tornar_a_intentar_pressed():
	get_tree().change_scene_to_file(Global.escena_anerior) # Replace with function body.


func _on_menu_pressed():
	Global.monedes = 0
	get_tree().change_scene_to_file("res://Scenes/interfaz.tscn") # Replace with function body.


func _on_sortir_pressed():
	get_tree().quit() # Replace with function body.
