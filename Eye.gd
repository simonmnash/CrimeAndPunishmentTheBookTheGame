extends AnimatedSprite

var rot_dir = PI/4
var looking_vector = Vector2(100, 100)
var has_spotted_alex = false
var eye_is_closed = false

func _ready():
	pass

func _physics_process(delta):
	#$Line2D.rotate(rot_dir*delta)
	if eye_is_closed:
		$Line2D.hide()
	else: 
		$Line2D.show() 
		looking_vector = looking_vector.rotated(delta * rot_dir)
		var space_state = get_world_2d().direct_space_state
		# use global coordinates, not local to node
		var result = space_state.intersect_ray(global_position, global_position+looking_vector)
		# Set the line length based on the result of the ray intersection.
		if result:
			if result.collider.name == "AlexanderCrimovich" and has_spotted_alex == false:
				get_parent().alexander_has_been_spotted_by(self)
				print("Hit at point: ", result.position)
				has_spotted_alex = true
			$Line2D.points = [0,  result.position - position]
		else:
			$Line2D.points = [0,  looking_vector]


func _on_Eyeblinker_timeout():
	if eye_is_closed:
		self.frame = 0  
		eye_is_closed = false
	else:
		eye_is_closed = true
		self.frame = 3 
		
	
