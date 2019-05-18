extends TileMap

export var randomize_furniture = true

func _ready():
	# For testing purposes, we can create levels with randomized furniture.
	if randomize_furniture:
		for i in range(-500,1000):
			for j in range(-20,30):
				# Most tiles shouldn't be furniture.
				if round(rand_range(0.0, 0.55)) > 0:
					set_cell(i, j, randi()%17)
