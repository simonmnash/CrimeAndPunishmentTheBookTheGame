extends TileMap

export var randomize_furniture = true

func _ready():
	# For testing purposes, we can create levels with randomized furniture.
	if randomize_furniture:
		
		#CITY, LESS DENSE
		for i in range(100,200):
			for j in range(-20,30):
				# Most tiles shouldn't be furniture.
				if round(rand_range(0.0, 0.51)) > 0:
					set_cell(i, j, randi()%8)
				
