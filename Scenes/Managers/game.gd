extends Node
class_name Game
## Main node of the game

## Static variable for this class reference
static var ref: Game

## Singleton Check
func _singleton_check() -> void:
	if not ref:
		ref = self
		return
	
	queue_free()

## Current game data
var data: Data

## Data and singleton init
func _enter_tree() -> void:
	_singleton_check()
	data = Data.new()
