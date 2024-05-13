extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.nivell1_enable:
		$Cerradura.hide()
	elif Global.nivell2_enable:
		$Cerradura2.hide()
	elif Global.nivell3_enable:
		$Cerradura3.hide()
