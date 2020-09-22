extends Node

#Have to reopen Project in Editor to take effect
class_name State
#onready var anmp = owner.get_parent().get_node("AnimationPlayer")
#onready var pl: Node = owner.get_parent() as KinematicBody2D   
var pl: KinematicBody2D   
#var fsm : StateMachine 
onready var _states: Dictionary={}
var jump : bool
var dir: float 
var next_state:State



func enter() -> void:
	next_state=null
	pl._animation(name)
	#####We need a Fall state!!!


func logic() -> void:
	 get_input()
	 pl.move_player()

#If certain Input we go to transition
func get_transition() -> State:
	return next_state

func get_input() -> void:
	jump = Input.is_action_just_pressed('jump')	
	dir =  Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	pl.calc_physic(dir)



