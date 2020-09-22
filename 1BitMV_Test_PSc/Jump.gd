extends State




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func logic()-> void:
	.logic()
	#Change to previous state instead
	if pl.is_on_floor():
		next_state=_states["Idle"]

func enter()-> void:
	pl.jump()
	.enter()
