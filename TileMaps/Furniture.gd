extends TileMap

export var randomize_furniture = true

func _ready():
	# For testing purposes, we can create levels with randomized furniture.
	if randomize_furniture:
		
		#APARTMENT, SUPER DENSE
		for i in range(200, 2000):
			for j in range(-20,30):
				randomize()
				# Most tiles shouldn't be furniture.
				if round(rand_range(0.0, 0.51)) > 0:
					set_cell(i, j, 0)
				
