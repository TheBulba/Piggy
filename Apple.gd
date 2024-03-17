extends Area2D


func _on_body_entered(body):
	
	if body.has_method("player_method"):
		queue_free()
		
		World.score += 1
		World.update(World.score)
