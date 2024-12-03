extends Panel

onready var FileMenuButton:MenuButton = $FileMenu
onready var HelpMenuButton:MenuButton = $HelpMenu

func _ready():
	FileMenuButton.get_popup().add_item("New")
	FileMenuButton.get_popup().add_item("Open...")
	FileMenuButton.get_popup().add_item("Save")
	FileMenuButton.get_popup().add_item("Save as...")
	FileMenuButton.get_popup().add_item("Exit")
	
	HelpMenuButton.get_popup().add_item("About")
