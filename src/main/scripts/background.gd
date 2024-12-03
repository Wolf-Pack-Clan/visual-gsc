extends Sprite

func _ready():
	scale = Vector2(_globals.display[0] / 32, _globals.display[1] / 32)
	set_process(true)

func _process(_delta):
	if OS.get_window_size() != _globals.display:
		_globals.display = OS.get_window_size()
		print(_globals.display)
		scale = Vector2(_globals.display[0] / 32, _globals.display[1] / 32)
