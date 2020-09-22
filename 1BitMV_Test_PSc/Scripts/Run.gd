extends State


func logic():
	.logic()
	if dir==0:
		next_state = _states["Idle"]
	if jump:		
		next_state = _states["Jump"]



