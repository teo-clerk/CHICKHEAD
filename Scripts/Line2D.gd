extends Line2D

var posi :Vector2
var posf :Vector2
var vpos :Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed('Click'):
		posi = get_viewport().get_mouse_position()
	if Input.is_action_pressed('Click') and get_parent().is_on_floor():
		posf = get_viewport().get_mouse_position()
		vpos = posf - posi
		clear_points()
		add_point(Vector2(0, 0), -1)
		add_point(vpos, -1)
	else:
		clear_points()
	
