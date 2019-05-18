extends Node2D


func _ready():
	pass # Replace with function body.

func start_game_loss():
	#Placeholder for loss screen/restart
	get_tree().change_scene("res://LoseScreen.tscn")