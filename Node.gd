extends Node2D

var nro_sort: int
onready var label: Label = get_node("Label2")
onready var lab: Label = get_node("Label")
onready var button1:  Button = get_node("Buttons/Button1")
var nro_1_1: int
onready var button2:  Button = get_node("Buttons/Button2")
var nro_1_2: int
onready var button3:  Button = get_node("Buttons/Button3")
var nro_1_3: int
onready var button4:  Button = get_node("Buttons/Button4")
var nro_1_4: int
onready var button5:  Button = get_node("Buttons/Button5")
var nro_1_5: int
onready var button6:  Button = get_node("Buttons/Button6")
var nro_2_1: int
onready var button7:  Button = get_node("Buttons/Button7")
var nro_2_2: int
onready var button8:  Button = get_node("Buttons/Button8")
var nro_2_3: int
onready var button9:  Button = get_node("Buttons/Button9")
var nro_2_4: int
onready var button10: Button = get_node("Buttons/Button10")
var nro_2_5: int
onready var button11: Button = get_node("Buttons/Button11")
var nro_3_1: int
onready var button12: Button = get_node("Buttons/Button12")
var nro_3_2: int
onready var button13: Button = get_node("Buttons/Button13")
var nro_3_3: int
onready var button14: Button = get_node("Buttons/Button14")
var nro_3_4: int
onready var button15: Button = get_node("Buttons/Button15")
var nro_3_5: int
onready var button16: Button = get_node("Buttons/Button16")
var nro_4_1: int
onready var button17: Button = get_node("Buttons/Button17")
var nro_4_2: int
onready var button18: Button = get_node("Buttons/Button18")
var nro_4_3: int
onready var button19: Button = get_node("Buttons/Button19")
var nro_4_4: int
onready var button20: Button = get_node("Buttons/Button20")
var nro_4_5: int
onready var button21: Button = get_node("Buttons/Button21")
var nro_5_1: int
onready var button22: Button = get_node("Buttons/Button22")
var nro_5_2: int
onready var button23: Button = get_node("Buttons/Button23")
var nro_5_3: int
onready var button24: Button = get_node("Buttons/Button24")
var nro_5_4: int
onready var button25: Button = get_node("Buttons/Button25")
var nro_5_5: int
onready var NovoJogo: Button = get_node("NovoJogo")


var turno: int

func _ready():
	randomize()
	sort_nro()
	turno = 1
	

func sort_nro():
	var nro = sort()
	if verifica(nro):
		if turno != 25:
			turno += 1
			label.text = str(nro_sort)
		else:
			end_game()	
	else:
		sort_nro()
		
func sort() -> int:	
	nro_sort = randi() % 99 + 1
	return nro_sort	
	
func end_game():
	var pontos: int = verifica_linha() + verifica_coluna()
	label.text = str(pontos)
	lab.text = "Total de Pontos:"
	label.add_color_override("font_color", Color(1, 1, 0.5))
	lab.add_color_override("font_color", Color(1, 1, 0.5))
	NovoJogo.disabled = false
	
