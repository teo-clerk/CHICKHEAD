extends Control
@onready var check_button = $Butons/HBoxContainer/CheckButton


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.music:
		check_button.button_pressed = true
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass






func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/credits.tscn")


func _on_check_button_pressed():
	Global.music = !Global.music
	pass # Replace with function body.
