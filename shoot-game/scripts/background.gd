extends Node2D

@export var scroll_speed := 100.0

func _process(delta):
	for bg in [$Bg1, $Bg2]:
		bg.position.y += scroll_speed * delta
		if bg.position.y >= get_viewport_rect().size.y:
			bg.position.y = -get_viewport_rect().size.y
