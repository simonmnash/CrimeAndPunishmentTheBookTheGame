extends Node2D


func _ready():
	pass # Replace with function body.

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()

func _on_CreditsRect_pressed():
	$Credits.hide()


func _on_READ_pressed():
	get_tree().change_scene("res://GameWorld.tscn")


func _on_CREDITS_pressed():
	$Credits.show()