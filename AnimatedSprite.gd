extends AnimatedSprite

export var psychedelic = false

var colorLerp = 0
var colorLerpInc = 0.05
var colors = [Color(1,1,1), Color(rand_range(0,1),rand_range(0,1),rand_range(0,1))]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if psychedelic == false:
		pass
	else:
		if colorLerp < 1:
			colorLerp += colorLerpInc
		else:
			colors[0] = colors[1]
			colors[1] = Color(rand_range(0,1),rand_range(0,1),rand_range(0,1))
			colorLerp = 0
			
		set_modulate(colors[0].linear_interpolate(colors[1], colorLerp))
