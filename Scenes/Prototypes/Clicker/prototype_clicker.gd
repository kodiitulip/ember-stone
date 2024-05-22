extends PrototypeView
class_name PrototypeClicker
## A clicker prototype to create stardust with every click

func _process(_delta: float) -> void:
	_update_label()


func _on_button_pressed() -> void:
	_create_one_stardust()
