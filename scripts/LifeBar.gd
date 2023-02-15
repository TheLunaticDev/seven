extends VBoxContainer

var emptyHeart = preload("res://assets/empty-heart.png")
var damagedHeart = preload("res://assets/damaged-heart.png")
var divineHeart = preload("res://assets/divine-heart.png")
var fullHeart = preload("res://assets/full-heart.png")
var halfHeart = preload("res://assets/half-heart.png")
var poisonedEmptyHeart = preload("res://assets/poisoned-empty-heart.png")
var poisonedFullHeart = preload("res://assets/poisoned-full-heart.png")
var poisonedHalfHeart = preload("res://assets/poisoned-half-heart.png")

enum MODES {empty, half, full}

var mode = MODES.full

func _ready() -> void:
	PlayerStats.maxHP = -23
	PlayerStats.currHP = PlayerStats.maxHP

func _process(delta: float) -> void:
	var hearts = PlayerStats.currHP / 2
	$Row1/heart1.texture = fullHeart
