extends Camera2D

export var camera_speed = 50

onready var player = get_parent().get_node("AlexanderCrimovich")

func _ready():
	pass # Replace with function body.

func _process(delta):
	self.position.x = self.position.x + (camera_speed * delta)



func _on_Area2D_body_entered(body):
	# The camera's parent is the root game node, so we can use
	# self.get_parent().function to trigger things in the main game
	# without connecting a signal to the main game.
	if body==player:
		self.get_parent().start_game_loss()
		


