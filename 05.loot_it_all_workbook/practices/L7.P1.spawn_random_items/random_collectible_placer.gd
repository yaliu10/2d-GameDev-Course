extends Node2D

var collectible_scenes := [
	preload("res://practices/L7.P1.spawn_random_items/energy_pack.tscn"),
	preload("res://practices/L7.P1.spawn_random_items/coin.tscn")
]


func _ready() -> void:
	get_node("Timer").timeout.connect(_on_timer_timeout)


func _on_timer_timeout() -> void:
	var random_collectible_scenes: PackedScene = collectible_scenes.pick_random()
	var collectible_instance := random_collectible_scenes.instantiate()
	add_child(collectible_instance)
