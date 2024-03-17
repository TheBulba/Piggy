extends CharacterBody2D

func player_method():
	pass


func _physics_process(delta):
	var x = Input.get_axis("Left", "Right")
	var y = Input.get_axis("Up", "Down")
	
	var speed = 100
	
	velocity.x = x * speed 
	velocity.y = y * speed
	
	if velocity != Vector2(0,0):
		$AnimationPlayer.play("Run")
	else:
		$AnimationPlayer.play("Idle")
		
	if velocity.x < 0:
		$Sprite2D.flip_h = true
	elif velocity.x > 0:
		$Sprite2D.flip_h = false
	
	move_and_slide()
