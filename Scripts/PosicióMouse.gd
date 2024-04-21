extends Node

var posi
var posf
var vpos

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed('Click'):
		posi = get_viewport().get_mouse_position()
	if Input.is_action_just_released('Click'):
		posf = get_viewport().get_mouse_position()
		vpos = posf - posi
		if vpos[0] > 255:
			vpos[1] = vpos[1] * 255 / vpos[0]
			vpos[0] = 255
		if vpos[1] > 255:
			vpos[0] = vpos[0] * 255 / vpos[1]
			vpos[1] = 255
		Global.VEL = vpos
		print(Global.VEL)
