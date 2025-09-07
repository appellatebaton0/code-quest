extends Component
class_name FreeComponent
var me:Area2D = get_me()

signal got_free

@export var free_delay:float = 0.0
var free_time:float = 0.0
var freeing:bool = false

func free_actor():
	freeing = true
	got_free.emit()

func _process(delta: float) -> void:
	if freeing:
		if free_time >= free_delay:
			actor.queue_free()
		free_time += delta

func _on_area_entered(area: Area2D) -> void:
	free_actor()
func _on_body_entered(body: Node2D) -> void:
	free_actor()

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			free_actor()
