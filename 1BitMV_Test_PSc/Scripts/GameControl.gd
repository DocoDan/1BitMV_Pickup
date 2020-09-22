extends Node2D
onready var animPlayer = get_node("AnimationPlayer") as AnimationPlayer
onready var timer = get_node("Timer") as Timer


func _on_RocketPickup_PlayerPicked():
	timer.start()
	animPlayer.play("BlinkScreen")



func _on_AnimationPlayer_animation_finished():
	pass


func _on_Timer_timeout():
	#Its better if you can control the length of the animation
	animPlayer.stop(true) 

