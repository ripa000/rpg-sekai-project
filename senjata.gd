extends Node2D

func _process(delta):
	var pivot = Vector2(0, 0) 
	var mouse = get_global_mouse_position()
	var angle = (mouse - pivot).angle()
	var radius = (global_position - pivot).length()
	global_position = pivot + Vector2(radius, 0).rotated(angle)
	look_at(mouse)
