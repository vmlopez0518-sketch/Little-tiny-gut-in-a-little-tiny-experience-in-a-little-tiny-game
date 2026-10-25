extends Sprite2D

@export var detection_distance := 250.0

var _player: Node2D


func _ready() -> void:
	_player = get_tree().current_scene.get_node_or_null("CharacterBody2D")
	visible = false


func _process(_delta: float) -> void:
	if _player == null:
		return
	visible = global_position.distance_to(_player.global_position) <= detection_distance
