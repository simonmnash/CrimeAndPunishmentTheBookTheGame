extends AudioStreamPlayer

var vol = [0,-100,-100]

var alexpos

# Called when the node enters the scene tree for the first time.
func _ready():


	play(0)
	$Tetris2.play()
	$Tetris3.play()
	alexpos = get_node("/root/GameWorld/AlexanderCrimovich").position
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	alexpos = get_node("/root/GameWorld/AlexanderCrimovich").position

	for i in range(3):
		AudioServer.set_bus_volume_db(i+1, vol[i])
	
	if alexpos.x > 1500 and alexpos.x < 3100:
		if AudioServer.get_bus_volume_db(2) < 0:
			vol[1]	+= 0.5
		if AudioServer.get_bus_volume_db(1) > -100:
			vol[0]	-= 0.1
			
	
	if alexpos.x > 3100:
		if AudioServer.get_bus_volume_db(3) < 0:
			vol[2]	+= 0.5
		if AudioServer.get_bus_volume_db(2) > -100:
			vol[1]	-= 0.1
	
	pass
