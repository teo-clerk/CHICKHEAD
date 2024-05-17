extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	hide() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Menu"):
		show()
		get_tree().paused = true


func _on_continuar_pressed():
	hide() 
	get_tree().paused = false# Replace with function body.


func _on_sortir_pressed():
	get_tree().quit() # Replace with function body.


func _on_menú_pressed():
	get_tree().paused = false
	Global.cap_prov = false
	Global.monedes = 0
	get_tree().change_scene_to_file("res://Scenes/interfaz.tscn") # Replace with function body.
