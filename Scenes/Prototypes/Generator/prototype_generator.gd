extends PrototypeView
class_name PrototypeGenerator
## Passive generator prototype, creating 1 stardust every second

## Reference to the [Button] node
@onready var button: Button = $Button
## reference to the [Timer] node
@onready var timer: Timer = $Timer


func _process(_delta: float) -> void:
	_update_label()

## Triggers when the button is pressed
func _on_button_pressed() -> void:
	timer.start()
	button.disabled = true

## Triggers every [Timer] timeout
func _on_timer_timeout() -> void:
	_create_one_stardust()
