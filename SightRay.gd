extends RayCast2D

signal hit

var rot_dir = -1

var colliding = false

func _ready():
	pass # Replace with function body.
	
func _process(delta):
	see()
	rotation_degrees += rot_dir
	
	if rotation_degrees <= -90:
		rot_dir = 1
	elif rotation_degrees >= 90:
		rot_dir = -1
	else:
		rot_dir = rot_dir
		
		if is_colliding():
			colliding = true
		else:
			colliding = false

func see():
	if is_colliding():
		emit_signal("hit", get_collision_point(), get_collider())
		print(get_collision_point())
		
