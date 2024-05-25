class_name BlockEffect
extends Effect

var amount := 0 # Amount of block made from effect


func execute(targets: Array[Node]) -> void:
	for target in targets:
		if not target:
			continue
		if target is Enemy or target is Player:
			target.stats.block += amount
			SFXPlayer.play(sound)

