extends CharacterBody2D

const SPEED = 300.0

func _process(delta):
	var movementInput = Input.get_vector("moveLeft", "moveRight", "moveUp", "moveDown")
	position += movementInput * SPEED * delta
