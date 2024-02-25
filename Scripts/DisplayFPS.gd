extends Label

var sum: float = 0
var updateInterval: float = 0.25

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sum += delta
	
	if sum >= updateInterval:
		text = str("FPS: ", int(1/delta))
		sum -= updateInterval
