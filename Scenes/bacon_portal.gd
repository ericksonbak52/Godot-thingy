extends Sprite2D

@onready var cam = $"../../Camera2D"
@onready var target
@onready var current
var speed
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current = cam.position
	target = current
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current = cam.position
	speed = 6
	cam.position = current.lerp(target, speed * delta)

func _on_area_2d_body_entered(body: Node2D) -> void:
	target = target + Vector2(290, 0)
	print("target good")
	#queue_free()
