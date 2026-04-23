extends CharacterBody2D

@export var speed := 150.0  # 向下移动速度

func _physics_process(delta):
	velocity = Vector2(0, speed)
	move_and_slide()
	
	# 超出屏幕底部则销毁
	if position.y > get_viewport_rect().size.y + 100:
		queue_free()
