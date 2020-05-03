extends Node

signal health
var timer = Timer.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(timer)
	timer.set_autostart(true)
	timer.set_wait_time(2)
	timer.connect("timeout", self, "test")
	timer.start()

func test():
	emit_signal("health", 200)

