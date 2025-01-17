class_name RngVisualizer
extends PanelContainer

var _rng: RandomNumberGenerator
var rng: RandomNumberGenerator:
	get:
		return _rng
	set(value):
		_rng = value
		render_data()

@onready var seed_value: Label = get_node("%SeedValue")
@onready var state_value: Label = get_node("%StateValue")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if rng != null:
		render_data()
		
func render_data() -> void:
	if rng != null:
		seed_value.text = str(rng.seed)
		state_value.text = str(rng.state)
