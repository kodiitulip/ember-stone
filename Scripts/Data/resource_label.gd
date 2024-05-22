extends Label
class_name LabelResource
## Display the amount of resource available

## Variable with the resource name
@export var resource_name: String = "Resource"

## Updates the text to the resource name and the given [param value]
func _update_text(value: Variant) -> void:
	text = "{name}: {value}".format(
		{
			"name": resource_name,
			"value": value
		}
	)
