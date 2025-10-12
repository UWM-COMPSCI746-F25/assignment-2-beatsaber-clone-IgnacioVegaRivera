extends Node3D

@export var dir = Vector3(0,0,1)
@export var speed = 2

func _process(delta):
	global_position += dir * (speed*delta) 


func _on_area_3d_area_entered(area: Area3D) -> void:
	print("Block has been removed")
	queue_free()
