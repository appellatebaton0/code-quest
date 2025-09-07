extends Node
class_name Component

## The actor the component belongs to
@onready var actor:Actor = get_parent() if get_parent() is Actor else null

## Get the self as a Variant, for typecasting that
## bypasses faulty Intelli-sense
func get_me():
	return self
