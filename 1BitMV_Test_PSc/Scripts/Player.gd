extends KinematicBody2D
var dir:int
var velocity:Vector2
onready var spr = get_node("Player_Sheet") as Sprite
onready var anim = get_node("AnimationPlayer") as AnimationPlayer

export var run_speed:int=200
export var jump_speed:int=200
var GRAVITY=300

	
func _physics_process(delta):
	#calc_physic(()
	velocity.y += GRAVITY * delta

func _animation(name : String):
		anim.play(name)

func jump()->void:
	#velocity = move_and_slide(velocity,Vector2(0,-1))
	if is_on_floor():
		velocity.y = -jump_speed


func move_player():
	velocity = move_and_slide(velocity,Vector2(0,-1))

func calc_physic(dir: int)->void:

	velocity.x = 0
	velocity.x = dir

	if velocity.x > 0:
		velocity.x += run_speed
		spr.flip_h = false

	if velocity.x < 0:
		velocity.x -= run_speed
		spr.flip_h = true


