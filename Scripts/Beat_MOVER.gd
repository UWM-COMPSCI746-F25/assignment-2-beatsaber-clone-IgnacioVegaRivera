extends Node3D

@export var dir = Vector3(0,0,1)
@export var speed = 2

@onready var childBox: CSGBox3D = $beatBlockProj
@onready var purpleMat = preload("res://Materials/leftBlockMat.tres")
@onready var greenMat = preload("res://Materials/rightBlockMat.tres")

#var callBeatID = childBox.
#@onready var beatSound = $"Midtom-95156"
#@onready var player = $"CSGBox3D/AudioStreamPlayer3D"
#@onready var DJ = $XROrigin3D/SoundMaster
signal blockMakeSound
#@onready var blockChild = get_node("beatBlockProj")


#func _ready() -> void:
	#var blockChild = get_node("CSGBox3D")
	#var deleteID = blockChild.blockID
	#var blockID = randi() % 2 #ID=0 means its a purple block, ID=1 means its a green block
	#var purplBlock = preload("res://Materials/leftBlockMat.tres")
	#var greenBlock = preload("res://Materials/rightBlockMat.tres")
	##print(blockID)
	#if blockID == 0:
		#self.material = purplBlock
	#elif blockID == 1:
		#self.material = greenBlock

func _process(delta):
	#var blockID = randi() % 2 #ID=0 means its a purple block, ID=1 means its a green block
	#var purplBlock = preload("res://Materials/leftBlockMat.tres")
	#var greenBlock = preload("res://Materials/rightBlockMat.tres")
	#print(blockID)
	#if blockID == 0:
		#self.material = purplBlock
	#elif blockID == 1:
		#self.material = greenBlock
	global_position += dir * (speed*delta) 


func _on_area_3d_area_entered(area: Area3D) -> void:
	#var deleteID = blockChild.blockID
	if area.name == "Area3DRight":
		print("RIGHT --- Hit by the RIGHT saber")
		#beatSound.play()
		#if callBeatID == 0:
		if childBox.material_override == greenMat:
			print("00000000000000000000000000000000000000========Purple")
			emit_signal("blockMakeSound")
			queue_free()
		#emit_signal("blockMakeSound")
		#print(deleteID)
		#player.play()
		#DJ.play()
		#print("right")
		#print(childBox.material_override.resource_name)
		#print("right")
		#queue_free()
	elif area.name == "Area3DLeft":
		print("LEFT --- Hit by the Left saber")
		#beatSound.play()
		#if callBeatID == 0:
		if childBox.material_override == purpleMat:
			print("1111111111111111111111111111111111111111========Green")
			emit_signal("blockMakeSound")
			queue_free()
		#emit_signal("blockMakeSound")
		#print(deleteID)
		#player.play()
		#DJ.play()
		#print("left")
		#print(childBox.material_override.resource_name)
		#print("left")
		#queue_free()
	elif area.name == "Area3DBack":		
		print("BEHIND --- Deleted by the dead Zone behind the user")
		#print(childBox.material_override.resource_name)
		#print("BEHIND")
		queue_free()	
		
	#print("Block has been removed")
	#queue_free()
