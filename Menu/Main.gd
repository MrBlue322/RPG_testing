"""
Line Marks:
	#LTEST: Needed for code testing, delete for game development
	#TODO: Code needs to be impliminted here
	#FIX: Code is producing in an error, and needs to be fixed
	#PlaceHolder: Value or function is temporarily replaced untill TODO is finished

"""

extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Start of Program: ")      #LTEST

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Game/Enviorment.tscn")


func _on_quit_pressed():
	get_tree().quit()


func _on_finished_pressed():
	get_tree().change_scene_to_file("res://Menu/Main.tscn")