func verifica_linha() -> int:
	var soma_linhas: int
	if nro_1_1 < nro_1_2 and nro_1_2 < nro_1_3 and nro_1_3 < nro_1_4 and nro_1_4 < nro_1_5:
			soma_linhas = nro_1_1 + nro_1_2 + nro_1_3 + nro_1_4 + nro_1_5
			button1.modulate = Color(255, 0, 0, 255)
			button2.modulate = Color(255, 0, 0, 255)
			button3.modulate = Color(255, 0, 0, 255)
			button4.modulate = Color(255, 0, 0, 255)
			button5.modulate = Color(255, 0, 0, 255)
	if nro_2_1 < nro_1_2 and nro_2_2 < nro_2_3 and nro_2_3 < nro_2_4 and nro_2_4 < nro_2_5:
			soma_linhas = soma_linhas + nro_2_1 + nro_2_2 + nro_2_3 + nro_2_4 + nro_2_5
			button6.modulate = Color(255, 0, 0, 255)
			button7.modulate = Color(255, 0, 0, 255)
			button8.modulate = Color(255, 0, 0, 255)
			button9.modulate = Color(255, 0, 0, 255)
			button10.modulate = Color(255, 0, 0, 255)
	if nro_3_1 < nro_3_2 and nro_3_2 < nro_3_3 and nro_3_3 < nro_3_4 and nro_3_4 < nro_3_5:
			soma_linhas = soma_linhas + nro_3_1 + nro_3_2 + nro_3_3 + nro_3_4 + nro_3_5	
			button11.modulate = Color(255, 0, 0, 255)
			button12.modulate = Color(255, 0, 0, 255)
			button13.modulate = Color(255, 0, 0, 255)
			button14.modulate = Color(255, 0, 0, 255)
			button15.modulate = Color(255, 0, 0, 255)
	if nro_4_1 < nro_4_2 and nro_4_2 < nro_4_3 and nro_4_3 < nro_4_4 and nro_4_4 < nro_4_5:
			soma_linhas = soma_linhas + nro_4_1 + nro_4_2 + nro_4_3 + nro_4_4 + nro_4_5
			button16.modulate = Color(255, 0, 0, 255)
			button17.modulate = Color(255, 0, 0, 255)
			button18.modulate = Color(255, 0, 0, 255)
			button19.modulate = Color(255, 0, 0, 255)
			button20.modulate = Color(255, 0, 0, 255)
	if nro_5_1 < nro_5_2 and nro_5_2 < nro_5_3 and nro_5_3 < nro_5_4 and nro_5_4 < nro_5_5:
			soma_linhas = soma_linhas + nro_5_1 + nro_5_2 + nro_5_3 + nro_5_4 + nro_5_5			
			button21.modulate = Color(255, 0, 0, 255)
			button22.modulate = Color(255, 0, 0, 255)
			button23.modulate = Color(255, 0, 0, 255)
			button24.modulate = Color(255, 0, 0, 255)
			button25.modulate = Color(255, 0, 0, 255)	
	return soma_linhas

