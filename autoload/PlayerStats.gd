extends Node

const MINHP = 0
const MAXHP = 40
const STARTHP = 6
var currHP setget setCurrHP
var maxHP setget setMaxHP

func setCurrHP(hp :int):
	if (hp > maxHP):
		hp = maxHP
	if (hp < MINHP):
		hp = MINHP
	currHP = hp

func setMaxHP(hp :int):
	if (hp > MAXHP):
		hp = MAXHP
	if (hp < STARTHP):
		hp = STARTHP
	maxHP = hp
