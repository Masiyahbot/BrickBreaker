extends CanvasLayer

class_name UI

@onready var lifes_label = %LifesLabel
@onready var game_lost_container = $GameLostContainer
@onready var level_won_container = $LevelWonContainer
@onready var game_won = $GameWonContainer2

func set_lifes(lifes: int):
	lifes_label.text = "lifes: %d" % lifes

func game_over():
	$GameLost.play()
	game_lost_container.show()

func _on_game_lost_button_pressed():
	get_tree().reload_current_scene()
 
func on_level_won():
	$LevelPassed.play()
	level_won_container.show()
	
func on_game_won():
	$GameWon.play()
	game_won.show()
	
	

	

func _on_level_won_button_pressed():
	LevelDefinitions.current_level += 1
	get_tree().reload_current_scene()
