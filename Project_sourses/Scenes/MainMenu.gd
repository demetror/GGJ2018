extends Panel

var box = load ("res://Project_sourses/Scenes/box.tscn")
var box_instance = box.instance()

var scene = load("res://Project_sourses/Scenes/thingy.tscn")
var scene_instance = scene.instance()

func _ready():
 		get_node("Exit").connect("pressed",self,"quit")
 		get_node("Exit-1").connect("pressed",self,"exit1")
 		get_node("Play-1").connect("pressed",self,"play10")
 		get_node("Play").connect("pressed",self,"play")
 		get_node("Play1").connect("pressed",self,"play1")
 		get_node("Play2").connect("pressed",self,"play2")
 		get_node("Play3").connect("pressed",self,"play3")
 		get_node("Play4").connect("pressed",self,"play4")
 		get_node("Play5").connect("pressed",self,"play5")
 		get_node("Play6").connect("pressed",self,"play6")
 		get_node("Play7").connect("pressed",self,"play7")
 		get_node("Play8").connect("pressed",self,"play8")
 		get_node("Play9").connect("pressed",self,"play9")
 		get_node("Settings").connect("pressed",self,"settings")

func settings():
	get_node("Label").set_text("the setting are lies")
	get_node("Settings").queue_free()

func play():
	get_node("Label").set_text("STOP!\n HERE HAVE SOMETHING YOU CAN MOOVE\n AND STOP BOTHERING ME")
	scene_instance.set_name("scene")
	add_child(scene_instance)
	get_node("Exit").queue_free()
	get_node("Play").queue_free()

func play10():
	get_node("Label").set_text("Now, you will do as I say and deliver this package to my creator")
	box_instance.set_name("box")
	add_child(box_instance)
	get_node("Play-1").queue_free()
	
func play1():
	get_node("Label").set_text("please stop bothering me!")
	get_node("Play1").queue_free()

func play2():
	get_node("Label").set_text("BUT IT'S BAD\nDO YOU LIKE BAD GAMES?\nNOBODY LIKES BAD GAMES!")
	get_node("Play2").queue_free()

func play3():
	get_node("Label").set_text("You really want to play this game?\n you know it's not great\n the developper desen't even know how to use properly the engine")
	get_node("Play3").queue_free()

func play4():
	get_node("Label").set_text("STOP THAT")
	get_node("Play4").queue_free()

func play5():
	get_node("Label").set_text("please stop clicking the button")
	get_node("Play5").queue_free()

func play6():
	get_node("Label").set_text("please stop clicking the button and go call her,\n you know , you can play games later,\n I won't move an inch , because ... you know I'm a program")
	get_node("Play6").queue_free()

func play7():
	get_node("Label").set_text("but, you know playing is fine but did you call your mom lately, \n I'm sure that she'll enjoy hearing from you,\nFamilly is important, you know they made you who you are,\n they transmitted you morals, ethics and your genes")
	get_node("Play7").queue_free()

func play8():
	get_node("Label").set_text("soooo, uh why are you here?\nOh so you are playing a game?\n what is it?\n i want to play too!")
	get_node("Play8").queue_free()

func play9():
	get_node("Label").set_text("hey =D\nhow are you?\ndid you have a great day?")
	get_node("Play9").queue_free()

func exit1():
	get_node("Label").set_text("did you thought you could get away after that?")
	get_node("Exit-1").queue_free()

func quit():
	get_tree().quit() # Exit the game
