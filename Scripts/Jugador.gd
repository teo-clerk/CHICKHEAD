extends CharacterBody2D

@onready var jugador = $"."

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 980
var posi :Vector2
var posf :Vector2
var vpos :Vector2
var posmax :int


func _physics_process(delta):
	"""
	if velocity.x != 0:
		jugador.animation = "correr"
	else:
		jugador.animation = "default"
	"""
	if Input.is_action_just_pressed('Click'):
		posi = get_viewport().get_mouse_position()
	# Add the gravity.
	if not is_on_floor():
		#jugador.animation = "saltar"
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_released('Click') and is_on_floor():
		posf = get_viewport().get_mouse_position()
		vpos = posf - posi
		posmax = max(abs(vpos[0]), abs(vpos[1]))
		if posmax > 125:
			vpos[1] = vpos[1] * 500 / posmax
			vpos[0] = vpos[0] * 500 / posmax
		else:
			vpos *= 4
		velocity = vpos
		print(vpos)
	if is_on_floor():
		velocity.x = move_toward(velocity.x, 0, 25)

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.

	
	#var dir =  velocity.x < 0
	#jugador.flip_h = dir
	move_and_slide()
