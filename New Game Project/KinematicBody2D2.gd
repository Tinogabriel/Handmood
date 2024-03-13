extends KinematicBody2D

var rotation_speed = 180.0

func _ready():
    set_process(true) # This tells Godot to call _process() every frame

func _process(delta):
    if Input.is_key_pressed(KEY_RIGHT):
        set_rot(get_rot() + 90 * angle_direction)