extends GraphEdit

onready var panel:Panel = $"../toolbar"

func _ready():
	panel.rect_size = Vector2(_globals.display[0], panel.rect_size[1])
	rect_size = Vector2(_globals.display[0], _globals.display[1] - panel.rect_size[1])
	rect_position = Vector2(rect_position[0], rect_position[1] + panel.rect_size[1])
	set_process(true)

func _process(_delta):
	if rect_size != _globals.display:
		rect_size = _globals.display
		panel.rect_size = Vector2(_globals.display[0], panel.rect_size[1])
		print(panel.rect_size)
