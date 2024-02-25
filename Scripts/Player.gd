extends CharacterBody2D

var speed = 300

func _ready():
	print('Character loaded')

func _process(delta):
	position.x += speed * delta
