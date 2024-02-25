extends Label

var sum: int = 0
var sumTime: float = 0
var updateInterval: float = 0.25

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sum += 1
	sumTime += delta
	
	if sumTime >= updateInterval:
		text = str("FPS: ", int(sum / sumTime))
		sum = 0
		sumTime = 0