func verifica_coluna() -> int:
	var soma_col: int
	if nro_1_1 < nro_2_1 and nro_2_1 < nro_3_1 and nro_3_1 < nro_4_1 and nro_4_1 < nro_5_1:
			soma_col = nro_1_1 + nro_2_1 + nro_3_1 + nro_4_1 + nro_5_1
			if button1.modulate == Color(255, 0, 0, 255):
				button1.modulate = Color(144, 85, 85, 255)
			else:
				button1.modulate = Color(255, 0, 0, 255)
			if button6.modulate == Color(255, 0, 0, 255):
				button6.modulate = Color(144, 85, 85, 255)
			else:
				button6.modulate = Color(255, 0, 0, 255)
			if button11.modulate == Color(255, 0, 0, 255):
				button11.modulate = Color(144, 85, 85, 255)
			else:
				button11.modulate = Color(255, 0, 0, 255)
			if button16.modulate == Color(255, 0, 0, 255):
				button16.modulate = Color(144, 85, 85, 255)
			else:
				button16.modulate = Color(255, 0, 0, 255)
			if button21.modulate == Color(255, 0, 0, 255):
				button21.modulate = Color(144, 85, 85, 255)
			else:
				button21.modulate = Color(255, 0, 0, 255)
	if nro_1_2 < nro_2_2 and nro_2_2 < nro_3_2 and nro_3_2 < nro_4_2 and nro_4_2 < nro_5_2:
			soma_col = soma_col + nro_1_2 + nro_2_2 + nro_3_2 + nro_4_2 + nro_5_2
			if button2.modulate == Color(255, 0, 0, 255):
				button2.modulate = Color(144, 85, 85, 255)
			else:
				button2.modulate = Color(255, 0, 0, 255)
			if button7.modulate == Color(255, 0, 0, 255):
				button7.modulate = Color(144, 85, 85, 255)
			else:
				button7.modulate = Color(255, 0, 0, 255)
			if button12.modulate == Color(255, 0, 0, 255):
				button12.modulate = Color(144, 85, 85, 255)
			else:
				button12.modulate = Color(255, 0, 0, 255)
			if button17.modulate == Color(255, 0, 0, 255):
				button17.modulate = Color(144, 85, 85, 255)
			else:
				button17.modulate = Color(255, 0, 0, 255)
			if button22.modulate == Color(255, 0, 0, 255):
				button22.modulate = Color(144, 85, 85, 255)
			else:
				button22.modulate = Color(255, 0, 0, 255)
	if nro_1_3 < nro_2_3 and nro_2_3 < nro_3_3 and nro_3_3 < nro_4_3 and nro_4_3 < nro_5_3:
			soma_col = soma_col + nro_1_3 + nro_2_3 + nro_3_3 + nro_4_3 + nro_5_3	
			if button3.modulate == Color(255, 0, 0, 255):
				button3.modulate = Color(144, 85, 85, 255)
			else:
				button3.modulate = Color(255, 0, 0, 255)
			if button8.modulate == Color(255, 0, 0, 255):
				button8.modulate = Color(144, 85, 85, 255)
			else:
				button8.modulate = Color(255, 0, 0, 255)
			if button13.modulate == Color(255, 0, 0, 255):
				button13.modulate = Color(144, 85, 85, 255)
			else:
				button13.modulate = Color(255, 0, 0, 255)
			if button18.modulate == Color(255, 0, 0, 255):
				button18.modulate = Color(144, 85, 85, 255)
			else:
				button18.modulate = Color(255, 0, 0, 255)
			if button23.modulate == Color(255, 0, 0, 255):
				button23.modulate = Color(144, 85, 85, 255)
			else:
				button23.modulate = Color(255, 0, 0, 255)
	if nro_1_4 < nro_2_4 and nro_2_4 < nro_3_4 and nro_3_4 < nro_4_4 and nro_4_4 < nro_5_4:
			soma_col = soma_col + nro_1_4 + nro_2_4 + nro_3_4 + nro_4_4 + nro_5_4
			if button4.modulate == Color(255, 0, 0, 255):
				button4.modulate = Color(144, 85, 85, 255)
			else:
				button4.modulate = Color(255, 0, 0, 255)
			if button9.modulate == Color(255, 0, 0, 255):
				button9.modulate = Color(144, 85, 85, 255)
			else:
				button9.modulate = Color(255, 0, 0, 255)
			if button14.modulate == Color(255, 0, 0, 255):
				button14.modulate = Color(144, 85, 85, 255)
			else:
				button14.modulate = Color(255, 0, 0, 255)
			if button19.modulate == Color(255, 0, 0, 255):
				button19.modulate = Color(144, 85, 85, 255)
			else:
				button19.modulate = Color(255, 0, 0, 255)
			if button24.modulate == Color(255, 0, 0, 255):
				button24.modulate = Color(144, 85, 85, 255)
			else:
				button24.modulate = Color(255, 0, 0, 255)
	if nro_1_5 < nro_2_5 and nro_2_5 < nro_3_5 and nro_3_5 < nro_4_5 and nro_4_5 < nro_5_5:
			soma_col = soma_col + nro_1_5 + nro_2_5 + nro_3_5 + nro_4_5 + nro_5_5			
			if button5.modulate == Color(255, 0, 0, 255):
				button5.modulate = Color(144, 85, 85, 255)
			else:
				button5.modulate = Color(255, 0, 0, 255)
			if button10.modulate == Color(255, 0, 0, 255):
				button10.modulate = Color(144, 85, 85, 255)
			else:
				button10.modulate = Color(255, 0, 0, 255)
			if button15.modulate == Color(255, 0, 0, 255):
				button15.modulate = Color(144, 85, 85, 255)
			else:
				button15.modulate = Color(255, 0, 0, 255)
			if button20.modulate == Color(255, 0, 0, 255):
				button20.modulate = Color(144, 85, 85, 255)
			else:
				button20.modulate = Color(255, 0, 0, 255)
			if button25.modulate == Color(255, 0, 0, 255):
				button25.modulate = Color(144, 85, 85, 255)
			else:
				button25.modulate = Color(255, 0, 0, 255)	
	return soma_col	

func verifica(nro: int) -> bool:
	if button1.text == str(nro):
		return false
	if button2.text == str(nro):
		return false
	if button3.text == str(nro):
		return false
	if button4.text == str(nro):
		return false
	if button5.text == str(nro):
		return false
	if button6.text == str(nro):
		return false
	if button7.text == str(nro):
		return false
	if button8.text == str(nro):
		return false
	if button9.text == str(nro):
		return false
	if button10.text == str(nro):
		return false
	if button11.text == str(nro):
		return false
	if button12.text == str(nro):
		return false
	if button13.text == str(nro):
		return false
	if button14.text == str(nro):
		return false
	if button15.text == str(nro):
		return false
	if button16.text == str(nro):
		return false
	if button17.text == str(nro):
		return false
	if button18.text == str(nro):
		return false
	if button19.text == str(nro):
		return false
	if button20.text == str(nro):
		return false
	if button21.text == str(nro):
		return false
	if button22.text == str(nro):
		return false
	if button23.text == str(nro):
		return false
	if button24.text == str(nro):
		return false
	if button25.text == str(nro):
		return false
			
	return true

