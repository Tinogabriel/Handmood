extends KinematicBody2D

var motion = Vector2()
const UP = Vector2(0,-1)

export var speed = 200
export var jump_force = -900


func _physics_process(delta):
	motion.y += 60
	if Input.is_action_pressed('D'):
		motion.x = speed
		$Sprite.play("Run")
		$Sprite.flip_h = false
	elif Input.is_action_pressed('A'):
		motion.x = -speed
		$Sprite.play("Run")
		$Sprite.flip_h = true
	else:
		motion.x = 0
		$Sprite.play("Idle")
	if is_on_floor():
		if Input.is_action_just_pressed('W'):
			motion.y = jump_force
	motion = move_and_slide(motion,UP)