extends CSGBox3D

func _ready() -> void:
	var blockID = randi() % 2 #ID=0 means its a purple block, ID=1 means its a green block
	var purplBlock = preload("res://Materials/leftBlockMat.tres")
	var greenBlock = preload("res://Materials/rightBlockMat.tres")
	#print(blockID)
	if blockID == 0:
		print("Chaning to purple")
		material_override = purplBlock
		#set_collision_layer_value(0, false)
		#set_collision_layer_value(1, true)
		#set_collision_layer_value(2, false)
		#set_layer_mask_value(3, true)
		#set_material(purplBlock)
		#self.material = purplBlock
	elif blockID == 1:
		print("Changing to green")
		material_override = greenBlock
		#set_collision_layer_value(0, false)
		#set_collision_layer_value(1, false)
		#set_collision_layer_value(2, true)
		#set_layer_mask_value(4, true)
		#set_material(greenBlock)
		#self.material = greenBlock
