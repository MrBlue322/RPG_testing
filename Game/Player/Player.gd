extends CharacterBody2D


const SPEED = 500.0
const JUMP_VELOCITY = -1020.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


	
#reverse velocity if you hit a wall
var v_M = 1
func _hit_wall():
	if is_on_wall():
		v_M = -1
	if is_on_floor():
		v_M = 1
		
	
		
#movement
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta 
		
	# Handle Jump.
	#>project>project settings>Input Map to accses grouped keyboard layouts
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY
 
	# Get the input direction and handle the movement/deceleration.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED * v_M
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	_hit_wall()
	

	move_and_slide()
