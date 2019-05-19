extends TileMap

export var randomize_furniture = true
var y_limit = 5
var y_amt = 0

func _ready():
	# For testing purposes, we can create levels with randomized furniture.
	if randomize_furniture:
		
		#APARTMENT, SUPER DENSE
		for i in range(-100, 100):
			y_amt = 0
			for j in range(-20,30):
				randomize()
				# Most tiles shouldn't be furniture.
				if y_amt < y_limit and round(rand_range(0.0, (0.575 - (i*0.000025)))) > 0:
					set_cell(i, j, randi()%20)
					y_amt+=1
