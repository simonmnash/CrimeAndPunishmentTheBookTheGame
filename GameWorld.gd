extends Node2D

var base_eye_resource = load("res://Eye.tscn")

func _ready():
	#var new_eye = base_eye_resource.instance()
	#self.add_child(new_eye)
	pass

func start_game_loss():
	#Placeholder for loss screen/restart
	get_tree().change_scene("res://LoseScreen.tscn")