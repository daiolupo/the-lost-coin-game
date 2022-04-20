extends Control

func _on_PlayAgain_pressed() -> void:
	get_tree().change_scene("res://Scene/Level1.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
