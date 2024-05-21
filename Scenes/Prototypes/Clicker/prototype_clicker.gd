extends PrototypeView
class_name PrototypeClicker
## A clicker prototype to create stardust with every click

## Reference to a [Label] node displaying the amount of stardust
@onready var label: Label = $Label

## Variable keeping track of the amount of stardust,
## setter call [method ProtottypeClicker._update_label]
@export var stardust: int = 0:
	set(value):
		stardust = value
		_update_label()

func _ready() -> void:
	_update_label()

## Function to create 1 stardust
func _create_one_stardust() -> void:
	stardust += 1

func _on_button_pressed() -> void:
	_create_one_stardust()

## Function to update the [Label] node
func _update_label() -> void:
	label.text = "Stardust: {value}".format({"value": stardust})
