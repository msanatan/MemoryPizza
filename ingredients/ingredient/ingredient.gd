class_name Ingredient
extends Area2D

@export var texture: Texture2D
@export var ingredient_name: String
@export var is_playing: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.texture = texture


func _on_input_event(viewport, event, shape_idx):
	if is_playing and Input.is_action_just_pressed("click"):
		print("Sprite touched")