extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	var movementInput = Input.get_vector("moveLeft", "moveRight", "moveUp", "moveDown")
	
	move_and_collide(movementInput * SPEED * delta)
