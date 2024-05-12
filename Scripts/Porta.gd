extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	var claus_necessaries :int = Global.claus_necessaries
	var claus :int = Global.claus
	print("dentro")
	if claus_necessaries <= claus:
		Global.claus = 0
		print("Victoria")
		get_tree().change_scene_to_file("res://Scenes/victoria.tscn")  # Replace with function body.
