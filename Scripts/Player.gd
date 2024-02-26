extends CharacterBody2D

var speed = 300
var travelDistance = 600
var windowCenter: Vector2
var direction = 1

func _ready():
	var windowSize: Vector2 = get_viewport_rect().size
	windowCenter = Vector2(windowSize.x / 2, windowSize.y / 2)
	position = windowCenter

func _process(delta):
	position.x += direction * speed * delta
	
	if (position.x - windowCenter.x) * direction >= travelDistance:
		direction *= -1
