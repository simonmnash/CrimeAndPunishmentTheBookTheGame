extends AudioStreamPlayer

var timer = 0
var vol = [0,-100,-100]

var t1 = 250
var t2 = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	timer = 0

	play(0)
	$Tetris2.play()
	$Tetris3.play()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timer += 0.1
	print(timer)
	
	for i in range(3):
		AudioServer.set_bus_volume_db(i+1, vol[i])
	
	if timer > t1 and timer < t2 and AudioServer.get_bus_volume_db(2) < 0:
		vol[1]	+= 0.5
		if AudioServer.get_bus_volume_db(1) > -100:
			vol[0]	-= 0.1
			
	
	if timer > t2 and AudioServer.get_bus_volume_db(3) < 0:
		vol[2]	+= 0.5
		if AudioServer.get_bus_volume_db(2) > -100:
			vol[1]	-= 0.1
	
	pass
