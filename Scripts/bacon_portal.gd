extends Sprite2D

<<<<<<< HEAD
@onready var cam = $"../Cam"
@onready var spawnPoint = $"../Cam/spawnPoint"
@onready var player = $"../Player"
=======
@onready var cam = $"../../Cam"
@onready var spawnPoint = $"../../Cam/spawnPoint"
@onready var player = $"../../Player"
@onready var portalAnimator = get_parent()
>>>>>>> parent of 049203b (k)
@onready var target
@onready var current
@onready var pos = position

var speed = 6
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current = cam.position
	target = current
	portalAnimator.play("portal_float");
	#$"../../joe".play("portalFloat")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current = cam.position
	cam.position = current.lerp(target, speed * delta)
	position = pos

func _on_area_2d_body_entered(_body: Node2D) -> void:
	print(spawnPoint)
	pos = position + Vector2(290, 0) 
	target = target + Vector2(290, 0)
	player.position = spawnPoint.position
	
