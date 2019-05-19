extends Node2D

var base_eye_resource = load("res://Eye.tscn")

func _ready():
	#var new_eye = base_eye_resource.instance()
	#self.add_child(new_eye)
	pass
	
func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene("res://GameWorld.tscn")
	

func start_game_loss():
	#Placeholder for loss screen/restart
	get_tree().change_scene("res://LoseScreen.tscn")
	
# Randomly starting to use type annotation move than halfway through the project.
# 
func alexander_has_been_spotted_by(spotting_eye: AnimatedSprite):
	$Camera2D.camera_speed += 10
	$Camera2D/Area2D.position += Vector2(10,0)
	randomize()
	$EyeAudio.stream = $EyeAudio.audioArray[rand_range(0,5)]
	$EyeAudio.play()
	

func spawn_new_enemy_eye_ahead_of_player_location(player_node: KinematicBody2D):
	var new_eye = base_eye_resource.instance()
	new_eye.position = Vector2(player_node.position.x + 200, rand_range(-200, 200))
	self.add_child_below_node($Floor, new_eye)