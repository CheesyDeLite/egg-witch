extends CharacterBody2D

@export var base_speed: int
@export var rotation_speed: int
var speed: int
const GRAVITY = 900

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	speed = base_speed


func _physics_process(delta: float) -> void:
	movement(delta)


func movement(delta):
	var direction = Input.get_axis("left", "right")
	velocity.x = direction * speed
	rotation_degrees += direction * rotation_speed
	velocity.y += GRAVITY * delta
	move_and_slide()
