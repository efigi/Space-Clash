class_name BulletLite
extends KinematicBody2D

export var speed = 30
var velocity : Vector2
var direction : Vector2 = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func setup(dir,pos):
	global_position = pos
	global_position.y -= 2
	direction = dir
	velocity = speed * direction

func _physics_process(delta):
	move_and_slide(velocity)
