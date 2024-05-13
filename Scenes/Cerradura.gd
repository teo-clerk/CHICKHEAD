extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.nivell1_enable:
		$Cerradura.hide()
	if Global.nivell2_enable:
		$Cerradura2.hide()
	if Global.nivell3_enable:
		$Cerradura3.hide()
