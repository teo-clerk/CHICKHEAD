extends Node2D

@export var escena :PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(Global.claus_necessaries," ", Global.claus)


func _on_area_2d_body_entered(body):
	var claus_necessaries := Global.claus_necessaries
	var claus := Global.claus
	if claus_necessaries == claus:
		Global.claus = 0
		print("Victoria")
		get_tree().change_scene_to_packed(escena)  # Replace with function body.
