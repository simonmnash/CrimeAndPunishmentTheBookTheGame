extends Node2D


func _ready():
	pass 


func _on_Restart_pressed():
	get_tree().change_scene("res://GameWorld.tscn")
