extends Label
var fps_display
var touch_index

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_text("Platform:" + _globals._platform + ", Debug:" + str(_globals._debug))
	set_scale(Vector2(0.9,0.9))
	fps_display = Label.new()
	fps_display.rect_position = Vector2(0,12)
	add_child(fps_display)
	set_process(true)

func _process(_delta):
	fps_display.set_text("FPS:" + String(Engine.get_frames_per_second()))
