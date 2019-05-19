extends TileMap


func _ready():
	
	#APARTMENT FLOOR
	for i in range(-100,100):
		for j in range(-20,30):
			# hacky way to generate 0 five times as often as 1
			# to make sure most floorboards use the non-broken texture
			set_cell(i, j, round(rand_range(0.0, 0.6)))
	
	#CITY STREET
	for i in range(100,200):
		for j in range(-20,30):
			# hacky way to generate 0 five times as often as 1
			# to make sure most floorboards use the non-broken texture
			set_cell(i, j, round(rand_range(2.0, 2.6)))

