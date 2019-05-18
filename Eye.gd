extends AnimatedSprite

var point_array = []
# Called when the node enters the scene tree for the first time.
func _ready():
	point_array = [position, $SightRay.get_collision_point()]
	$SightLine.position = Vector2(-position.x, -position.y)
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	play()
	
	if $SightRay.is_colliding():
		print(point_array)
		point_array = [position, $SightRay.get_collision_point()-(position)]
	
	$SightLine.set_points(point_array)

	