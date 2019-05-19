extends TileMap

export var randomize_furniture = true

func _ready():
	# For testing purposes, we can create levels with randomized furniture.
	if randomize_furniture:
		
		#APARTMENT, SUPER DENSE
		for i in range(-100, 100):
			for j in range(-20,30):
				randomize()
				# Most tiles shouldn't be furniture.
				if round(rand_range(0.0, (0.575 - (i*0.000025)))) > 0:
					set_cell(i, j, randi()%20)
