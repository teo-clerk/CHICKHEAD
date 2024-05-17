extends AudioStreamPlayer

@export var plays :int
var n = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.music and !playing and n != plays:
		playing = true
		n += 1
	elif !Global.music:
		playing = false
