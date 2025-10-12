extends Area3D





func _on_body_entered(body: Node3D) -> void:
	print("Block entered")
	queue_free()
	print("Node has been freed: ",body.name)
	#pass # Replace with function body.


#func _on_area_entered(area: Area3D) -> void:
	#print("Block entered")
	#queue_free()
	#print("Node has been freed: ",body.name)
	#pass # Replace with function body.
	#pass # Replace with function body.
