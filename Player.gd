extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const WALK_SPEED = 100
var velocity 
# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello World")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -WALK_SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  WALK_SPEED
	else:
		velocity.x = 0
	move_and_slide(velocity, Vector2(0, -1))
	pass
