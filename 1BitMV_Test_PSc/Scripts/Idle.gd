extends State


func logic():
	.logic()
	if pl.velocity.x!=0:
		#Continue here with Transition to Run
		next_state = _states["Run"]
	if jump:		
		next_state = _states["Jump"]

		
