extends CharacterBody2D


@export var speed = 700
var Health = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed*delta)
	
	if get_parent().get_progress_ratio() == 1:
		queue_free()
		
	if Health <= 0:
		get_parent().get_parent().queue_free()
