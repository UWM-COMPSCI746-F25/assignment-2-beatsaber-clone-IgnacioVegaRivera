extends XRController3D

#func _ready() -> void:
	#button_pressed.connect(changeSaber)
#
#func changeSaber(id):
	#if button_pressed == "ax_button":
		#print("hello")

@onready var childCylinder: CSGCylinder3D = $CSGCylinder3D
#@onready var childArea3D: Area3D = $CSGCylinder3D/Area3DLeft
var fullSaber = Vector3(0.1,1.1,0.1)
var shrinkSaber = Vector3(0.001,0.001,0.001)
var isSaber = 0 #0 means full height, 1 means shrinked height
var curY = 0.019
var goneY = -100

func _enter_tree() -> void:
	button_pressed.connect(_on_button_pressed)

func _on_button_pressed(button_name: String):
	if button_name == "ax_button":
		if isSaber == 0:
			print("hello")
			childCylinder.scale = shrinkSaber
			childCylinder.position.y = goneY
			#childArea3D.set_collision_layer_bit(0,false)
			#childCylinder.set_collision_mask_value(0,false)
			#childCylinder.set_collision_mask_value(1,false)
			isSaber = 1
		elif isSaber == 1:
			print("hello")
			childCylinder.scale = fullSaber
			childCylinder.position.y = curY
			isSaber = 0
			#childCylinder.set_collision_mask_value(0,true)
			#childCylinder.set_collision_mask_value(1,true)
