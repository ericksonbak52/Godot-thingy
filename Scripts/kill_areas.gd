extends Area2D

@onready var player = $"../Player"
@onready var spawn = $"../Cam/spawnPoint"
	
func _on_body_entered(body: Node2D) -> void:
	death()

func death():
	print("dead")
	player.velocity = Vector2.ZERO
	player.global_position = spawn.global_position
