extends Area2D

@export var speed := 400.0
var direction := Vector2.UP  # 默认向上

func _physics_process(delta):
	position += direction * speed * delta
	# 超出屏幕销毁
	if position.y < -100 or position.y > get_viewport_rect().size.y + 100:
		queue_free()
