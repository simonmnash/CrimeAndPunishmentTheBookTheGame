extends Node2D


func _ready():
	pass # Replace with function body.


func _on_CreditsRect_pressed():
	$Credits.hide()


func _on_READ_pressed():
	get_tree().change_scene("res://GameWorld.tscn")


func _on_CREDITS_pressed():
	$Credits.show()