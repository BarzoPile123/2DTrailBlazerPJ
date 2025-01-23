class_name MainMenu
extends Control
 
@onready var startB = $Button as Button
@onready var htpB = $Button2 as Button 
@onready var exitB = $Button3 as Button
@export var StartTheGame = preload("res://Game.tscn") as PackedScene
func _ready():
	startB.button_down.connect(_on_start_down)
	exitB.button_down.connect(_on_exit_down)
	
	
func _on_start_down() -> void:
	get_tree().change_scene_to_packed(StartTheGame)
	
func _on_exit_down() -> void:
	get_tree().quit()
