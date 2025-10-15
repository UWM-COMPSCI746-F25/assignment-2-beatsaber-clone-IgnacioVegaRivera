extends Node3D

@onready var shooty_thing = load("res://3D_Scenes/BeatShooter.tscn")
@onready var masterDJ = get_node("SoundMaster")
var baseZ = -8.58
var baseX = 0.0
var baseY = 1.443
#@onready var masterDJ = get_node("SoundMaster")
#@onready var masterDJ = $"Midtom-95156"
#@onready var masterDJ = $"../../CSGBox3D/SoundMaster"
#@onready var masterDJ = $"../SoundMaster"

func _on_timer_timeout() -> void:
		#print("Clicking Trigger")
		var instance = shooty_thing.instantiate()
		instance.dir = global_basis.z
		
		instance.blockMakeSound.connect(musicTime)
		
		get_tree().root.add_child(instance)
		instance.global_position = global_position
		instance.transform.origin.x = randf_range(-0.5, 0.5)
		instance.transform.origin.y = randf_range(0.943, 1.943)
	#pass # Replace with function body.

func musicTime():
	masterDJ.play()
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
			#add_child(instance)
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
		#add_child(instance)
	
