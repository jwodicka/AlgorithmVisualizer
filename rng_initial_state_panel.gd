class_name RNGInitialStatePanel
extends PanelContainer

@export var initial_seed: int = 0

@onready var seed_line_edit: LineEdit = get_node("%SeedLineEdit")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	seed_line_edit.text = str(initial_seed)
