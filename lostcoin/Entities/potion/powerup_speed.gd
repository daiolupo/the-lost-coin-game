extends Area2D

var collect = false

func _on_powerup_speed_body_entered(body: Node) -> void:
	if body.get("TYPE") == "Player" && collect == false:
		collect = true
		body.speed = 300
		$Timer.start()
		

func _on_Timer_timeout() -> void:
	get_parent().get_node("Player").speed = 180
	queue_free()
	
	
# video to setup enemy gameover - https://www.youtube.com/watch?v=G-1wosXWsoU
