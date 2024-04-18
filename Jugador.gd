extends CharacterBody2D

@onready var jugador = $"."

const SPEED = 300.0
const JUMP_VELOCITY = -780.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 2500


func _physics_process(delta):
	"""
	if velocity.x != 0:
		jugador.animation = "correr"
	else:
		jugador.animation = "default"
	"""
	# Add the gravity.
	if not is_on_floor():
		#jugador.animation = "saltar"
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("click") and is_on_floor():
		var direction := Vector2(45, 67)
		if direction:
			velocity.x = direction * SPEED
			velocity.y = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, 20)
			velocity.y = move_toward(velocity.x, 0, 20)

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.

	
	var dir =  velocity.x < 0
	jugador.flip_h = dir
	move_and_slide()
	
func saltotrampolin():
	velocity.y = -1000

func cinta():
	var direction = Input.get_axis("l", "r")
	velocity.x += direction * 700
