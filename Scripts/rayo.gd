extends Area2D
var rotacio = 1
var animacio = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	$Timer.start()
	if rotacio == 1:
		rotacio = 0
		$AnimatedSprite2D.play('normal')
		$CollisionShape2D.disabled = true
		
	else:
		rotacio = 1
		$CollisionShape2D.disabled = false
		$AnimatedSprite2D.play('rayo')



func _on_body_entered(body):
	Global.dead = true
