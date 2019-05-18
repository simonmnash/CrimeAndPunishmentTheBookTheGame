extends Area2D

export var speed = 16;

var center = Vector2(128,128)

func _ready():
    start()
	
func start():
	position = center

func _process(delta):
	var velocity = Vector2()

	if Input.is_action_pressed("up"):
		velocity.y -= 1 
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("right"):
		velocity.x +=1
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
		
	position += velocity * delta
	
	
		