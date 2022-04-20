extends KinematicBody2D

signal dead

var velocity = Vector2()
var direction = -1
var speed = 200

func _physics_process(delta: float) -> void:
	if is_on_wall():
		direction = direction * -1
		
	velocity.x = speed * direction
	velocity = move_and_slide(velocity, Vector2.UP)

func _on_Area2D_body_entered(body: Node) -> void:
	emit_signal("dead")
	get_tree().change_scene("res://Scene/game_over.tscn")
