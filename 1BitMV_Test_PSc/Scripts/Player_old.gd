extends KinematicBody2D

var velocity: Vector2
var UP= Vector2(0,-1)
var run_speed = 5 * 16

onready var Sprite = $Player_Sheet
onready var AnimP = $AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.x= 0
	get_input()
	velocity = move_and_slide(velocity,UP)


func get_input():
	var left = Input.is_action_pressed("ui_left")
	var right = Input.is_action_pressed("ui_right")
	
	if left:
		velocity.x -= run_speed
		Sprite.flip_h = true
		AnimP.play("Run")
	elif right:
		velocity.x += run_speed
		Sprite.flip_h = false
		AnimP.play("Run")
	else:	
		AnimP.play("Idle")
