extends Node2D
class_name StateMachine

var current_state 
var _states: Dictionary={}
#onready var parent: Node=get_parent() as KinematicBody2D


#func _set_current_state(state: String) -> void:
#	pass

func _ready():
		yield(get_parent(),"ready")
		#Player is like a Marionet for the States
		#Pulling the strings
		#!!!Ask this in a forum
		#Animation player is otherwise not ready to use for idle state

#FSM Code
#Assign all neede Vars to Children
		for state in get_children():
			_states[state.name] = state 
		for state in get_children():	
			state._states = self._states
			state.pl = get_parent()


		current_state=get_node(_states["Idle"].get_path())
		enter_state()

		#Is there a way to avoid this?	
		#Wait until Player Node is ready

func _physics_process(delta):
	current_state.logic()
	#Plus needs to look if a transition is taking place
	if current_state.get_transition() != null:
	#	pass
		change_state(current_state.get_transition())


#What to do if a state is entered
func enter_state() -> void:
	current_state.enter()

func change_state(nextState: State) -> void:
	current_state = nextState
	enter_state()




