extends PrototypeView
class_name PrototypeGenerator
## Passive generator prototype, creating 1 stardust every second

## Reference to the [Button] node
@onready var button: Button = $Button
## Reference to the [Label] node
@onready var label: Label = $Label
## reference to the [Timer] node
@onready var timer: Timer = $Timer

## Variable keeping track of the stardust amount,
## setter calls [method PrototypeGenerator._update_label]
var stardust: int = 0:
	set(value):
		stardust = value
		_update_label()


func _ready() -> void:
	_update_label()

## Method to update the [member Label.text]
func _update_label() -> void:
	label.text = "Stardust : {value}".format({"value": stardust})

## Method to create 1 stardust
func _create_stardust() -> void:
	stardust += 1


func _on_button_pressed() -> void:
	timer.start()
	button.disabled = true


func _on_timer_timeout() -> void:
	_create_stardust()
