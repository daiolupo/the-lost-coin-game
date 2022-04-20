extends Area2D

signal finish

func _on_bag_body_entered(body: Node) -> void:
	emit_signal("finish")
	get_tree().change_scene("res://Scene/finish.tscn")
