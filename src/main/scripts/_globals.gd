extends Node

onready var display:Vector2 = OS.get_window_size()

#Game Related
var _debug:bool = false
var _platform = OS.get_name()

#Load cfg
var config = ConfigFile.new()

func _ready():
	pass

func loadcfg():
	var err = config.load("res://main/config.cfg")
	if err != OK:
		gencfg()
	if config.get_value("game", "debug") == 1:
		_debug = true

func gencfg():
	config.set_value("game", "debug", 0)
	config.save("res://main/config.cfg")
