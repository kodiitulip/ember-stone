extends Control
class_name UserInterface
## User Interface Manager

enum Views { ## Enum of view Types
	PROTOTYPE_GENERATOR, ## The passive generator prototype
	PROTOTYPE_CLICKER, ## The clicker prototype
}

## Reference of the main view o the GUI
@onready var main_view: Control = %MainView
## Variable that dictates wich view the interface will start on
@export var initial_view: Views = Views.PROTOTYPE_CLICKER

## Array of [PrototypeView]s as child of the [member UserInterface.main_view]
var view_interfaces: Array[PrototypeView] = []


func _ready() -> void:
	for child: Node in main_view.get_children():
		if not child is PrototypeView:
			continue
		view_interfaces.append(child)
	_chanage_navigation_view(initial_view)

## Helper method to change the views on [member UserInterface.view_interfaces],
## takes a [param requested_view] as a parameter 
func _chanage_navigation_view(requested_view: Views) -> void:
	for view: PrototypeView in view_interfaces:
		view.visible = view.view == requested_view


func _on_generator_link_pressed() -> void:
	_chanage_navigation_view(Views.PROTOTYPE_GENERATOR)


func _on_clicker_link_pressed() -> void:
	_chanage_navigation_view(Views.PROTOTYPE_CLICKER)
