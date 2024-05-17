extends AudioStreamPlayer



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.music and !playing:
		playing = true
	elif !Global.music:
		playing = false
