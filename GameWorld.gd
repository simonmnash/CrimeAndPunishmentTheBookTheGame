extends Node2D

var base_eye_resource = load("res://Eye.tscn")

func _ready():
	#var new_eye = base_eye_resource.instance()
	#self.add_child(new_eye)
	pass

func start_game_loss():
	#Placeholder for loss screen/restart
	get_tree().change_scene("res://LoseScreen.tscn")
	
# Randomly starting to use type annotation move than halfway through the project.
# 
func alexander_has_been_spotted_by(spotting_eye: AnimatedSprite):
	$Camera2D.camera_speed += 1