extends Button

@export var escena :PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if Global.nivell1_enable:
		get_tree().change_scene_to_packed(escena) # Replace with function body.
