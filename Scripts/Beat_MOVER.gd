extends Node3D

@export var dir = Vector3(0,0,1)
@export var speed = 2
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
	##print(blockID)
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
		emit_signal("blockMakeSound")
		#print(deleteID)
		#player.play()
		#DJ.play()
		queue_free()
	elif area.name == "Area3DLeft":
		print("LEFT --- Hit by the Left saber")
		#beatSound.play()
		emit_signal("blockMakeSound")
		#print(deleteID)
		#player.play()
		#DJ.play()
		queue_free()
	elif area.name == "Area3DBack":
		print("BEHIND --- Deleted by the dead Zone behind the user")
		queue_free()	
		
	#print("Block has been removed")
	#queue_free()
