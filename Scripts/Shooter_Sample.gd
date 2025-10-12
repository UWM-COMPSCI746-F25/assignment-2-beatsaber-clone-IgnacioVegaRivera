extends Node3D

@onready var shooty_thing = load("res://3D_Scenes/BeatShooter.tscn")

func _on_timer_timeout() -> void:
		print("Clicking Trigger")
		var instance = shooty_thing.instantiate()
		instance.dir = global_basis.z
		get_tree().root.add_child(instance)
		instance.global_position = global_position
	#pass # Replace with function body.


#func blockPasser():
	#print("function tried")
	#var check = 1
	#var time_lag = 0;
	#while(check == 1):
		#if time_lag > 15:
			#print("Clicking Trigger")
			#var instance = shooty_thing.instantiate()
			#instance.dir = global_basis.z * -1
			#get_tree().root.add_child(instance)
			#instance.global_position = global_position
			#time_lag = 0
			##add_child(instance)
		#else:
			#++time_lag






#
#func _on_button_pressed(name):
	#if name == "trigger_click":
		#print("Clicking Trigger")
		#var instance = shooty_thing.instantiate()
		#instance.dir = global_basis.z * -1
		#get_tree().root.add_child(instance)
		#instance.global_position = global_position
		##add_child(instance)
	
