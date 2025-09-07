extends Component
class_name HitboxComponent
var me:Area2D = get_me()

signal did_damage

func hurt(hurtee:Actor):
	did_damage.emit()


func _on_area_entered(area: Area2D) -> void:
	var component = area # Abstract type
	if component is HurtboxComponent:
		hurt(component.actor)
