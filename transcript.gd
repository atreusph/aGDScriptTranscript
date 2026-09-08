#created by default. Necessary for the script to run and be used for your project.
extends Node


""" Hello, World! (2:25)
Note/s:
"""
func _ready():
#a '_ready()' function is called when the node enters the scene for the first time.
	print("Hello, world!")
	#'print("")' is a syntax for displaying text in the console. it also works with printing var values.
	editLabel()
	displayHealth()
pass
#'pass' is a syntax that does nothing. important to avoid error in empty functions or, in my case, organizing your code.

""" Syntax (4:02)
Note's:
	Like Python, GDScript uses indents to figure out where the line of code belongs.
	GDScript's syntaxes are case-sensitive. One wrong capitalization and your code will have an error.
"""

""" Modifying nodes 1.0 (5:00)
Note/s:
	A 'Label' node is created for the output of this section.
	Hovering a property in 'Inspector' dock will display their property name for coding.
	The object you're editing should be under the node of this script. 
	To edit an object property, always put the object name first, then the property. ($Object.property = value)
	To use a function, simply call its name inside of an other function.
"""
func editLabel():
#this is a function to edit the text of the label when called.
	$Label.text = "Hello, world!"
	#for changing the displayed text.
	$Label.modulate = Color.GREEN
	#for changing the text color.
#call this function in '_ready()' for results.
pass

"""Input (6:33)
Note/s:
	For this section, kindly set an input action in Project > Project Settings > Input Map. Name it "actButton1".
	More info about inputs: https://docs.godotengine.org/en/stable/tutorials/inputs/input_examples.html
"""
func _input(event):
#this is a function to change something about the label whenever an event happens.
	if event.is_action_pressed("actButton1"):
		$Label.modulate = Color.YELLOW
	#to change the text color to yellow when you press 'actButton1'.
	if event.is_action_released("actButton1"):
		$Label.modulate = Color.GREEN
	#to change the text color to yellow when you press 'actButton1'.
pass

"""Variables 1.0 (8:38)
Note/s:
	Variables are basically a thing that stores a value. (either strings, integers/floats, or booleans)
	For this section, kindly make another input action named "actButton2" and add the following code in '_input(event)' function:
	if event.is_action_pressed("actButton2"):
		health -= 5
		print(health)
	#this function reduces the value of health every time 'actButton2' is pressed and displays the value after.
		if health <= 0:
			health = 0
			print("ur dead as hell bro u js killed urself")
		elif health < 100:
			print("ouch")
		else:
			print("big boi")
		#displays a message depending on the value of 'health'.
"""
var health = 100
#sets a variable named 'health' and assigns it with a value '100'.
func displayHealth():
#prints the health's value when this function is called.

	health = 40
	#replaces the assigned value
	health = 20 + 30
	#replaces the assigned value with the calculation's result.
	health += 20
	#adds
	health -= 10
	#subtracts
	health *= 4
	#multiplies
	health /= 2
	#divides
	
	print(health)
#call this function in '_ready()' for results.
pass

"""If-statements AKA Conditionals (10:31)
Note/s:
	Basically a condition for something to do a specific thing.
"""
func ifStatements():
#a function to know each and every conditional statements.
	var x = 0; var y = 1
	var result = false
	#created an x and y variable to use the condition statements. the condition's result will be stored in 'result' variable.
	
	if x == y:
	#if 'x' is equal to 'y'
		result = true
	print("equal?: " +result)

	if x > y:
	#if 'x' is greater than 'y'
		result = true
	print("greater?:" +result)

	if x >= y:
	#if 'x' is greater than OR equal to 'y'
		result = true
	print("equal/greater:" +result)
	
	if x != y:
	#if 'x' is NOT equal to 'y'
		result = true
	print("not equal:" +result)
	
	if x < y:
	#if 'x' is less than 'y'
		result = true
	print("less:" +result)
	
	if x <= y:
	#if 'x' is less than OR equal to 'y'
		result = true
	print("equal/less:" +result)
	
	if x < y or x > y:
	#if 'x' is less than 'y' OR 'x' is greater than 'y'
		result = true
	print("less OR greater:" +result)
	
	if x < y and x > y:
	#if 'x' is less than 'y' AND 'x' is greater than 'y'
		result = true
	print("less AND greater:" +result)
pass
