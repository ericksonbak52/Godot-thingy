extends Area2D 

@onready var cam = $"../../Cam"
@onready var spawnPoint = $"../../Cam/spawnPoint"
@onready var player = $"../../Player"
@onready var target
@onready var current
@onready var pos = position

var speed = 6
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current = cam.position
	target = current
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current = cam.position
	cam.position = current.lerp(target, speed * delta)
	position = pos

#when things on mask layer wo hit the thing
func _on_body_shape_entered(_body_rid: RID, _body: Node2D, _body_shape_index: int, _local_shape_index: int) -> void:
	print(spawnPoint)
	pos = position + Vector2(290, 0) 
	target = target + Vector2(290, 0)
	player.position = spawnPoint.position
