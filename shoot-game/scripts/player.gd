extends CharacterBody2D

@export var speed := 400.0  # 移动速度

func _physics_process(delta):
	# 获取键盘输入（上下左右/ WASD）
	var input_dir := Input.get_vector("left", "right", "up", "down")
	velocity = input_dir * speed
	
	# 移动
	move_and_slide()
	
	# 限制边界：不出屏幕（根据屏幕大小调整）
	var screen_size = get_viewport_rect().size
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
