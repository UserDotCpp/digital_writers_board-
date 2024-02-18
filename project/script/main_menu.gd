extends Node2D


func _on_new_board_pressed():
	$move_vfx.play()
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_load_board_pressed():
	$move_vfx.play()
	$"container/working_stuff/LOAD BOARD".hide()
	$container/working_stuff/loader.show()


func _on_load_pressed():
	$move_vfx.play()
	var file = $container/working_stuff/loader/path.text
	
	if !FileAccess.file_exists(file):
		$error_vfx.play()
		return
	get_tree().change_scene_to_file(file)


func _on_exit_pressed():
	$move_vfx.play()
	get_tree().quit()

func _on_new_board_mouse_entered():
	$place_vfx.play()

func _on_load_board_mouse_entered():
	$place_vfx.play()

func _on_exit_mouse_entered():
	$place_vfx.play()

func _on_load_mouse_entered():
	$place_vfx.play()
