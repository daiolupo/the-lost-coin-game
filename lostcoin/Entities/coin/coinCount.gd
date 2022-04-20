extends Label

var coins = 0


func _on_coin_body_entered(body: Node) -> void:
	coins += 1
	text = str(coins)
	pass


func _on_Portal_body_entered(body: Node) -> void:
	if coins == 6:
		if Globalautoload.level < 3:
			Globalautoload.level += 1
			get_tree().change_scene("res://Scene/Level" + str(Globalautoload.level) + ".tscn")
	pass
