extends CharacterBody2D
@onready var salto = $salto



# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 980
var posi :Vector2
var posf :Vector2
var vpos :Vector2
var posmax :int
var dir :bool
var mort
var preparant_moviment := false

func _physics_process(delta):
	"""
	if velocity.x != 0:
		jugador.animation = "correr"
	else:
		jugador.animation = "default"
	"""
	if position.y > 1000:
		Global.dead = true 
	
	mort = Global.dead
	
	if mort == true:
		Global.dead = false
		Global.monedes = 0
		Global.claus = 0
		get_tree().change_scene_to_file("res://Scenes/Derrota.tscn")
	
	if Input.is_action_just_pressed('Click'):
		preparant_moviment = true
		posi = get_viewport().get_mouse_position()
	# Add the gravity.
	
	if Input.is_action_pressed('espai') and is_on_floor() == false and velocity.y >= 0:
		gravity = 300
		if Global.cap == true or Global.cap_prov == true:
			$AnimatedSprite2D.play('volant cap')
		else:
			$AnimatedSprite2D.play('planejant')
	elif is_on_floor() == false:
		gravity = 980
		if Global.cap == true or Global.cap_prov == true:
			$AnimatedSprite2D.play('disparat cap')
		else:
			$AnimatedSprite2D.play('movense_volant')
	else:
		if Global.cap == true or Global.cap_prov == true:
			$AnimatedSprite2D.play('quiet cap')
		else:
			$AnimatedSprite2D.play('normal')
	
	if not is_on_floor():
		#jugador.animation = "saltar"
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_released('Click') and is_on_floor():
		if preparant_moviment:
			posf = get_viewport().get_mouse_position()
			vpos = posf - posi
			posmax = max(abs(vpos[0]), abs(vpos[1]))
			if posmax > 125:
				vpos[1] = (vpos[1] * 500 / posmax)
				vpos[0] = (vpos[0] * 500 / posmax)
			else:
				vpos *= 4
			velocity = vpos
			preparant_moviment = false
	
	if is_on_floor():
		velocity.x = move_toward(velocity.x, 0, 40)
		salto.play()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
	elif velocity.x > 0:
		$AnimatedSprite2D.flip_h = false
	
	move_and_slide()
	
