extends Control
class_name PrototypeView
## Parent class for the PrototypeViews

signal resource_created()

## Reference of this view type
@export var view_type: UserInterface.Views
## Reference to the view's resource [Label]
@export var label: Label

## Function to create 1 stardust
func _create_one_stardust() -> void:
	Game.ref.data.stardust += 1
	resource_created.emit()

## Function to update the [Label] node
func _update_label() -> void:
	if not label:
		print_rich("[color=red] ■ there is no resource label assigned in this view![/color]")
		return
	label.text = "Stardust: {value}".format({"value": Game.ref.data.stardust})
