extends AnimatedSprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rot_dir = PI/2

func _ready():
	#$Line2D.points = [global_position - position, global_position - position +Vector2(50, 50)]
	pass

func _physics_process(delta):
	#$Line2D.rotate(rot_dir*delta)
	var space_state = get_world_2d().direct_space_state
	# use global coordinates, not local to node
	var result = space_state.intersect_ray(global_position, global_position+Vector2(100, 100))
	if result:
		print("Hit at point: ", result.position)
		$Line2D.points = (global_position, global_position+Vector2(100, 100))
		$Line2D.show()