func _on_Button_pressed():
	button1.text = label.text
	nro_1_1 = int(label.text)
	sort_nro()
	button1.disabled = true

func _on_Button2_pressed():
	button2.text = label.text
	nro_1_2 = int(label.text)
	sort_nro()
	button2.disabled = true

func _on_Button3_pressed():
	button3.text = label.text
	nro_1_3 = int(label.text)
	sort_nro()
	button3.disabled = true
	
func _on_Button4_pressed():
	button4.text = label.text
	nro_1_4 = int(label.text)
	sort_nro()
	button4.disabled = true

func _on_Button5_pressed():
	button5.text = label.text
	nro_1_5 = int(label.text)
	sort_nro()
	button5.disabled = true

func _on_Button6_pressed():
	button6.text = label.text
	nro_2_1 = int(label.text)
	sort_nro()
	button6.disabled = true

func _on_Button7_pressed():
	button7.text = label.text
	nro_2_2 = int(label.text)
	sort_nro()
	button7.disabled = true

func _on_Button8_pressed():
	button8.text = label.text
	nro_2_3 = int(label.text)
	sort_nro()
	button8.disabled = true


func _on_Button9_pressed():
	button9.text = label.text
	nro_2_4 = int(label.text)
	sort_nro()
	button9.disabled = true


func _on_Button10_pressed():
	button10.text = label.text
	nro_2_5 = int(label.text)
	sort_nro()
	button10.disabled = true


func _on_Button11_pressed():
	button11.text = label.text
	nro_3_1 = int(label.text)
	sort_nro()
	button11.disabled = true

func _on_Button12_pressed():
	button12.text = label.text
	nro_3_2 = int(label.text)
	sort_nro()
	button12.disabled = true


func _on_Button13_pressed():
	button13.text = label.text
	nro_3_3 = int(label.text)
	sort_nro()
	button13.disabled = true


func _on_Button14_pressed():
	button14.text = label.text
	nro_3_4 = int(label.text)
	sort_nro()
	button14.disabled = true
	
func _on_Button15_pressed():
	button15.text = label.text
	nro_3_5 = int(label.text)
	sort_nro()
	button15.disabled = true

func _on_Button16_pressed():
	button16.text = label.text
	nro_4_1 = int(label.text)
	sort_nro()
	button16.disabled = true


func _on_Button17_pressed():
	button17.text = label.text
	nro_4_2 = int(label.text)
	sort_nro()
	button17.disabled = true

func _on_Button18_pressed():
	button18.text = label.text
	nro_4_3 = int(label.text)
	sort_nro()
	button18.disabled = true


func _on_Button19_pressed():
	button19.text = label.text
	nro_4_4 = int(label.text)
	sort_nro()
	button19.disabled = true


func _on_Button20_pressed():
	button20.text = label.text
	nro_4_5 = int(label.text)
	sort_nro()
	button20.disabled = true


func _on_Button21_pressed():
	button21.text = label.text
	nro_5_1 = int(label.text)
	sort_nro()
	button21.disabled = true

func _on_Button22_pressed():
	button22.text = label.text
	nro_5_2 = int(label.text)
	sort_nro()
	button22.disabled = true

func _on_Button23_pressed():
	button23.text = label.text
	nro_5_3 = int(label.text)
	sort_nro()
	button23.disabled = true

func _on_Button24_pressed():
	button24.text = label.text
	nro_5_4 = int(label.text)
	sort_nro()
	button24.disabled = true


func _on_Button25_pressed():
	button25.text = label.text
	nro_5_5 = int(label.text)
	sort_nro()
	button25.disabled = true



func _on_Sair_pressed():
	pass

	
func _on_NovoJogo_pressed():
	get_tree().reload_current_scene()
