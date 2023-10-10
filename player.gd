extends Node2D

var speed: float = 10

func _ready():
	print("ready")
func momentum():
	speed += 1
func _process(delta):
	if Input.is_action_pressed("left_t"):
		momentum()
		position.x += -10 * speed * delta
	if Input.is_action_pressed("right_t"):
		position.x += 10 * speed * delta
	if Input.is_action_pressed("up_t"):
		position.y += -10 * speed * delta
	if Input.is_action_pressed("down_t"):
		position.y += 10 * speed * delta
	
