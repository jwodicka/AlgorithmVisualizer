extends Control

var rng: RandomNumberGenerator

@onready var rng_visualizer: RngVisualizer = get_node("%RNGVisualizer")
@onready var rng_initial_state: RNGInitialStatePanel = get_node("%RNGInitialStatePanel")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rng = RandomNumberGenerator.new()
	rng.seed = rng_initial_state.initial_seed
	rng_visualizer.rng = rng


func _on_stepper_panel_stepped_forward() -> void:
	print(rng.randi())
	rng_visualizer.rng = rng
