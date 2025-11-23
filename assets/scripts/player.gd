extends CharacterBody2D

@export var base_speed: int
var speed: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	speed = base_speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	movement()


func movement():
	var direction = Input.get_axis("left", "right")
	velocity.x = direction * speed
	move_and_slide()
