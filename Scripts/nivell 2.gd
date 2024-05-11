extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_porta_final_body_entered(body):
	if Global.claus == 3:
		Global.claus = 0
		print('victoria')
	else:
		$Sprite2D.visible = true
		
