extends Line2D

var posi :Vector2
var posf :Vector2
var vpos :Vector2
var posmax :int
# Called when the node enters the scene tree for the first time.
func _ready():
	set_width(1)

# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed('Click'):
		posi = get_viewport().get_mouse_position()
		clear_points()
		add_point(Vector2(0, 0), -1)

	if Input.is_action_pressed('Click') and get_parent().is_on_floor():
		posf = get_viewport().get_mouse_position()
		vpos = posf - posi
		posmax = max(abs(vpos[0]), abs(vpos[1]))
		if posmax > 125:
			vpos[1] = vpos[1] * 500 / posmax
			vpos[0] = vpos[0] * 500 / posmax
		else:
			vpos *= 4
		var vx = vpos[0]
		var vy = vpos[1]
		clear_points()
		add_point(Vector2(0, 0), -1)
		var y = 0
		for x in range(1000):
			if vx > 0:
				y = vy * x / vx + 0.5 * 980 * (x/vx) ** 2
				add_point(Vector2(x, y), -1)
			elif vx < 0:
				y = vy * -x / vx + 0.5 * 980 * (-x/vx) ** 2
				add_point(Vector2(-x, y), -1)
			elif vy < 0:
				clear_points()
				add_point(Vector2(0, 0), -1)
				add_point(Vector2(0, -(vy ** 2) / (2 * 980)), -1)
			if y > 0:
				break
				
			
		
	else:
		clear_points()
