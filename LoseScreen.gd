extends Node2D

var random_russian = ["Когда он убежал с места преступления, единственное, что пришло в голову Крымеовичу, было то, как все было напряженно, как в походе.",
					"Он чувствовал, как будто все глаза в мире были на него. Как будто он был каким-то зрелищем, не человеком, а лужей вины и крови. Однако, это только подогревало его непрекращающееся желание наброситься.",
					"Как только он понял, что его хозяйка поймала его, Кримеович потерял контроль из-за обильных волнений и страха. В этом вихре эмоций единственное, что он мог собрать, было ‘Я должен ответить на ваш вопрос?",
					"Много вещей о важном мосту. Был мост, но я не читал эту книгу, поэтому пытаюсь составить длинное предложение о мостах. Кажется, идея моста - важная дуга, но, увы, я ничего не знаю.",
					"Все, что он хотел, это просто украсть ее деньги. Но как будто она ловит его во время этого «преступления», как будто он сходит с ума и убивает ее или что-то в этом роде. Теперь она мертва, и он как бы впадает в безумие, но как тот, кто не злится в наши дни. Он был в значительной степени хипстером, потому что он был как сумасшедший, прежде чем это было круто.",
					"ПУТИН ЗНАЕТ, ЧТО ВЫ ДУМАЕТЕ. ПУТИН ЗНАЕТ ВСЕ.",
					"Он беспокоился о том, что его друзья, Распутникоффвич, Глинойоемаов и давнийсложныйрусскийнародныйименемвич, никогда не будут смотреть на него так же.",
					"В этот момент Крымеович не имел ни малейшего представления о том, что реально, и что является побочным эффектом его безумия. Он начал подвергать сомнению все. ‘That Был ли этот человек настоящим? Или эта собака? Всегда ли в углу стоял медведь, сплачиваясь за право носить оружие? О, я надеюсь, что он сможет сохранить свои руки.’",
					"Мы видели, что ты сделал.",
					"Ооф.",
					"День за днем ​​Крымеович ходил в свое местное кафе и ежедневно получал водку. Нет, это было не для того, чтобы подавить его вину, это просто обычная повседневная деятельность для чисто рожденного Русский.",
					
					

					]
var random_english = [	"As he ran away from the scene of the crime, the only thing on Krimeovich’s mind was how everything was intense, just like camping.",
						"He felt as if all the eyes in the world were on him. As if he was some kind of spectacle, not a man, but a pool of guilt and blood. However, this only fueled his incessant desire to lash out.",
						"Once he realized his landlady caught him, Krimeovich lost control due to the copious amounts of anxiety and fear. In this whirlwind of emotions, the only words he could muster were ‘I must axe you a question?'",
						"Something about a bridge and its importance.",
						"All he wanted was to just steal her money. But like she kinda catches him during this ‘crime’ so like he freaks out and like murders her or whatever. Now she's dead and he kind of descends into madness but like who isn’t mad in this day and age. He was pretty much a hipster cause he was like #crazy before it was cool.",
						"PUTIN KNOWS WHAT YOU ARE THINKING. PUTIN KNOWS EVERYTHING.",
						"He was worried that his friends, Rassputnicoffvich, Glinoyoemaov, and longcomplicatedrussianlastnamevich, would never look at him the same again.",
						"At this point Krimeovich had no clue what was real and what a side effect to his madness. He started to question everything. ‘Was that man real? Or that dog? Was there always a bear standing at the corner rallying for the right to bear arms? Oh I hope he gets to keep his arms.’",
						"We saw what you did.",
						"Oof.",
						"Day after day, Krimeovich would go to his local cafe and get his daily shot of vodka. No, it was not to suppress his guilt, it’s just a normal daily activity for a pure born Russian.",
						
					]
func _ready():
	randomize()
	var random_index = randi()%11
	$Background/RussianText.text  = random_russian[random_index]
	$Background/EnglishText.text = random_english[random_index]


func _on_Restart_pressed():
	get_tree().change_scene("res://GameWorld.tscn")
