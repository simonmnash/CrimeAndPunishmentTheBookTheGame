extends KinematicBody2D

export var speed = 0.3;

var dashing = false
var center = Vector2(128,128)
var sprite_rotation

onready var cam = get_node("/root/GameWorld/Camera2D")

func _ready():
    start()
	
func start():
	#position = center
	pass

func _process(delta):
	var velocity = Vector2()
	if Input.is_action_just_pressed("dash"):
		self.dashing = true
	
	if not dashing:
		# If we are not currently dashing, accept input as normal.
		if Input.is_action_pressed("up"):
			velocity.y = -1 
		if Input.is_action_pressed("down"):
			velocity.y = 1
		if Input.is_action_pressed("left"):
			velocity.x = -1
		if Input.is_action_pressed("right"):
			velocity.x = 1
		
		if velocity.length() > 0:
			velocity = velocity.normalized() * speed
			$AnimatedSprite.play()
		else:
			$AnimatedSprite.stop()
	else:
		# If we are currently dashing, set the velocity to a constant
		# and rotate the sprite a bit.
		velocity.x = 5
		$AnimatedSprite.rotate(delta*50)
		$BloodSpray.show()
	
	# After we know what the velocity should be, call the move_and_collide function
	# to attempt to move the character, and return a collision object if we hit something
	# when moving.
	var collision = move_and_collide(velocity, false)
	# If there was no collision, we don't need to do anything.
	if collision == null:
		pass
	# Otherwise, move the character back so they aren't colliding anymore,
	# and set dashing to false.
	else:
		move_and_collide(-velocity.normalized(), false)
		self.dashing = false
		$AnimatedSprite.rotation=0
		$BloodSpray.hide()