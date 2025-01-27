extends Sprite2D

@onready var cam = $"../../Camera2D"
@onready var target
@onready var current
@onready var portalAnimator = $"../../portalAnimator"
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

func _on_area_2d_body_entered(body: Node2D) -> void:
	pos = position + Vector2(290, 0)
	target = target + Vector2(290, 0)
	print("target good")
