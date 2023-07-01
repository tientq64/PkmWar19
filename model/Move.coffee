Move =
	list:
		firePunch:
			type: "fire"
			power: 75
			effectChance: 10
			meta:
				ailmentChance: 10
				ailment: "burn"
				category: "damageAilment"
			acc: 100
			pp: 15
			eff: "10% chance to burn the target"
			flags:
				contact: 1
				protect: 1
				mirror: 1
				punch: 1
		pound:
			power: 40
			acc: 100
			pp: 35
			eff: "No additional effect"
			flags:
				contact: 1
				protect: 1
				mirror: 1
		karateChop:
			type: "fighting"
			power: 50
			meta:
				critRate: 1
			acc: 100
			pp: 25
			eff: "High critical hit ratio"
			flags:
				contact: 1
				protect: 1
				mirror: 1
		doubleSlap:
			power: 15
			meta:
				maxHit: 5
				minHit: 2
			acc: 85
			eff: "Hits 2-5 times in one turn"
			flags:
				contact: 1
				protect: 1
				mirror: 1
		cometPunch:
			power: 18
			meta:
				maxHit: 5
				minHit: 2
			acc: 85
			pp: 15
			eff: "Hits 2-5 times in one turn"
			flags:
				contact: 1
				protect: 1
				mirror: 1
				punch: 1
		payDay:
			power: 40
			acc: 100
			pp: 20
			eff: "Scatters coins"
			flags:
				protect: 1
				mirror: 1
		guillotine:
			meta:
				category: "ohko"
			acc: 30
			pp: 5
			eff: "OHKOs the target. Fails if user is a lower level"
			flags:
				contact: 1
				protect: 1
				mirror: 1
		megaPunch:
			power: 80
			acc: 85
			pp: 20
			eff: "No additional effect"
			flags:
				contact: 1
				protect: 1
				mirror: 1
				punch: 1
		swordsDance:
			kind: "status"
			statChanges:
				atk: 2
			target: "user"
			meta:
				category: "netGoodStats"
			pp: 20
			eff: "Raises the user's Attack by 2"
			flags:
				snatch: 1
				dance: 1
		# vineWhip:
		# 	type: "grass"
		# 	power: 45
		# 	acc: 100
		# 	pp: 25
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# fly:
		# 	type: "flying"
		# 	power: 90
		# 	acc: 95
		# 	pp: 15
		# 	eff: "Flies up on first turn, then strikes the next turn"
		# 	flags:
		# 		contact: 1
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		# 		gravity: 1
		# 		distance: 1
		# slam:
		# 	power: 80
		# 	acc: 75
		# 	pp: 20
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# doubleKick:
		# 	type: "fighting"
		# 	power: 30
		# 	meta:
		# 		maxHit: 2
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Hits 2 times in one turn"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		thunderPunch:
			type: "electric"
			power: 75
			effectChance: 10
			meta:
				ailmentChance: 10
				ailment: "paralysis"
				category: "damageAilment"
			acc: 100
			pp: 15
			eff: "10% chance to paralyze the target"
			flags:
				contact: 1
				protect: 1
				mirror: 1
				punch: 1
		icePunch:
			type: "ice"
			power: 75
			effectChance: 10
			meta:
				ailmentChance: 10
				ailment: "freeze"
				category: "damageAilment"
			acc: 100
			pp: 15
			eff: "10% chance to freeze the target"
			flags:
				contact: 1
				protect: 1
				mirror: 1
				punch: 1
		# cut:
		# 	power: 50
		# 	acc: 95
		# 	pp: 30
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# bind:
		# 	power: 15
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "trap"
		# 		category: "damageAilment"
		# 		maxTurn: 6
		# 		minTurn: 5
		# 	acc: 85
		# 	pp: 20
		# 	eff: "Traps and damages the target for 4-5 turns"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		scratch:
			power: 40
			acc: 100
			pp: 35
			eff: "No additional effect"
			flags:
				contact: 1
				protect: 1
				mirror: 1
		# stomp:
		# 	power: 65
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 100
		# 	pp: 20
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# whirlwind:
		# 	kind: "status"
		# 	priority: -6
		# 	meta:
		# 		category: "forceSwitch"
		# 	pp: 20
		# 	eff: "Forces the target to switch to a random ally"
		# 	flags:
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# 		mystery: 1
		# wingAttack:
		# 	type: "flying"
		# 	power: 60
		# 	acc: 100
		# 	pp: 35
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# rollingKick:
		# 	type: "fighting"
		# 	power: 60
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 85
		# 	pp: 15
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# jumpKick:
		# 	type: "fighting"
		# 	power: 100
		# 	acc: 95
		# 	eff: "User is hurt by 50% of its max HP if it misses"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		gravity: 1
		# poisonSting:
		# 	type: "poison"
		# 	power: 15
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 35
		# 	eff: "30% chance to poison the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# gust:
		# 	type: "flying"
		# 	kind: "special"
		# 	power: 40
		# 	acc: 100
		# 	pp: 35
		# 	eff: "Power doubles during Fly, Bounce, and Sky Drop"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		growl:
			kind: "status"
			statChanges:
				atk: -1
			target: "allOpponents"
			meta:
				category: "netGoodStats"
			acc: 100
			pp: 40
			eff: "Lowers the foe(s) Attack by 1"
			flags:
				protect: 1
				reflectable: 1
				mirror: 1
				sound: 1
				authentic: 1
		# supersonic:
		# 	kind: "status"
		# 	meta:
		# 		ailment: "confusion"
		# 		category: "ailment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 55
		# 	pp: 20
		# 	eff: "Confuses the target"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# disable:
		# 	kind: "status"
		# 	meta:
		# 		ailment: "disable"
		# 		category: "unique"
		# 		maxTurn: 4
		# 		minTurn: 4
		# 	acc: 100
		# 	pp: 20
		# 	eff: "For 4 turns, disables the target's last move used"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# razorWind:
		# 	kind: "special"
		# 	power: 80
		# 	target: "allOpponents"
		# 	meta:
		# 		critRate: 1
		# 	acc: 100
		# 	eff: "Charges, then hits foe(s) turn 2. High crit ratio"
		# 	flags:
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		tackle:
			power: 40
			acc: 100
			pp: 35
			eff: "No additional effect"
			flags:
				contact: 1
				protect: 1
				mirror: 1
		# mist:
		# 	type: "ice"
		# 	kind: "status"
		# 	target: "usersField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 30
		# 	eff: "For 5 turns, protects user's party from stat drops"
		# 	flags:
		# 		snatch: 1
		psybeam:
			type: "psychic"
			kind: "special"
			power: 65
			effectChance: 10
			meta:
				ailmentChance: 10
				ailment: "confusion"
				category: "damageAilment"
				maxTurn: 5
				minTurn: 2
			acc: 100
			pp: 20
			eff: "10% chance to confuse the target"
			flags:
				protect: 1
				mirror: 1
		bodySlam:
			power: 85
			effectChance: 30
			meta:
				ailmentChance: 30
				ailment: "paralysis"
				category: "damageAilment"
			acc: 100
			pp: 15
			eff: "30% chance to paralyze the target"
			flags:
				contact: 1
				protect: 1
				mirror: 1
				nonsky: 1
		auroraBeam:
			type: "ice"
			kind: "special"
			power: 65
			effectChance: 10
			statChanges:
				atk: -1
			meta:
				statChance: 10
				category: "damageLower"
			acc: 100
			pp: 20
			eff: "10% chance to lower the foe's Attack by 1"
			flags:
				protect: 1
				mirror: 1
		# thrash:
		# 	power: 120
		# 	target: "randomOpponent"
		# 	acc: 100
		# 	eff: "Lasts 2-3 turns. Confuses the user afterwards"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# viceGrip:
		# 	power: 55
		# 	acc: 100
		# 	pp: 30
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# megaKick:
		# 	power: 120
		# 	acc: 75
		# 	pp: 5
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# sonicBoom:
		# 	kind: "special"
		# 	acc: 90
		# 	pp: 20
		# 	eff: "Always does 20 HP of damage"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# petalDance:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 120
		# 	target: "randomOpponent"
		# 	acc: 100
		# 	eff: "Lasts 2-3 turns. Confuses the user afterwards"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		dance: 1
		# hornDrill:
		# 	meta:
		# 		category: "ohko"
		# 	acc: 30
		# 	pp: 5
		# 	eff: "OHKOs the target. Fails if user is a lower level"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# ember:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 40
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 25
		# 	eff: "10% chance to burn the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# bite:
		# 	type: "dark"
		# 	power: 60
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 100
		# 	pp: 25
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		bite: 1
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# surf:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 90
		# 	target: "allOtherPokemon"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Hits adjacent Pokemon. Power doubles on Dive"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		submission:
			type: "fighting"
			power: 80
			meta:
				drain: -25
			acc: 80
			pp: 20
			eff: "Has 1/4 recoil"
			flags:
				contact: 1
				protect: 1
				mirror: 1
		# leechSeed:
		# 	type: "grass"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "leechSeed"
		# 		category: "ailment"
		# 	acc: 90
		# 	eff: "1/8 of target's HP is restored to user every turn"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		leer:
			kind: "status"
			effectChance: 100
			statChanges:
				def: -1
			target: "allOpponents"
			meta:
				statChance: 100
				category: "netGoodStats"
			acc: 100
			pp: 30
			eff: "Lowers the foe(s) Defense by 1"
			flags:
				protect: 1
				reflectable: 1
				mirror: 1
		# doubleEdge:
		# 	text: "Double-Edge"
		# 	power: 120
		# 	meta:
		# 		drain: -33
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Has 33% recoil"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		tailWhip:
			kind: "status"
			statChanges:
				def: -1
			target: "allOpponents"
			meta:
				category: "netGoodStats"
			acc: 100
			pp: 30
			eff: "Lowers the foe(s) Defense by 1"
			flags:
				protect: 1
				reflectable: 1
				mirror: 1
		waterGun:
			type: "water"
			kind: "special"
			power: 40
			acc: 100
			pp: 25
			eff: "No additional effect"
			flags:
				protect: 1
				mirror: 1
		# blizzard:
		# 	type: "ice"
		# 	kind: "special"
		# 	power: 110
		# 	effectChance: 10
		# 	target: "allOpponents"
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "freeze"
		# 		category: "damageAilment"
		# 	acc: 70
		# 	pp: 5
		# 	eff: "10% chance to freeze foe(s). Can't miss in hail"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# poisonPowder:
		# 	type: "poison"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "poison"
		# 		category: "ailment"
		# 	acc: 75
		# 	pp: 35
		# 	eff: "Poisons the target"
		# 	flags:
		# 		powder: 1
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# stringShot:
		# 	type: "bug"
		# 	kind: "status"
		# 	statChanges:
		# 		spe: -2
		# 	target: "allOpponents"
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 95
		# 	pp: 40
		# 	eff: "Lowers the foe(s) Speed by 2"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		bubbleBeam:
			type: "water"
			kind: "special"
			power: 65
			effectChance: 10
			statChanges:
				spe: -1
			meta:
				statChance: 10
				category: "damageLower"
			acc: 100
			pp: 20
			eff: "10% chance to lower the target's Speed by 1"
			flags:
				protect: 1
				mirror: 1
		# megaDrain:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 40
		# 	meta:
		# 		category: "damageHeal"
		# 		drain: 50
		# 	acc: 100
		# 	pp: 15
		# 	eff: "User recovers 50% of the damage dealt"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		heal: 1
		# takeDown:
		# 	power: 90
		# 	meta:
		# 		drain: -25
		# 	acc: 85
		# 	pp: 20
		# 	eff: "Has 1/4 recoil"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# wrap:
		# 	power: 15
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "trap"
		# 		category: "damageAilment"
		# 		maxTurn: 6
		# 		minTurn: 5
		# 	acc: 90
		# 	pp: 20
		# 	eff: "Traps and damages the target for 4-5 turns"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# drillPeck:
		# 	type: "flying"
		# 	power: 80
		# 	acc: 100
		# 	pp: 20
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# pinMissile:
		# 	type: "bug"
		# 	power: 25
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 95
		# 	pp: 20
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# roar:
		# 	kind: "status"
		# 	priority: -6
		# 	meta:
		# 		category: "forceSwitch"
		# 	pp: 20
		# 	eff: "Forces the target to switch to a random ally"
		# 	flags:
		# 		reflectable: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# 		mystery: 1
		# razorLeaf:
		# 	type: "grass"
		# 	power: 55
		# 	target: "allOpponents"
		# 	meta:
		# 		critRate: 1
		# 	acc: 95
		# 	pp: 25
		# 	eff: "High critical hit ratio. Hits adjacent foes"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# fireSpin:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 35
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "trap"
		# 		category: "damageAilment"
		# 		maxTurn: 6
		# 		minTurn: 5
		# 	acc: 85
		# 	pp: 15
		# 	eff: "Traps and damages the target for 4-5 turns"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# lowKick:
		# 	type: "fighting"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "More power the heavier the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# growth:
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 1
		# 		sat: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises user's Attack and Sp.Atk by 1; 2 in Sun"
		# 	flags:
		# 		snatch: 1
		# sleepPowder:
		# 	type: "grass"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "sleep"
		# 		category: "ailment"
		# 		maxTurn: 4
		# 		minTurn: 2
		# 	acc: 75
		# 	pp: 15
		# 	eff: "Puts the target to sleep"
		# 	flags:
		# 		powder: 1
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# sandAttack:
		# 	type: "ground"
		# 	kind: "status"
		# 	statChanges:
		# 		acc: -1
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Lowers the target's acc by 1"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# counter:
		# 	type: "fighting"
		# 	priority: -5
		# 	target: "specificMove"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "If hit by physical attack, returns double damage"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# peck:
		# 	type: "flying"
		# 	power: 35
		# 	acc: 100
		# 	pp: 35
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# stunSpore:
		# 	type: "grass"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "paralysis"
		# 		category: "ailment"
		# 	acc: 75
		# 	pp: 30
		# 	eff: "Paralyzes the target"
		# 	flags:
		# 		powder: 1
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# twineedle:
		# 	type: "bug"
		# 	power: 25
		# 	effectChance: 20
		# 	meta:
		# 		ailmentChance: 20
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 		maxHit: 2
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Hits 2 times. Each hit has 20% chance to poison"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		flamethrower:
			type: "fire"
			kind: "special"
			power: 90
			effectChance: 10
			meta:
				ailmentChance: 10
				ailment: "burn"
				category: "damageAilment"
			acc: 100
			pp: 15
			eff: "10% chance to burn the target"
			flags:
				protect: 1
				mirror: 1
		# furyAttack:
		# 	power: 15
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 85
		# 	pp: 20
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# absorb:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 20
		# 	meta:
		# 		category: "damageHeal"
		# 		drain: 50
		# 	acc: 100
		# 	pp: 25
		# 	eff: "User recovers 50% of the damage dealt"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		heal: 1
		# seismicToss:
		# 	type: "fighting"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Does damage equal to the user's level"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# sing:
		# 	kind: "status"
		# 	meta:
		# 		ailment: "sleep"
		# 		category: "ailment"
		# 		maxTurn: 4
		# 		minTurn: 2
		# 	acc: 55
		# 	pp: 15
		# 	eff: "Puts the target to sleep"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		thunder:
			type: "electric"
			kind: "special"
			power: 110
			effectChance: 30
			meta:
				ailmentChance: 30
				ailment: "paralysis"
				category: "damageAilment"
			acc: 70
			eff: "30% chance to paralyze target. Can't miss in rain"
			flags:
				protect: 1
				mirror: 1
		# fissure:
		# 	type: "ground"
		# 	meta:
		# 		category: "ohko"
		# 	acc: 30
		# 	pp: 5
		# 	eff: "OHKOs the target. Fails if user is a lower level"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		psychic:
			type: "psychic"
			kind: "special"
			power: 90
			effectChance: 10
			statChanges:
				sdf: -1
			meta:
				statChance: 10
				category: "damageLower"
			acc: 100
			eff: "10% chance to lower the target's Sp.Def by 1"
			flags:
				protect: 1
				mirror: 1
		# confusion:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 50
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "confusion"
		# 		category: "damageAilment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 100
		# 	pp: 25
		# 	eff: "10% chance to confuse the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# mimic:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "The last move the target used replaces this one"
		# 	flags:
		# 		protect: 1
		# 		authentic: 1
		# 		mystery: 1
		# sludge:
		# 	type: "poison"
		# 	kind: "special"
		# 	power: 65
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "30% chance to poison the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# metronome:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Picks a random move"
		# harden:
		# 	kind: "status"
		# 	statChanges:
		# 		def: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 30
		# 	eff: "Raises the user's Defense by 1"
		# 	flags:
		# 		snatch: 1
		# teleport:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "Flee from wild Pokemon battles"
		toxic:
			type: "poison"
			kind: "status"
			meta:
				ailment: "poison"
				category: "ailment"
				maxTurn: 15
				minTurn: 15
			acc: 90
			eff: "Badly poisons the target"
			flags:
				protect: 1
				reflectable: 1
				mirror: 1
		# solarBeam:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 120
		# 	acc: 100
		# 	eff: "Charges turn 1. Hits turn 2. No charge in sunlight"
		# 	flags:
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		# rage:
		# 	power: 20
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Raises the user's Attack by 1 if hit during use"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# quickAttack:
		# 	power: 40
		# 	priority: 1
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Usually goes first"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# kinesis:
		# 	type: "psychic"
		# 	kind: "status"
		# 	statChanges:
		# 		acc: -1
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 80
		# 	pp: 15
		# 	eff: "Lowers the target's acc by 1"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# doubleTeam:
		# 	kind: "status"
		# 	statChanges:
		# 		eva: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 15
		# 	eff: "Raises the user's evasiveness by 1"
		# 	flags:
		# 		snatch: 1
		# nightShade:
		# 	type: "ghost"
		# 	kind: "special"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Does damage equal to the user's level"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# lick:
		# 	type: "ghost"
		# 	power: 30
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 30
		# 	eff: "30% chance to paralyze the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# hyperBeam:
		# 	kind: "special"
		# 	power: 150
		# 	acc: 90
		# 	pp: 5
		# 	eff: "User cannot move next turn"
		# 	flags:
		# 		recharge: 1
		# 		protect: 1
		# 		mirror: 1
		# headbutt:
		# 	power: 70
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 100
		# 	pp: 15
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# mirrorMove:
		# 	type: "flying"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "User uses the target's last used move against it"
		# minimize:
		# 	kind: "status"
		# 	statChanges:
		# 		eva: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	eff: "Raises the user's evasiveness by 2"
		# 	flags:
		# 		snatch: 1
		# rockThrow:
		# 	type: "rock"
		# 	power: 50
		# 	acc: 90
		# 	pp: 15
		# 	eff: "No additional effect"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		iceBeam:
			type: "ice"
			kind: "special"
			power: 90
			effectChance: 10
			meta:
				ailmentChance: 10
				ailment: "freeze"
				category: "damageAilment"
			acc: 100
			eff: "10% chance to freeze the target"
			flags:
				protect: 1
				mirror: 1
		# hypnosis:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "sleep"
		# 		category: "ailment"
		# 		maxTurn: 4
		# 		minTurn: 2
		# 	acc: 60
		# 	pp: 20
		# 	eff: "Puts the target to sleep"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# dragonRage:
		# 	type: "dragon"
		# 	kind: "special"
		# 	acc: 100
		# 	eff: "Always does 40 HP of damage"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		hydroPump:
			type: "water"
			kind: "special"
			power: 110
			acc: 80
			pp: 5
			eff: "No additional effect"
			flags:
				protect: 1
				mirror: 1
		# reflect:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "usersField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 20
		# 	eff: "For 5 turns, physical damage to allies is halved"
		# 	flags:
		# 		snatch: 1
		# earthquake:
		# 	type: "ground"
		# 	power: 100
		# 	target: "allOtherPokemon"
		# 	acc: 100
		# 	eff: "Hits adjacent Pokemon. Power doubles on Dig"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# softBoiled:
		# 	text: "Soft-Boiled"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "heal"
		# 		healing: 50
		# 	eff: "Heals the user by 50% of its max HP"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# bide:
		# 	priority: 1
		# 	target: "user"
		# 	eff: "Waits 2 turns; deals double the damage taken"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# withdraw:
		# 	type: "water"
		# 	kind: "status"
		# 	statChanges:
		# 		def: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 40
		# 	eff: "Raises the user's Defense by 1"
		# 	flags:
		# 		snatch: 1
		# amnesia:
		# 	type: "psychic"
		# 	kind: "status"
		# 	statChanges:
		# 		sdf: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Sp.Def by 2"
		# 	flags:
		# 		snatch: 1
		# clamp:
		# 	type: "water"
		# 	power: 35
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "trap"
		# 		category: "damageAilment"
		# 		maxTurn: 6
		# 		minTurn: 5
		# 	acc: 85
		# 	pp: 15
		# 	eff: "Traps and damages the target for 4-5 turns"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# waterfall:
		# 	type: "water"
		# 	power: 80
		# 	effectChance: 20
		# 	meta:
		# 		flinchChance: 20
		# 	acc: 100
		# 	pp: 15
		# 	eff: "20% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# highJumpKick:
		# 	type: "fighting"
		# 	power: 130
		# 	acc: 90
		# 	eff: "User is hurt by 50% of its max HP if it misses"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		gravity: 1
		thunderbolt:
			type: "electric"
			kind: "special"
			power: 90
			effectChance: 10
			meta:
				ailmentChance: 10
				ailment: "paralysis"
				category: "damageAilment"
			acc: 100
			pp: 15
			eff: "10% chance to paralyze the target"
			flags:
				protect: 1
				mirror: 1
		# smog:
		# 	type: "poison"
		# 	kind: "special"
		# 	power: 30
		# 	effectChance: 40
		# 	meta:
		# 		ailmentChance: 40
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 	acc: 70
		# 	pp: 20
		# 	eff: "40% chance to poison the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# spikeCannon:
		# 	power: 20
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# meditate:
		# 	type: "psychic"
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 40
		# 	eff: "Raises the user's Attack by 1"
		# 	flags:
		# 		snatch: 1
		# dig:
		# 	type: "ground"
		# 	power: 80
		# 	acc: 100
		# 	eff: "Digs underground turn 1, strikes turn 2"
		# 	flags:
		# 		contact: 1
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		haze:
			type: "ice"
			kind: "status"
			target: "entireField"
			meta:
				category: "wholeFieldEffect"
			pp: 30
			eff: "Eliminates all stat changes"
			flags:
				authentic: 1
		acid:
			type: "poison"
			kind: "special"
			power: 40
			effectChance: 10
			statChanges:
				sdf: -1
			target: "allOpponents"
			meta:
				statChance: 10
				category: "damageLower"
			acc: 100
			pp: 30
			eff: "10% chance to lower the foe(s) Sp.Def by 1"
			flags:
				protect: 1
				mirror: 1
		# strength:
		# 	power: 80
		# 	acc: 100
		# 	pp: 15
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# hornAttack:
		# 	power: 65
		# 	acc: 100
		# 	pp: 25
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		swift:
			kind: "special"
			power: 60
			target: "allOpponents"
			pp: 20
			eff: "This move does not check acc. Hits foes"
			flags:
				protect: 1
				mirror: 1
		boneClub:
			type: "ground"
			power: 65
			effectChance: 10
			meta:
				flinchChance: 10
			acc: 85
			pp: 20
			eff: "10% chance to flinch the target"
			flags:
				protect: 1
				mirror: 1
		# confuseRay:
		# 	type: "ghost"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "confusion"
		# 		category: "ailment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 100
		# 	eff: "Confuses the target"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# eggBomb:
		# 	power: 100
		# 	acc: 75
		# 	eff: "No additional effect"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# skullBash:
		# 	power: 130
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 	acc: 100
		# 	eff: "Raises user's Defense by 1 on turn 1. Hits turn 2"
		# 	flags:
		# 		contact: 1
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		# constrict:
		# 	power: 10
		# 	effectChance: 10
		# 	statChanges:
		# 		spe: -1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 35
		# 	eff: "10% chance to lower the target's Speed by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# thunderShock:
		# 	type: "electric"
		# 	kind: "special"
		# 	power: 40
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 30
		# 	eff: "10% chance to paralyze the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# selfDestruct:
		# 	text: "Self-Destruct"
		# 	power: 200
		# 	target: "allOtherPokemon"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Hits adjacent Pokemon. The user faints"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# thunderWave:
		# 	type: "electric"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "paralysis"
		# 		category: "ailment"
		# 	acc: 90
		# 	pp: 20
		# 	eff: "Paralyzes the target"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# screech:
		# 	kind: "status"
		# 	statChanges:
		# 		def: -2
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 85
		# 	pp: 40
		# 	eff: "Lowers the target's Defense by 2"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# 		mystery: 1
		# recover:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "heal"
		# 		healing: 50
		# 	eff: "Heals the user by 50% of its max HP"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# defenseCurl:
		# 	kind: "status"
		# 	statChanges:
		# 		def: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 40
		# 	eff: "Raises the user's Defense by 1"
		# 	flags:
		# 		snatch: 1
		# smokescreen:
		# 	kind: "status"
		# 	statChanges:
		# 		acc: -1
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Lowers the target's acc by 1"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# barrier:
		# 	type: "psychic"
		# 	kind: "status"
		# 	statChanges:
		# 		def: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Defense by 2"
		# 	flags:
		# 		snatch: 1
		# sketch:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 1
		# 	eff: "Permanently copies the last move target used"
		# 	flags:
		# 		authentic: 1
		# 		mystery: 1
		bonemerang:
			type: "ground"
			power: 50
			meta:
				maxHit: 2
			acc: 90
			eff: "Hits 2 times in one turn"
			flags:
				protect: 1
				mirror: 1
		# focusEnergy:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 30
		# 	eff: "Raises the user's critical hit ratio by 2"
		# 	flags:
		# 		snatch: 1
		# rest:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "User sleeps 2 turns and restores HP and status"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# skyAttack:
		# 	type: "flying"
		# 	power: 140
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 		critRate: 1
		# 	acc: 90
		# 	pp: 5
		# 	eff: "Charges, then hits turn 2. 30% flinch. High crit"
		# 	flags:
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# splash:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 40
		# 	eff: "Does nothing (but we still love it)"
		# 	flags:
		# 		gravity: 1
		# struggle:
		# 	power: 50
		# 	target: "randomOpponent"
		# 	meta:
		# 		drain: -25
		# 	pp: 1
		# 	eff: "User loses 25% of its max HP as recoil"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# glare:
		# 	kind: "status"
		# 	meta:
		# 		ailment: "paralysis"
		# 		category: "ailment"
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Paralyzes the target"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# mindReader:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 5
		# 	eff: "User's next move will not miss the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# explosion:
		# 	power: 250
		# 	target: "allOtherPokemon"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Hits adjacent Pokemon. The user faints"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# fireBlast:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 110
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 85
		# 	pp: 5
		# 	eff: "10% chance to burn the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# agility:
		# 	type: "psychic"
		# 	kind: "status"
		# 	statChanges:
		# 		spe: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 30
		# 	eff: "Raises the user's Speed by 2"
		# 	flags:
		# 		snatch: 1
		# psywave:
		# 	type: "psychic"
		# 	kind: "special"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Random damage equal to 0.5x-1.5x user's level"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# triAttack:
		# 	kind: "special"
		# 	power: 80
		# 	effectChance: 20
		# 	meta:
		# 		ailmentChance: 20
		# 		ailment: "unknown"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	eff: "20% chance to paralyze or burn or freeze target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# lightScreen:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "usersField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 30
		# 	eff: "For 5 turns, special damage to allies is halved"
		# 	flags:
		# 		snatch: 1
		# spore:
		# 	type: "grass"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "sleep"
		# 		category: "ailment"
		# 		maxTurn: 4
		# 		minTurn: 2
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Puts the target to sleep"
		# 	flags:
		# 		powder: 1
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# acidArmor:
		# 	type: "poison"
		# 	kind: "status"
		# 	statChanges:
		# 		def: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Defense by 2"
		# 	flags:
		# 		snatch: 1
		# thief:
		# 	type: "dark"
		# 	power: 60
		# 	acc: 100
		# 	pp: 25
		# 	eff: "If the user has no item, it steals the target's"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# tripleKick:
		# 	type: "fighting"
		# 	power: 10
		# 	meta:
		# 		maxHit: 3
		# 	acc: 90
		# 	eff: "Hits 3 times. Each hit can miss, but power rises"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# flash:
		# 	kind: "status"
		# 	statChanges:
		# 		acc: -1
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Lowers the target's acc by 1"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# spite:
		# 	type: "ghost"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	eff: "Lowers the PP of the target's last move by 4"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# leechLife:
		# 	type: "bug"
		# 	power: 80
		# 	meta:
		# 		category: "damageHeal"
		# 		drain: 50
		# 	acc: 100
		# 	eff: "User recovers 50% of the damage dealt"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		heal: 1
		bubble:
			type: "water"
			kind: "special"
			power: 40
			effectChance: 10
			statChanges:
				spe: -1
			target: "allOpponents"
			meta:
				statChance: 10
				category: "damageLower"
			acc: 100
			pp: 30
			eff: "10% chance to lower the foe(s) Speed by 1"
			flags:
				protect: 1
				mirror: 1
		# powderSnow:
		# 	type: "ice"
		# 	kind: "special"
		# 	power: 40
		# 	effectChance: 10
		# 	target: "allOpponents"
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "freeze"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 25
		# 	eff: "10% chance to freeze the foe(s)"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# bellyDrum:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "User loses 50% max HP. Maximizes Attack"
		# 	flags:
		# 		snatch: 1
		# crabhammer:
		# 	type: "water"
		# 	power: 100
		# 	meta:
		# 		critRate: 1
		# 	acc: 90
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# conversion:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 30
		# 	eff: "Changes user's type to match its first move"
		# 	flags:
		# 		snatch: 1
		# outrage:
		# 	type: "dragon"
		# 	power: 120
		# 	target: "randomOpponent"
		# 	acc: 100
		# 	eff: "Lasts 2-3 turns. Confuses the user afterwards"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# snore:
		# 	kind: "special"
		# 	power: 50
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 100
		# 	pp: 15
		# 	eff: "User must be asleep. 30% chance to flinch target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# sludgeBomb:
		# 	type: "poison"
		# 	kind: "special"
		# 	power: 90
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	eff: "30% chance to poison the target"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# poisonGas:
		# 	type: "poison"
		# 	kind: "status"
		# 	target: "allOpponents"
		# 	meta:
		# 		ailment: "poison"
		# 		category: "ailment"
		# 	acc: 90
		# 	pp: 40
		# 	eff: "Poisons the foe(s)"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		furySwipes:
			power: 18
			meta:
				maxHit: 5
				minHit: 2
			acc: 80
			pp: 15
			eff: "Hits 2-5 times in one turn"
			flags:
				contact: 1
				protect: 1
				mirror: 1
		# spiderWeb:
		# 	type: "bug"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "The target cannot switch out"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# dizzyPunch:
		# 	power: 70
		# 	effectChance: 20
		# 	meta:
		# 		ailmentChance: 20
		# 		ailment: "confusion"
		# 		category: "damageAilment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 100
		# 	eff: "20% chance to confuse the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		punch: 1
		# slash:
		# 	power: 70
		# 	meta:
		# 		critRate: 1
		# 	acc: 100
		# 	pp: 20
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# foresight:
		# 	kind: "status"
		# 	meta:
		# 		ailment: "identifiedGhostType"
		# 		category: "ailment"
		# 	pp: 40
		# 	eff: "Fighting, Normal hit Ghost. Evasiveness ignored"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# flail:
		# 	acc: 100
		# 	pp: 15
		# 	eff: "More power the less HP the user has left"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# lockOn:
		# 	text: "Lock-On"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 5
		# 	eff: "User's next move will not miss the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# icyWind:
		# 	type: "ice"
		# 	kind: "special"
		# 	power: 55
		# 	effectChance: 100
		# 	statChanges:
		# 		spe: -1
		# 	target: "allOpponents"
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 95
		# 	pp: 15
		# 	eff: "100% chance to lower the foe(s) Speed by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# protect:
		# 	kind: "status"
		# 	priority: 4
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Prevents moves from affecting the user this turn"
		superFang:
			acc: 90
			eff: "Does damage equal to 1/2 target's current HP"
			flags:
				contact: 1
				protect: 1
				mirror: 1
		# zapCannon:
		# 	type: "electric"
		# 	kind: "special"
		# 	power: 120
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 50
		# 	pp: 5
		# 	eff: "100% chance to paralyze the target"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# cottonSpore:
		# 	type: "grass"
		# 	kind: "status"
		# 	statChanges:
		# 		spe: -2
		# 	target: "allOpponents"
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 40
		# 	eff: "Lowers the target's Speed by 2"
		# 	flags:
		# 		powder: 1
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# sharpen:
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 30
		# 	eff: "Raises the user's Attack by 1"
		# 	flags:
		# 		snatch: 1
		# substitute:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "User takes 1/4 its max HP to put in a Substitute"
		# 	flags:
		# 		snatch: 1
		# 		nonsky: 1
		# machPunch:
		# 	type: "fighting"
		# 	power: 40
		# 	priority: 1
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Usually goes first"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		punch: 1
		# aeroblast:
		# 	type: "flying"
		# 	kind: "special"
		# 	power: 100
		# 	meta:
		# 		critRate: 1
		# 	acc: 95
		# 	pp: 5
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# sweetKiss:
		# 	type: "fairy"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "confusion"
		# 		category: "ailment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 75
		# 	eff: "Confuses the target"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# lovelyKiss:
		# 	kind: "status"
		# 	meta:
		# 		ailment: "sleep"
		# 		category: "ailment"
		# 		maxTurn: 4
		# 		minTurn: 2
		# 	acc: 75
		# 	eff: "Puts the target to sleep"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# mudSlap:
		# 	text: "Mud-Slap"
		# 	type: "ground"
		# 	kind: "special"
		# 	power: 20
		# 	effectChance: 100
		# 	statChanges:
		# 		acc: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 100
		# 	eff: "100% chance to lower the target's acc by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# transform:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Copies target's stats, moves, types, and Ability"
		# 	flags:
		# 		mystery: 1
		# destinyBond:
		# 	type: "ghost"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 5
		# 	eff: "If an opponent knocks out the user, it also faints"
		# 	flags:
		# 		authentic: 1
		# feintAttack:
		# 	type: "dark"
		# 	power: 60
		# 	pp: 20
		# 	eff: "This move does not check acc"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# reversal:
		# 	type: "fighting"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "More power the less HP the user has left"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# octazooka:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 65
		# 	effectChance: 50
		# 	statChanges:
		# 		acc: -1
		# 	meta:
		# 		statChance: 50
		# 		category: "damageLower"
		# 	acc: 85
		# 	eff: "50% chance to lower the target's acc by 1"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# flameWheel:
		# 	type: "fire"
		# 	power: 60
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 25
		# 	eff: "10% chance to burn the target. Thaws user"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		defrost: 1
		# detect:
		# 	type: "fighting"
		# 	kind: "status"
		# 	priority: 4
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 5
		# 	eff: "Prevents moves from affecting the user this turn"
		# scaryFace:
		# 	kind: "status"
		# 	statChanges:
		# 		spe: -2
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	eff: "Lowers the target's Speed by 2"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# conversion2:
		# 	text: "Conversion 2"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 30
		# 	eff: "Changes user's type to resist target's last move"
		# 	flags:
		# 		authentic: 1
		# perishSong:
		# 	kind: "status"
		# 	target: "allPokemon"
		# 	meta:
		# 		ailment: "perishSong"
		# 		category: "ailment"
		# 		maxTurn: 4
		# 		minTurn: 4
		# 	pp: 5
		# 	eff: "All active Pokemon will faint in 3 turns"
		# 	flags:
		# 		sound: 1
		# 		distance: 1
		# 		authentic: 1
		# dreamEater:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 100
		# 	meta:
		# 		category: "damageHeal"
		# 		drain: 50
		# 	acc: 100
		# 	pp: 15
		# 	eff: "User gains 1/2 HP inflicted. Sleeping target only"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		heal: 1
		# nightmare:
		# 	type: "ghost"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "nightmare"
		# 		category: "ailment"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "A sleeping target is hurt by 1/4 max HP per turn"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# spikes:
		# 	type: "ground"
		# 	kind: "status"
		# 	target: "opponentsField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 20
		# 	eff: "Hurts grounded foes on switch-in. Max 3 layers"
		# 	flags:
		# 		reflectable: 1
		# 		nonsky: 1
		# boneRush:
		# 	type: "ground"
		# 	power: 25
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 90
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# barrage:
		# 	power: 15
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 85
		# 	pp: 20
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# curse:
		# 	type: "ghost"
		# 	kind: "status"
		# 	target: "specificMove"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Curses if Ghost, else +1 Atk, +1 Def, -1 Spe"
		# 	flags:
		# 		authentic: 1
		# rockSlide:
		# 	type: "rock"
		# 	power: 75
		# 	effectChance: 30
		# 	target: "allOpponents"
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 90
		# 	eff: "30% chance to flinch the foe(s)"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		hyperFang:
			power: 80
			effectChance: 10
			meta:
				flinchChance: 10
			acc: 90
			pp: 15
			eff: "10% chance to flinch the target"
			flags:
				bite: 1
				contact: 1
				protect: 1
				mirror: 1
		# painSplit:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "Shares HP of user and target equally"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		mystery: 1
		# gigaDrain:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 75
		# 	meta:
		# 		category: "damageHeal"
		# 		drain: 50
		# 	acc: 100
		# 	eff: "User recovers 50% of the damage dealt"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		heal: 1
		# endure:
		# 	kind: "status"
		# 	priority: 4
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "The user survives the next hit with at least 1 HP"
		# sandstorm:
		# 	type: "rock"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	eff: "For 5 turns, a sandstorm rages"
		# charm:
		# 	type: "fairy"
		# 	kind: "status"
		# 	statChanges:
		# 		atk: -2
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Lowers the target's Attack by 2"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# rollout:
		# 	type: "rock"
		# 	power: 30
		# 	acc: 90
		# 	pp: 20
		# 	eff: "Power doubles with each hit. Repeats for 5 turns"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# swagger:
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 2
		# 	meta:
		# 		ailment: "confusion"
		# 		category: "swagger"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 85
		# 	pp: 15
		# 	eff: "Raises the target's Attack by 2 and confuses it"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# spark:
		# 	type: "electric"
		# 	power: 65
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "30% chance to paralyze the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# healBell:
		# 	kind: "status"
		# 	target: "userAndAllies"
		# 	meta:
		# 		category: "unique"
		# 	pp: 5
		# 	eff: "Cures the user's party of all status conditions"
		# 	flags:
		# 		snatch: 1
		# 		sound: 1
		# 		distance: 1
		# 		authentic: 1
		# milkDrink:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "heal"
		# 		healing: 50
		# 	eff: "Heals the user by 50% of its max HP"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# falseSwipe:
		# 	power: 40
		# 	acc: 100
		# 	pp: 40
		# 	eff: "Always leaves the target with at least 1 HP"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# sleepTalk:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "User must be asleep. Uses another known move"
		# furyCutter:
		# 	type: "bug"
		# 	power: 40
		# 	acc: 95
		# 	pp: 20
		# 	eff: "Power doubles with each hit, up to 160"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# frustration:
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Max 102 power at minimum Happiness"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# return:
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Max 102 power at maximum Happiness"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# attract:
		# 	kind: "status"
		# 	meta:
		# 		ailment: "infatuation"
		# 		category: "ailment"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "A target of the opposite gender gets infatuated"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# meanLook:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 5
		# 	eff: "The target cannot switch out"
		# 	flags:
		# 		reflectable: 1
		# 		mirror: 1
		# magnitude:
		# 	type: "ground"
		# 	target: "allOtherPokemon"
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Hits adjacent Pokemon. Power varies; 2x on Dig"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# sacredFire:
		# 	type: "fire"
		# 	power: 100
		# 	effectChance: 50
		# 	meta:
		# 		ailmentChance: 50
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 95
		# 	pp: 5
		# 	eff: "50% chance to burn the target. Thaws user"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		defrost: 1
		# dynamicPunch:
		# 	type: "fighting"
		# 	power: 100
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "confusion"
		# 		category: "damageAilment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 50
		# 	pp: 5
		# 	eff: "100% chance to confuse the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		punch: 1
		# steelWing:
		# 	type: "steel"
		# 	power: 70
		# 	effectChance: 10
		# 	statChanges:
		# 		def: 1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageRaise"
		# 	acc: 90
		# 	pp: 25
		# 	eff: "10% chance to raise the user's Defense by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# batonPass:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 40
		# 	eff: "User switches, passing stat changes and more"
		# vitalThrow:
		# 	type: "fighting"
		# 	power: 70
		# 	priority: -1
		# 	eff: "This move does not check acc. Goes last"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# present:
		# 	acc: 90
		# 	pp: 15
		# 	eff: "40, 80, 120 power, or heals target by 1/4 max HP"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# ironTail:
		# 	type: "steel"
		# 	power: 100
		# 	effectChance: 30
		# 	statChanges:
		# 		def: -1
		# 	meta:
		# 		statChance: 30
		# 		category: "damageLower"
		# 	acc: 75
		# 	pp: 15
		# 	eff: "30% chance to lower the target's Defense by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# moonlight:
		# 	type: "fairy"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "heal"
		# 		healing: 50
		# 	pp: 5
		# 	eff: "Heals the user by a weather-dependent amount"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# synthesis:
		# 	type: "grass"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "heal"
		# 		healing: 50
		# 	pp: 5
		# 	eff: "Heals the user by a weather-dependent amount"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# megahorn:
		# 	type: "bug"
		# 	power: 120
		# 	acc: 85
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# twister:
		# 	type: "dragon"
		# 	kind: "special"
		# 	power: 40
		# 	effectChance: 20
		# 	target: "allOpponents"
		# 	meta:
		# 		flinchChance: 20
		# 	acc: 100
		# 	pp: 20
		# 	eff: "20% chance to flinch the foe(s)"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# rapidSpin:
		# 	power: 20
		# 	acc: 100
		# 	pp: 40
		# 	eff: "Frees user from hazards/partial trap/Leech Seed"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# pursuit:
		# 	type: "dark"
		# 	power: 40
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Power doubles if a foe is switching out"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# sweetScent:
		# 	kind: "status"
		# 	statChanges:
		# 		eva: -2
		# 	target: "allOpponents"
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Lowers the foe(s) evasiveness by 2"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# encore:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "The target repeats its last move for 3 turns"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# sunnyDay:
		# 	type: "fire"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	pp: 5
		# 	eff: "For 5 turns, intense sunlight powers Fire moves"
		# extremeSpeed:
		# 	power: 80
		# 	priority: 2
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Nearly always goes first"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# followMe:
		# 	kind: "status"
		# 	priority: 2
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "The foes' moves target the user on the turn used"
		# facade:
		# 	power: 70
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Power doubles if user is burn/poison/paralyzed"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# crunch:
		# 	type: "dark"
		# 	power: 80
		# 	effectChance: 20
		# 	statChanges:
		# 		def: -1
		# 	meta:
		# 		statChance: 20
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "20% chance to lower the target's Defense by 1"
		# 	flags:
		# 		bite: 1
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# crossChop:
		# 	type: "fighting"
		# 	power: 100
		# 	meta:
		# 		critRate: 1
		# 	acc: 80
		# 	pp: 5
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# focusPunch:
		# 	type: "fighting"
		# 	power: 150
		# 	priority: -3
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Fails if the user takes damage before it hits"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		punch: 1
		# dragonBreath:
		# 	type: "dragon"
		# 	kind: "special"
		# 	power: 60
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "30% chance to paralyze the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# rockSmash:
		# 	type: "fighting"
		# 	power: 40
		# 	effectChance: 50
		# 	statChanges:
		# 		def: -1
		# 	meta:
		# 		statChance: 50
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "50% chance to lower the target's Defense by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# metalClaw:
		# 	type: "steel"
		# 	power: 50
		# 	effectChance: 10
		# 	statChanges:
		# 		atk: 1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageRaise"
		# 	acc: 95
		# 	pp: 35
		# 	eff: "10% chance to raise the user's Attack by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# psychUp:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Copies the target's current stat stages"
		# 	flags:
		# 		authentic: 1
		# 		mystery: 1
		# uproar:
		# 	kind: "special"
		# 	power: 90
		# 	target: "randomOpponent"
		# 	acc: 100
		# 	eff: "Lasts 3 turns. Active Pokemon cannot fall asleep"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# whirlpool:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 35
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "trap"
		# 		category: "damageAilment"
		# 		maxTurn: 6
		# 		minTurn: 5
		# 	acc: 85
		# 	pp: 15
		# 	eff: "Traps and damages the target for 4-5 turns"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# shadowBall:
		# 	type: "ghost"
		# 	kind: "special"
		# 	power: 80
		# 	effectChance: 20
		# 	statChanges:
		# 		sdf: -1
		# 	meta:
		# 		statChance: 20
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "20% chance to lower the target's Sp.Def by 1"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# stockpile:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "Raises user's Defense, Sp.Def by 1. Max 3 uses"
		# 	flags:
		# 		snatch: 1
		# smellingSalts:
		# 	power: 70
		# 	acc: 100
		# 	eff: "Power doubles if target is paralyzed, and cures it"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# skillSwap:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "The user and the target trade Abilities"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		authentic: 1
		# 		mystery: 1
		# ingrain:
		# 	type: "grass"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		ailment: "ingrain"
		# 		category: "ailment"
		# 	pp: 20
		# 	eff: "Traps/grounds user; heals 1/16 max HP per turn"
		# 	flags:
		# 		snatch: 1
		# 		nonsky: 1
		# safeguard:
		# 	kind: "status"
		# 	target: "usersField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 25
		# 	eff: "For 5 turns, protects user's party from status"
		# 	flags:
		# 		snatch: 1
		# rolePlay:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "User replaces its Ability with the target's"
		# 	flags:
		# 		authentic: 1
		# 		mystery: 1
		# mirrorCoat:
		# 	type: "psychic"
		# 	kind: "special"
		# 	priority: -5
		# 	target: "specificMove"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "If hit by special attack, returns double damage"
		# 	flags:
		# 		protect: 1
		# morningSun:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "heal"
		# 		healing: 50
		# 	pp: 5
		# 	eff: "Heals the user by a weather-dependent amount"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# flatter:
		# 	type: "dark"
		# 	kind: "status"
		# 	statChanges:
		# 		sat: 1
		# 	meta:
		# 		ailment: "confusion"
		# 		category: "swagger"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Raises the target's Sp.Atk by 1 and confuses it"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# secretPower:
		# 	power: 70
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Effect varies with terrain. (30% paralysis chance)"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# beatUp:
		# 	type: "dark"
		# 	meta:
		# 		maxHit: 6
		# 		minHit: 6
		# 	acc: 100
		# 	eff: "All healthy allies aid in damaging the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		mystery: 1
		# futureSight:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 120
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	eff: "Hits two turns after being used"
		# superpower:
		# 	type: "fighting"
		# 	power: 120
		# 	effectChance: 100
		# 	statChanges:
		# 		atk: -1
		# 		def: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "damageRaise"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Lowers the user's Attack and Defense by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# naturePower:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "Attack depends on terrain (default Tri Attack)"
		# camouflage:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "Changes user's type by terrain (default Normal)"
		# 	flags:
		# 		snatch: 1
		# spitUp:
		# 	kind: "special"
		# 	acc: 100
		# 	eff: "More power with more uses of Stockpile"
		# 	flags:
		# 		protect: 1
		# hiddenPower:
		# 	kind: "special"
		# 	power: 60
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Varies in type based on the user's IVs"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# helpingHand:
		# 	kind: "status"
		# 	priority: 5
		# 	target: "ally"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "One adjacent ally's move power is 1.5x this turn"
		# 	flags:
		# 		authentic: 1
		# snatch:
		# 	type: "dark"
		# 	kind: "status"
		# 	priority: 4
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "User steals certain support moves to use itself"
		# 	flags:
		# 		authentic: 1
		# memento:
		# 	type: "dark"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	eff: "Lowers target's Attack, Sp.Atk by 2. User faints"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# torment:
		# 	type: "dark"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "torment"
		# 		category: "ailment"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Target can't select the same move twice in a row"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# tickle:
		# 	kind: "status"
		# 	statChanges:
		# 		atk: -1
		# 		def: -1
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Lowers the target's Attack and Defense by 1"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# slackOff:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "heal"
		# 		healing: 50
		# 	eff: "Heals the user by 50% of its max HP"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# eruption:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 150
		# 	target: "allOpponents"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Less power as user's HP decreases. Hits foe(s)"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# dive:
		# 	type: "water"
		# 	power: 80
		# 	acc: 100
		# 	eff: "Dives underwater turn 1, strikes turn 2"
		# 	flags:
		# 		contact: 1
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# ancientPower:
		# 	type: "rock"
		# 	kind: "special"
		# 	power: 60
		# 	effectChance: 10
		# 	statChanges:
		# 		atk: 1
		# 		def: 1
		# 		sat: 1
		# 		sdf: 1
		# 		spe: 1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageRaise"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "10% chance to raise all stats by 1 (not acc/eva)"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# silverWind:
		# 	type: "bug"
		# 	kind: "special"
		# 	power: 60
		# 	effectChance: 10
		# 	statChanges:
		# 		atk: 1
		# 		def: 1
		# 		sat: 1
		# 		sdf: 1
		# 		spe: 1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageRaise"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "10% chance to raise all stats by 1 (not acc/eva)"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# rainDance:
		# 	type: "water"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	pp: 5
		# 	eff: "For 5 turns, heavy rain powers Water moves"
		# mistBall:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 70
		# 	effectChance: 50
		# 	statChanges:
		# 		sat: -1
		# 	meta:
		# 		statChance: 50
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "50% chance to lower the target's Sp.Atk by 1"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# taunt:
		# 	type: "dark"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "For 3 turns, the target can't use status moves"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# charge:
		# 	type: "electric"
		# 	kind: "status"
		# 	statChanges:
		# 		sdf: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Boosts next Electric move and user's Sp.Def by 1"
		# 	flags:
		# 		snatch: 1
		# tailGlow:
		# 	type: "bug"
		# 	kind: "status"
		# 	statChanges:
		# 		sat: 3
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Sp.Atk by 3"
		# 	flags:
		# 		snatch: 1
		# grassWhistle:
		# 	type: "grass"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "sleep"
		# 		category: "ailment"
		# 		maxTurn: 4
		# 		minTurn: 2
		# 	acc: 55
		# 	pp: 15
		# 	eff: "Puts the target to sleep"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# blazeKick:
		# 	type: "fire"
		# 	power: 85
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 		critRate: 1
		# 	acc: 90
		# 	eff: "High critical hit ratio. 10% chance to burn"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# imprison:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "No foe can use any move known by the user"
		# 	flags:
		# 		snatch: 1
		# 		authentic: 1
		# shadowPunch:
		# 	type: "ghost"
		# 	power: 60
		# 	pp: 20
		# 	eff: "This move does not check acc"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		punch: 1
		# hyperVoice:
		# 	kind: "special"
		# 	power: 90
		# 	target: "allOpponents"
		# 	acc: 100
		# 	eff: "No additional effect. Hits adjacent foes"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# mudSport:
		# 	type: "ground"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	pp: 15
		# 	eff: "For 5 turns, Electric-type attacks have 1/3 power"
		# 	flags:
		# 		nonsky: 1
		# crushClaw:
		# 	power: 75
		# 	effectChance: 50
		# 	statChanges:
		# 		def: -1
		# 	meta:
		# 		statChance: 50
		# 		category: "damageLower"
		# 	acc: 95
		# 	eff: "50% chance to lower the target's Defense by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# magicCoat:
		# 	type: "psychic"
		# 	kind: "status"
		# 	priority: 4
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 15
		# 	eff: "Bounces back certain non-damaging moves"
		# fakeOut:
		# 	power: 40
		# 	priority: 3
		# 	effectChance: 100
		# 	meta:
		# 		flinchChance: 100
		# 	acc: 100
		# 	eff: "Hits first. First turn out only. 100% flinch chance"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# lusterPurge:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 70
		# 	effectChance: 50
		# 	statChanges:
		# 		sdf: -1
		# 	meta:
		# 		statChance: 50
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "50% chance to lower the target's Sp.Def by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# knockOff:
		# 	type: "dark"
		# 	power: 65
		# 	acc: 100
		# 	pp: 20
		# 	eff: "1.5x damage if foe holds an item. Removes item"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# waterSpout:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 150
		# 	target: "allOpponents"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Less power as user's HP decreases. Hits foe(s)"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# grudge:
		# 	type: "ghost"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 5
		# 	eff: "If the user faints, the attack used loses all its PP"
		# 	flags:
		# 		authentic: 1
		# blastBurn:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 150
		# 	acc: 90
		# 	pp: 5
		# 	eff: "User cannot move next turn"
		# 	flags:
		# 		recharge: 1
		# 		protect: 1
		# 		mirror: 1
		# assist:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "Uses a random move known by a team member"
		# swallow:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "heal"
		# 		healing: 25
		# 	eff: "Heals the user based on uses of Stockpile"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# odorSleuth:
		# 	kind: "status"
		# 	meta:
		# 		ailment: "identifiedGhostType"
		# 		category: "ailment"
		# 	pp: 40
		# 	eff: "Fighting, Normal hit Ghost. Evasiveness ignored"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# 		mystery: 1
		# bulletSeed:
		# 	type: "grass"
		# 	power: 25
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# armThrust:
		# 	type: "fighting"
		# 	power: 15
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# heatWave:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 95
		# 	effectChance: 10
		# 	target: "allOpponents"
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 90
		# 	eff: "10% chance to burn the foe(s)"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# teeterDance:
		# 	kind: "status"
		# 	target: "allOtherPokemon"
		# 	meta:
		# 		ailment: "confusion"
		# 		category: "ailment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Confuses adjacent Pokemon"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		dance: 1
		# recycle:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Restores the item the user last used"
		# 	flags:
		# 		snatch: 1
		# weatherBall:
		# 	kind: "special"
		# 	power: 50
		# 	acc: 100
		# 	eff: "Power doubles and type varies in each weather"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# cosmicPower:
		# 	type: "psychic"
		# 	kind: "status"
		# 	statChanges:
		# 		def: 1
		# 		sdf: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Defense and Sp.Def by 1"
		# 	flags:
		# 		snatch: 1
		# willOWisp:
		# 	text: "Will-O-Wisp"
		# 	type: "fire"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "burn"
		# 		category: "ailment"
		# 	acc: 85
		# 	pp: 15
		# 	eff: "Burns the target"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# refresh:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "User cures its burn, poison, or paralysis"
		# 	flags:
		# 		snatch: 1
		# trick:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	eff: "User switches its held item with the target's"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		mystery: 1
		# yawn:
		# 	kind: "status"
		# 	meta:
		# 		ailment: "yawn"
		# 		category: "ailment"
		# 		maxTurn: 2
		# 		minTurn: 2
		# 	eff: "Puts the target to sleep after 1 turn"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# sheerCold:
		# 	type: "ice"
		# 	kind: "special"
		# 	meta:
		# 		category: "ohko"
		# 	acc: 30
		# 	pp: 5
		# 	eff: "OHKOs non-Ice targets. Fails if user's lower level"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# hammerArm:
		# 	type: "fighting"
		# 	power: 100
		# 	effectChance: 100
		# 	statChanges:
		# 		spe: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "damageRaise"
		# 	acc: 90
		# 	eff: "Lowers the user's Speed by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		punch: 1
		# fakeTears:
		# 	type: "dark"
		# 	kind: "status"
		# 	statChanges:
		# 		sdf: -2
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Lowers the target's Sp.Def by 2"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# endeavor:
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Lowers the target's HP to the user's HP"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# skyUppercut:
		# 	type: "fighting"
		# 	power: 85
		# 	acc: 90
		# 	pp: 15
		# 	eff: "Can hit Pokemon using Bounce, Fly, or Sky Drop"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		punch: 1
		# covet:
		# 	power: 60
		# 	acc: 100
		# 	pp: 25
		# 	eff: "If the user has no item, it steals the target's"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# metalSound:
		# 	type: "steel"
		# 	kind: "status"
		# 	statChanges:
		# 		sdf: -2
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 85
		# 	pp: 40
		# 	eff: "Lowers the target's Sp.Def by 2"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# 		mystery: 1
		# pluck:
		# 	type: "flying"
		# 	power: 60
		# 	acc: 100
		# 	pp: 20
		# 	eff: "User steals and eats the target's Berry"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# revenge:
		# 	type: "fighting"
		# 	power: 60
		# 	priority: -4
		# 	acc: 100
		# 	eff: "Power doubles if user is damaged by the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# featherDance:
		# 	type: "flying"
		# 	kind: "status"
		# 	statChanges:
		# 		atk: -2
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Lowers the target's Attack by 2"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# 		dance: 1
		# embargo:
		# 	type: "dark"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "embargo"
		# 		category: "ailment"
		# 		maxTurn: 5
		# 		minTurn: 5
		# 	acc: 100
		# 	pp: 15
		# 	eff: "For 5 turns, the target's item has no effect"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# lastResort:
		# 	power: 140
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Fails unless each known move has been used"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# calmMind:
		# 	type: "psychic"
		# 	kind: "status"
		# 	statChanges:
		# 		sat: 1
		# 		sdf: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Sp.Atk and Sp.Def by 1"
		# 	flags:
		# 		snatch: 1
		# roost:
		# 	type: "flying"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "heal"
		# 		healing: 50
		# 	eff: "Heals 50% HP. Flying-type removed 'til turn ends"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# block:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 5
		# 	eff: "The target cannot switch out"
		# 	flags:
		# 		reflectable: 1
		# 		mirror: 1
		# overheat:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 130
		# 	effectChance: 100
		# 	statChanges:
		# 		sat: -2
		# 	meta:
		# 		statChance: 100
		# 		category: "damageRaise"
		# 	acc: 90
		# 	pp: 5
		# 	eff: "Lowers the user's Sp.Atk by 2"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# flareBlitz:
		# 	type: "fire"
		# 	power: 120
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 		drain: -33
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Has 33% recoil. 10% chance to burn. Thaws user"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		defrost: 1
		# doomDesire:
		# 	type: "steel"
		# 	kind: "special"
		# 	power: 140
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Hits two turns after being used"
		# signalBeam:
		# 	type: "bug"
		# 	kind: "special"
		# 	power: 75
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "confusion"
		# 		category: "damageAilment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 100
		# 	pp: 15
		# 	eff: "10% chance to confuse the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# brine:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 65
		# 	acc: 100
		# 	eff: "Power doubles if the target's HP is 50% or less"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# gyroBall:
		# 	type: "steel"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "More power the slower the user than the target"
		# 	flags:
		# 		bullet: 1
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# gastroAcid:
		# 	type: "poison"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	eff: "Nullifies the target's Ability"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# wish:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Next turn, 50% of the user's max HP is restored"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# naturalGift:
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Power and type depends on the user's Berry"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# psychoBoost:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 140
		# 	effectChance: 100
		# 	statChanges:
		# 		sat: -2
		# 	meta:
		# 		statChance: 100
		# 		category: "damageRaise"
		# 	acc: 90
		# 	pp: 5
		# 	eff: "Lowers the user's Sp.Atk by 2"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# voltTackle:
		# 	type: "electric"
		# 	power: 120
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 		drain: -33
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Has 33% recoil. 10% chance to paralyze target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# psychoShift:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	eff: "Transfers the user's status ailment to the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# poisonJab:
		# 	type: "poison"
		# 	power: 80
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "30% chance to poison the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# astonish:
		# 	type: "ghost"
		# 	power: 30
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 100
		# 	pp: 15
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# hydroCannon:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 150
		# 	acc: 90
		# 	pp: 5
		# 	eff: "User cannot move next turn"
		# 	flags:
		# 		recharge: 1
		# 		protect: 1
		# 		mirror: 1
		# acupressure:
		# 	kind: "status"
		# 	target: "userOrAlly"
		# 	meta:
		# 		category: "unique"
		# 	pp: 30
		# 	eff: "Raises a random stat of the user or an ally by 2"
		# needleArm:
		# 	type: "grass"
		# 	power: 60
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 100
		# 	pp: 15
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# shockWave:
		# 	type: "electric"
		# 	kind: "special"
		# 	power: 60
		# 	pp: 20
		# 	eff: "This move does not check acc"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# meteorMash:
		# 	type: "steel"
		# 	power: 90
		# 	effectChance: 20
		# 	statChanges:
		# 		atk: 1
		# 	meta:
		# 		statChance: 20
		# 		category: "damageRaise"
		# 	acc: 90
		# 	eff: "20% chance to raise the user's Attack by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		punch: 1
		# trumpCard:
		# 	kind: "special"
		# 	pp: 5
		# 	eff: "More power the fewer PP this move has left"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# sandTomb:
		# 	type: "ground"
		# 	power: 35
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "trap"
		# 		category: "damageAilment"
		# 		maxTurn: 6
		# 		minTurn: 5
		# 	acc: 85
		# 	pp: 15
		# 	eff: "Traps and damages the target for 4-5 turns"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# muddyWater:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 90
		# 	effectChance: 30
		# 	statChanges:
		# 		acc: -1
		# 	target: "allOpponents"
		# 	meta:
		# 		statChance: 30
		# 		category: "damageLower"
		# 	acc: 85
		# 	eff: "30% chance to lower the foe(s) acc by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# rockTomb:
		# 	type: "rock"
		# 	power: 60
		# 	effectChance: 100
		# 	statChanges:
		# 		spe: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 95
		# 	pp: 15
		# 	eff: "100% chance to lower the target's Speed by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# howl:
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 40
		# 	eff: "Raises the user's Attack by 1"
		# 	flags:
		# 		snatch: 1
		# leafBlade:
		# 	type: "grass"
		# 	power: 90
		# 	meta:
		# 		critRate: 1
		# 	acc: 100
		# 	pp: 15
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# nightSlash:
		# 	type: "dark"
		# 	power: 70
		# 	meta:
		# 		critRate: 1
		# 	acc: 100
		# 	pp: 15
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# aerialAce:
		# 	type: "flying"
		# 	power: 60
		# 	pp: 20
		# 	eff: "This move does not check acc"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# fling:
		# 	type: "dark"
		# 	acc: 100
		# 	eff: "Flings the user's item at the target. Power varies"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		mystery: 1
		# hail:
		# 	type: "ice"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	eff: "For 5 turns, hail crashes down"
		# darkPulse:
		# 	type: "dark"
		# 	kind: "special"
		# 	power: 80
		# 	effectChance: 20
		# 	meta:
		# 		flinchChance: 20
		# 	acc: 100
		# 	pp: 15
		# 	eff: "20% chance to flinch the target"
		# 	flags:
		# 		protect: 1
		# 		pulse: 1
		# 		mirror: 1
		# 		distance: 1
		# powerSwap:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Swaps Attack and Sp.Atk stat stages with target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		authentic: 1
		# 		mystery: 1
		# waterPulse:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 60
		# 	effectChance: 20
		# 	meta:
		# 		ailmentChance: 20
		# 		ailment: "confusion"
		# 		category: "damageAilment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 100
		# 	pp: 20
		# 	eff: "20% chance to confuse the target"
		# 	flags:
		# 		protect: 1
		# 		pulse: 1
		# 		mirror: 1
		# 		distance: 1
		# luckyChant:
		# 	kind: "status"
		# 	target: "usersField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 30
		# 	eff: "For 5 turns, shields user's party from critical hits"
		# 	flags:
		# 		snatch: 1
		# tailwind:
		# 	type: "flying"
		# 	kind: "status"
		# 	target: "usersField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 15
		# 	eff: "For 4 turns, allies' Speed is doubled"
		# 	flags:
		# 		snatch: 1
		# waterSport:
		# 	type: "water"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	pp: 15
		# 	eff: "For 5 turns, Fire-type attacks have 1/3 power"
		# 	flags:
		# 		nonsky: 1
		# poisonFang:
		# 	type: "poison"
		# 	power: 50
		# 	effectChance: 50
		# 	meta:
		# 		ailmentChance: 50
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 		maxTurn: 15
		# 		minTurn: 15
		# 	acc: 100
		# 	pp: 15
		# 	eff: "50% chance to badly poison the target"
		# 	flags:
		# 		bite: 1
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# icicleSpear:
		# 	type: "ice"
		# 	power: 25
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# airCutter:
		# 	type: "flying"
		# 	kind: "special"
		# 	power: 60
		# 	target: "allOpponents"
		# 	meta:
		# 		critRate: 1
		# 	acc: 95
		# 	pp: 25
		# 	eff: "High critical hit ratio. Hits adjacent foes"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# wringOut:
		# 	kind: "special"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "More power the more HP the target has left"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# dragonClaw:
		# 	type: "dragon"
		# 	power: 80
		# 	acc: 100
		# 	pp: 15
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# wakeUpSlap:
		# 	text: "Wake-Up Slap"
		# 	type: "fighting"
		# 	power: 70
		# 	acc: 100
		# 	eff: "Power doubles if target is asleep, and wakes it"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# magicalLeaf:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 60
		# 	pp: 20
		# 	eff: "This move does not check acc"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# forcePalm:
		# 	type: "fighting"
		# 	power: 60
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	eff: "30% chance to paralyze the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# ironDefense:
		# 	type: "steel"
		# 	kind: "status"
		# 	statChanges:
		# 		def: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 15
		# 	eff: "Raises the user's Defense by 2"
		# 	flags:
		# 		snatch: 1
		# frenzyPlant:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 150
		# 	acc: 90
		# 	pp: 5
		# 	eff: "User cannot move next turn"
		# 	flags:
		# 		recharge: 1
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# punishment:
		# 	type: "dark"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "60 power +20 for each of the target's stat boosts"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# guardSwap:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Swaps Defense and Sp.Def changes with target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		authentic: 1
		# 		mystery: 1
		# bulkUp:
		# 	type: "fighting"
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 1
		# 		def: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Attack and Defense by 1"
		# 	flags:
		# 		snatch: 1
		# iceBall:
		# 	type: "ice"
		# 	power: 30
		# 	acc: 90
		# 	pp: 20
		# 	eff: "Power doubles with each hit. Repeats for 5 turns"
		# 	flags:
		# 		bullet: 1
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# brickBreak:
		# 	type: "fighting"
		# 	power: 75
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Destroys screens, unless the target is immune"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# aromatherapy:
		# 	type: "grass"
		# 	kind: "status"
		# 	target: "userAndAllies"
		# 	meta:
		# 		category: "unique"
		# 	pp: 5
		# 	eff: "Cures the user's party of all status conditions"
		# 	flags:
		# 		snatch: 1
		# 		distance: 1
		# copycat:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "Uses the last move used in the battle"
		# poisonTail:
		# 	type: "poison"
		# 	power: 50
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 		critRate: 1
		# 	acc: 100
		# 	pp: 25
		# 	eff: "High critical hit ratio. 10% chance to poison"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# assurance:
		# 	type: "dark"
		# 	power: 60
		# 	acc: 100
		# 	eff: "Power doubles if target was damaged this turn"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# heartSwap:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Swaps all stat changes with target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		authentic: 1
		# 		mystery: 1
		auraSphere:
			type: "fighting"
			kind: "special"
			power: 80
			pp: 20
			eff: "This move does not check acc"
			flags:
				bullet: 1
				protect: 1
				pulse: 1
				mirror: 1
				distance: 1
		mudShot:
			type: "ground"
			kind: "special"
			power: 55
			effectChance: 100
			statChanges:
				spe: -1
			meta:
				statChance: 100
				category: "damageLower"
			acc: 95
			pp: 15
			eff: "100% chance to lower the target's Speed by 1"
			flags:
				protect: 1
				mirror: 1
		# uTurn:
		# 	text: "U-turn"
		# 	type: "bug"
		# 	power: 70
		# 	acc: 100
		# 	pp: 20
		# 	eff: "User switches out after damaging the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# meFirst:
		# 	kind: "status"
		# 	target: "selectedPokemonMeFirst"
		# 	pp: 20
		# 	eff: "Copies a foe at 1.5x power. User must be faster"
		# 	flags:
		# 		protect: 1
		# 		authentic: 1
		# rockBlast:
		# 	type: "rock"
		# 	power: 25
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 90
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# bounce:
		# 	type: "flying"
		# 	power: 85
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 85
		# 	pp: 5
		# 	eff: "Bounces turn 1. Hits turn 2. 30% paralyze"
		# 	flags:
		# 		contact: 1
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		# 		gravity: 1
		# 		distance: 1
		# rockPolish:
		# 	type: "rock"
		# 	kind: "status"
		# 	statChanges:
		# 		spe: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Speed by 2"
		# 	flags:
		# 		snatch: 1
		# dragonDance:
		# 	type: "dragon"
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 1
		# 		spe: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Attack and Speed by 1"
		# 	flags:
		# 		snatch: 1
		# 		dance: 1
		# miracleEye:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "identifiedDarkType"
		# 		category: "ailment"
		# 	pp: 40
		# 	eff: "Psychic hits Dark. Evasiveness ignored"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# magnetRise:
		# 	type: "electric"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 		maxTurn: 5
		# 		minTurn: 5
		# 	eff: "For 5 turns, the user is immune to Ground moves"
		# 	flags:
		# 		snatch: 1
		# 		gravity: 1
		# gravity:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	pp: 5
		# 	eff: "For 5 turns, negates all Ground immunities"
		# 	flags:
		# 		nonsky: 1
		# metalBurst:
		# 	type: "steel"
		# 	target: "specificMove"
		# 	acc: 100
		# 	eff: "If hit by an attack, returns 1.5x damage"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# extrasensory:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 80
		# 	effectChance: 10
		# 	meta:
		# 		flinchChance: 10
		# 	acc: 100
		# 	pp: 20
		# 	eff: "10% chance to flinch the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# worrySeed:
		# 	type: "grass"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	eff: "The target's Ability becomes Insomnia"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# payback:
		# 	type: "dark"
		# 	power: 50
		# 	acc: 100
		# 	eff: "Power doubles if the user moves after the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# feint:
		# 	power: 30
		# 	priority: 2
		# 	acc: 100
		# 	eff: "Nullifies Detect, Protect, and Quick/Wide Guard"
		# 	flags:
		# 		mirror: 1
		# aquaRing:
		# 	type: "water"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "User recovers 1/16 max HP per turn"
		# 	flags:
		# 		snatch: 1
		# toxicSpikes:
		# 	type: "poison"
		# 	kind: "status"
		# 	target: "opponentsField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 20
		# 	eff: "Poisons grounded foes on switch-in. Max 2 layers"
		# 	flags:
		# 		reflectable: 1
		# 		nonsky: 1
		# powerTrick:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Switches user's Attack and Defense stats"
		# 	flags:
		# 		snatch: 1
		# closeCombat:
		# 	type: "fighting"
		# 	power: 120
		# 	effectChance: 100
		# 	statChanges:
		# 		def: -1
		# 		sdf: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "damageRaise"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Lowers the user's Defense and Sp.Def by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# healBlock:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "allOpponents"
		# 	meta:
		# 		ailment: "healBlock"
		# 		category: "ailment"
		# 		maxTurn: 5
		# 		minTurn: 5
		# 	acc: 100
		# 	pp: 15
		# 	eff: "For 5 turns, the foe(s) is prevented from healing"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# healingWish:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "User faints. Replacement is fully healed"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# suckerPunch:
		# 	type: "dark"
		# 	power: 70
		# 	priority: 1
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Usually goes first. Fails if target is not attacking"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# dragonPulse:
		# 	type: "dragon"
		# 	kind: "special"
		# 	power: 85
		# 	acc: 100
		# 	eff: "No additional effect"
		# 	flags:
		# 		protect: 1
		# 		pulse: 1
		# 		mirror: 1
		# 		distance: 1
		# aquaTail:
		# 	type: "water"
		# 	power: 90
		# 	acc: 90
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# seedBomb:
		# 	type: "grass"
		# 	power: 80
		# 	acc: 100
		# 	pp: 15
		# 	eff: "No additional effect"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# dragonRush:
		# 	type: "dragon"
		# 	power: 100
		# 	effectChance: 20
		# 	meta:
		# 		flinchChance: 20
		# 	acc: 75
		# 	eff: "20% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# xScissor:
		# 	text: "X-Scissor"
		# 	type: "bug"
		# 	power: 80
		# 	acc: 100
		# 	pp: 15
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# energyBall:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 90
		# 	effectChance: 10
		# 	statChanges:
		# 		sdf: -1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageLower"
		# 	acc: 100
		# 	eff: "10% chance to lower the target's Sp.Def by 1"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# switcheroo:
		# 	type: "dark"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	eff: "User switches its held item with the target's"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		mystery: 1
		# airSlash:
		# 	type: "flying"
		# 	kind: "special"
		# 	power: 75
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 95
		# 	pp: 15
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# powerGem:
		# 	type: "rock"
		# 	kind: "special"
		# 	power: 80
		# 	acc: 100
		# 	pp: 20
		# 	eff: "No additional effect"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# shadowClaw:
		# 	type: "ghost"
		# 	power: 70
		# 	meta:
		# 		critRate: 1
		# 	acc: 100
		# 	pp: 15
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# bulletPunch:
		# 	type: "steel"
		# 	power: 40
		# 	priority: 1
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Usually goes first"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		punch: 1
		# braveBird:
		# 	type: "flying"
		# 	power: 120
		# 	meta:
		# 		drain: -33
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Has 33% recoil"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# earthPower:
		# 	type: "ground"
		# 	kind: "special"
		# 	power: 90
		# 	effectChance: 10
		# 	statChanges:
		# 		sdf: -1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageLower"
		# 	acc: 100
		# 	eff: "10% chance to lower the target's Sp.Def by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# vacuumWave:
		# 	type: "fighting"
		# 	kind: "special"
		# 	power: 40
		# 	priority: 1
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Usually goes first"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# avalanche:
		# 	type: "ice"
		# 	power: 60
		# 	priority: -4
		# 	acc: 100
		# 	eff: "Power doubles if user is damaged by the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		drainPunch:
			type: "fighting"
			power: 75
			meta:
				category: "damageHeal"
				drain: 50
			acc: 100
			eff: "User recovers 50% of the damage dealt"
			flags:
				contact: 1
				protect: 1
				mirror: 1
				punch: 1
				heal: 1
		# bugBuzz:
		# 	type: "bug"
		# 	kind: "special"
		# 	power: 90
		# 	effectChance: 10
		# 	statChanges:
		# 		sdf: -1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageLower"
		# 	acc: 100
		# 	eff: "10% chance to lower the target's Sp.Def by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# focusBlast:
		# 	type: "fighting"
		# 	kind: "special"
		# 	power: 120
		# 	effectChance: 10
		# 	statChanges:
		# 		sdf: -1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageLower"
		# 	acc: 70
		# 	pp: 5
		# 	eff: "10% chance to lower the target's Sp.Def by 1"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# gigaImpact:
		# 	power: 150
		# 	acc: 90
		# 	pp: 5
		# 	eff: "User cannot move next turn"
		# 	flags:
		# 		contact: 1
		# 		recharge: 1
		# 		protect: 1
		# 		mirror: 1
		# nastyPlot:
		# 	type: "dark"
		# 	kind: "status"
		# 	statChanges:
		# 		sat: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Sp.Atk by 2"
		# 	flags:
		# 		snatch: 1
		fireFang:
			type: "fire"
			power: 65
			effectChance: 10
			meta:
				ailmentChance: 10
				flinchChance: 10
				ailment: "burn"
				category: "damageAilment"
			acc: 95
			pp: 15
			eff: "10% chance to burn. 10% chance to flinch"
			flags:
				bite: 1
				contact: 1
				protect: 1
				mirror: 1
		# zenHeadbutt:
		# 	type: "psychic"
		# 	power: 80
		# 	effectChance: 20
		# 	meta:
		# 		flinchChance: 20
		# 	acc: 90
		# 	pp: 15
		# 	eff: "20% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		thunderFang:
			type: "electric"
			power: 65
			effectChance: 10
			meta:
				ailmentChance: 10
				flinchChance: 10
				ailment: "paralysis"
				category: "damageAilment"
			acc: 95
			pp: 15
			eff: "10% chance to paralyze. 10% chance to flinch"
			flags:
				bite: 1
				contact: 1
				protect: 1
				mirror: 1
		# iceShard:
		# 	type: "ice"
		# 	power: 40
		# 	priority: 1
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Usually goes first"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# shadowSneak:
		# 	type: "ghost"
		# 	power: 40
		# 	priority: 1
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Usually goes first"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		iceFang:
			type: "ice"
			power: 65
			effectChance: 10
			meta:
				ailmentChance: 10
				flinchChance: 10
				ailment: "freeze"
				category: "damageAilment"
			acc: 95
			pp: 15
			eff: "10% chance to freeze. 10% chance to flinch"
			flags:
				bite: 1
				contact: 1
				protect: 1
				mirror: 1
		# trickRoom:
		# 	type: "psychic"
		# 	kind: "status"
		# 	priority: -7
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	pp: 5
		# 	eff: "For 5 turns, slower Pokemon move first"
		# 	flags:
		# 		mirror: 1
		# rockClimb:
		# 	power: 90
		# 	effectChance: 20
		# 	meta:
		# 		ailmentChance: 20
		# 		ailment: "confusion"
		# 		category: "damageAilment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 85
		# 	pp: 20
		# 	eff: "20% chance to confuse the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# mirrorShot:
		# 	type: "steel"
		# 	kind: "special"
		# 	power: 65
		# 	effectChance: 30
		# 	statChanges:
		# 		acc: -1
		# 	meta:
		# 		statChance: 30
		# 		category: "damageLower"
		# 	acc: 85
		# 	eff: "30% chance to lower the target's acc by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# mudBomb:
		# 	type: "ground"
		# 	kind: "special"
		# 	power: 65
		# 	effectChance: 30
		# 	statChanges:
		# 		acc: -1
		# 	meta:
		# 		statChance: 30
		# 		category: "damageLower"
		# 	acc: 85
		# 	eff: "30% chance to lower the target's acc by 1"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# dracoMeteor:
		# 	type: "dragon"
		# 	kind: "special"
		# 	power: 130
		# 	effectChance: 100
		# 	statChanges:
		# 		sat: -2
		# 	meta:
		# 		statChance: 100
		# 		category: "damageRaise"
		# 	acc: 90
		# 	pp: 5
		# 	eff: "Lowers the user's Sp.Atk by 2"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# psychoCut:
		# 	type: "psychic"
		# 	power: 70
		# 	meta:
		# 		critRate: 1
		# 	acc: 100
		# 	pp: 20
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# lavaPlume:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 80
		# 	effectChance: 30
		# 	target: "allOtherPokemon"
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "30% chance to burn adjacent Pokemon"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# leafStorm:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 130
		# 	effectChance: 100
		# 	statChanges:
		# 		sat: -2
		# 	meta:
		# 		statChance: 100
		# 		category: "damageRaise"
		# 	acc: 90
		# 	pp: 5
		# 	eff: "Lowers the user's Sp.Atk by 2"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# rockWrecker:
		# 	type: "rock"
		# 	power: 150
		# 	acc: 90
		# 	pp: 5
		# 	eff: "User cannot move next turn"
		# 	flags:
		# 		bullet: 1
		# 		recharge: 1
		# 		protect: 1
		# 		mirror: 1
		# defog:
		# 	type: "flying"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 15
		# 	eff: "-1 evasion; clears user and target side's hazards"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# flashCannon:
		# 	type: "steel"
		# 	kind: "special"
		# 	power: 80
		# 	effectChance: 10
		# 	statChanges:
		# 		sdf: -1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageLower"
		# 	acc: 100
		# 	eff: "10% chance to lower the target's Sp.Def by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# discharge:
		# 	type: "electric"
		# 	kind: "special"
		# 	power: 80
		# 	effectChance: 30
		# 	target: "allOtherPokemon"
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "30% chance to paralyze adjacent Pokemon"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# powerWhip:
		# 	type: "grass"
		# 	power: 120
		# 	acc: 85
		# 	eff: "No additional effect"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# crossPoison:
		# 	type: "poison"
		# 	power: 70
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 		critRate: 1
		# 	acc: 100
		# 	pp: 20
		# 	eff: "High critical hit ratio. 10% chance to poison"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# woodHammer:
		# 	type: "grass"
		# 	power: 120
		# 	meta:
		# 		drain: -33
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Has 33% recoil"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# chatter:
		# 	type: "flying"
		# 	kind: "special"
		# 	power: 65
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "confusion"
		# 		category: "damageAilment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 100
		# 	pp: 20
		# 	eff: "100% chance to confuse the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		distance: 1
		# 		authentic: 1
		# stealthRock:
		# 	type: "rock"
		# 	kind: "status"
		# 	target: "opponentsField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 20
		# 	eff: "Hurts foes on switch-in. Factors Rock weakness"
		# 	flags:
		# 		reflectable: 1
		# ironHead:
		# 	type: "steel"
		# 	power: 80
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 100
		# 	pp: 15
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# gunkShot:
		# 	type: "poison"
		# 	power: 120
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 	acc: 80
		# 	pp: 5
		# 	eff: "30% chance to poison the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# chargeBeam:
		# 	type: "electric"
		# 	kind: "special"
		# 	power: 50
		# 	effectChance: 70
		# 	statChanges:
		# 		sat: 1
		# 	meta:
		# 		statChance: 70
		# 		category: "damageRaise"
		# 	acc: 90
		# 	eff: "70% chance to raise the user's Sp.Atk by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# aquaJet:
		# 	type: "water"
		# 	power: 40
		# 	priority: 1
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Usually goes first"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# magnetBomb:
		# 	type: "steel"
		# 	power: 60
		# 	pp: 20
		# 	eff: "This move does not check acc"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# defendOrder:
		# 	type: "bug"
		# 	kind: "status"
		# 	statChanges:
		# 		def: 1
		# 		sdf: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	eff: "Raises the user's Defense and Sp.Def by 1"
		# 	flags:
		# 		snatch: 1
		# headSmash:
		# 	type: "rock"
		# 	power: 150
		# 	meta:
		# 		drain: -50
		# 	acc: 80
		# 	pp: 5
		# 	eff: "Has 1/2 recoil"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# captivate:
		# 	kind: "status"
		# 	statChanges:
		# 		sat: -2
		# 	target: "allOpponents"
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Lowers the foe(s) Sp.Atk by 2 if opposite gender"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# attackOrder:
		# 	type: "bug"
		# 	power: 90
		# 	meta:
		# 		critRate: 1
		# 	acc: 100
		# 	pp: 15
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# stoneEdge:
		# 	type: "rock"
		# 	power: 100
		# 	meta:
		# 		critRate: 1
		# 	acc: 80
		# 	pp: 5
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# judgment:
		# 	kind: "special"
		# 	power: 100
		# 	acc: 100
		# 	eff: "Type varies based on the held Plate"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# grassKnot:
		# 	type: "grass"
		# 	kind: "special"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "More power the heavier the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# telekinesis:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		ailment: "telekinesis"
		# 		category: "ailment"
		# 		maxTurn: 3
		# 		minTurn: 3
		# 	pp: 15
		# 	eff: "For 3 turns, target floats but moves can't miss it"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		gravity: 1
		# 		mystery: 1
		# roarOfTime:
		# 	text: "Roar of Time"
		# 	type: "dragon"
		# 	kind: "special"
		# 	power: 150
		# 	acc: 90
		# 	pp: 5
		# 	eff: "User cannot move next turn"
		# 	flags:
		# 		recharge: 1
		# 		protect: 1
		# 		mirror: 1
		# powerSplit:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Averages Attack and Sp.Atk stats with target"
		# 	flags:
		# 		protect: 1
		# 		mystery: 1
		# crushGrip:
		# 	acc: 100
		# 	pp: 5
		# 	eff: "More power the more HP the target has left"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# magicRoom:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	eff: "For 5 turns, all held items have no effect"
		# 	flags:
		# 		mirror: 1
		# darkVoid:
		# 	type: "dark"
		# 	kind: "status"
		# 	target: "allOpponents"
		# 	meta:
		# 		ailment: "sleep"
		# 		category: "ailment"
		# 		maxTurn: 4
		# 		minTurn: 2
		# 	acc: 50
		# 	eff: "Darkrai: Puts the foe(s) to sleep"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# lunarDance:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "User faints. Replacement is fully healed, with PP"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# 		dance: 1
		# guardSplit:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Averages Defense and Sp.Def stats with target"
		# 	flags:
		# 		protect: 1
		# 		mystery: 1
		# stormThrow:
		# 	type: "fighting"
		# 	power: 60
		# 	meta:
		# 		critRate: 6
		# 	acc: 100
		# 	eff: "Always results in a critical hit"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# autotomize:
		# 	type: "steel"
		# 	kind: "status"
		# 	statChanges:
		# 		spe: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 15
		# 	eff: "Raises the user's Speed by 2; user loses 100 kg"
		# 	flags:
		# 		snatch: 1
		# healOrder:
		# 	type: "bug"
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "heal"
		# 		healing: 50
		# 	eff: "Heals the user by 50% of its max HP"
		# 	flags:
		# 		snatch: 1
		# 		heal: 1
		# bugBite:
		# 	type: "bug"
		# 	power: 60
		# 	acc: 100
		# 	pp: 20
		# 	eff: "User steals and eats the target's Berry"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# doubleHit:
		# 	power: 35
		# 	meta:
		# 		maxHit: 2
		# 	acc: 90
		# 	eff: "Hits 2 times in one turn"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# smackDown:
		# 	type: "rock"
		# 	power: 50
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "grounded"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Removes the target's Ground immunity"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# spacialRend:
		# 	type: "dragon"
		# 	kind: "special"
		# 	power: 100
		# 	meta:
		# 		critRate: 1
		# 	acc: 95
		# 	pp: 5
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# ragePowder:
		# 	type: "bug"
		# 	kind: "status"
		# 	priority: 2
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "The foes' moves target the user on the turn used"
		# 	flags:
		# 		powder: 1
		# venoshock:
		# 	type: "poison"
		# 	kind: "special"
		# 	power: 65
		# 	acc: 100
		# 	eff: "Power doubles if the target is poisoned"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# sludgeWave:
		# 	type: "poison"
		# 	kind: "special"
		# 	power: 95
		# 	effectChance: 10
		# 	target: "allOtherPokemon"
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "poison"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	eff: "10% chance to poison adjacent Pokemon"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# seedFlare:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 120
		# 	effectChance: 40
		# 	statChanges:
		# 		sdf: -2
		# 	meta:
		# 		statChance: 40
		# 		category: "damageLower"
		# 	acc: 85
		# 	pp: 5
		# 	eff: "40% chance to lower the target's Sp.Def by 2"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# honeClaws:
		# 	type: "dark"
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 1
		# 		acc: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 15
		# 	eff: "Raises the user's Attack and acc by 1"
		# 	flags:
		# 		snatch: 1
		# wideGuard:
		# 	type: "rock"
		# 	kind: "status"
		# 	priority: 3
		# 	target: "usersField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	eff: "Protects allies from multi-target moves this turn"
		# 	flags:
		# 		snatch: 1
		# magmaStorm:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 100
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "trap"
		# 		category: "damageAilment"
		# 		maxTurn: 6
		# 		minTurn: 5
		# 	acc: 75
		# 	pp: 5
		# 	eff: "Traps and damages the target for 4-5 turns"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# wonderRoom:
		# 	type: "psychic"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	eff: "For 5 turns, all Defense and Sp.Def stats switch"
		# 	flags:
		# 		mirror: 1
		# shadowForce:
		# 	type: "ghost"
		# 	power: 120
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Disappears turn 1. Hits turn 2. Breaks protection"
		# 	flags:
		# 		contact: 1
		# 		charge: 1
		# 		mirror: 1
		# heavySlam:
		# 	type: "steel"
		# 	acc: 100
		# 	eff: "More power the heavier the user than the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# synchronoise:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 120
		# 	target: "allOtherPokemon"
		# 	acc: 100
		# 	eff: "Hits adjacent Pokemon sharing the user's type"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# psyshock:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 80
		# 	acc: 100
		# 	eff: "Damages target based on Defense, not Sp.Def"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# quiverDance:
		# 	type: "bug"
		# 	kind: "status"
		# 	statChanges:
		# 		sat: 1
		# 		sdf: 1
		# 		spe: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises the user's Sp.Atk, Sp.Def, Speed by 1"
		# 	flags:
		# 		snatch: 1
		# 		dance: 1
		# ominousWind:
		# 	type: "ghost"
		# 	kind: "special"
		# 	power: 60
		# 	effectChance: 10
		# 	statChanges:
		# 		atk: 1
		# 		def: 1
		# 		sat: 1
		# 		sdf: 1
		# 		spe: 1
		# 	meta:
		# 		ailmentChance: 10
		# 		statChance: 10
		# 		category: "damageRaise"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "10% chance to raise all stats by 1 (not acc/eva)"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# flameBurst:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 70
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Damages Pokemon next to the target as well"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# electroBall:
		# 	type: "electric"
		# 	kind: "special"
		# 	acc: 100
		# 	eff: "More power the faster the user is than the target"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# coil:
		# 	type: "poison"
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 1
		# 		def: 1
		# 		acc: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises user's Attack, Defense, and acc by 1"
		# 	flags:
		# 		snatch: 1
		# flameCharge:
		# 	type: "fire"
		# 	power: 50
		# 	effectChance: 100
		# 	statChanges:
		# 		spe: 1
		# 	meta:
		# 		statChance: 100
		# 		category: "damageRaise"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "100% chance to raise the user's Speed by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# soak:
		# 	type: "water"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Changes the target's type to Water"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# echoedVoice:
		# 	kind: "special"
		# 	power: 40
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Power increases when used on consecutive turns"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# foulPlay:
		# 	type: "dark"
		# 	power: 95
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Uses target's Attack stat in damage calculation"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# lowSweep:
		# 	type: "fighting"
		# 	power: 65
		# 	effectChance: 100
		# 	statChanges:
		# 		spe: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "100% chance to lower the target's Speed by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# acidSpray:
		# 	type: "poison"
		# 	kind: "special"
		# 	power: 40
		# 	effectChance: 100
		# 	statChanges:
		# 		sdf: -2
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "100% chance to lower the target's Sp.Def by 2"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# entrainment:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "The target's Ability changes to match the user's"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# afterYou:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 15
		# 	eff: "The target makes its move right after the user"
		# 	flags:
		# 		authentic: 1
		# 		mystery: 1
		# chipAway:
		# 	power: 70
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Ignores the target's stat stage changes"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# simpleBeam:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "The target's Ability becomes Simple"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# round:
		# 	kind: "special"
		# 	power: 60
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Power doubles if others used Round this turn"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# clearSmog:
		# 	type: "poison"
		# 	kind: "special"
		# 	power: 50
		# 	pp: 15
		# 	eff: "Eliminates the target's stat changes"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# allySwitch:
		# 	type: "psychic"
		# 	kind: "status"
		# 	priority: 2
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 15
		# 	eff: "The user swaps positions with its ally"
		# shiftGear:
		# 	type: "steel"
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 1
		# 		spe: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	eff: "Raises the user's Speed by 2 and Attack by 1"
		# 	flags:
		# 		snatch: 1
		# skyDrop:
		# 	type: "flying"
		# 	power: 60
		# 	acc: 100
		# 	eff: "User and foe fly up turn 1. Damages on turn 2"
		# 	flags:
		# 		contact: 1
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		# 		gravity: 1
		# 		distance: 1
		# shellSmash:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 15
		# 	eff: "Lowers Def, SpD by 1; raises Atk, SpA, Spe by 2"
		# 	flags:
		# 		snatch: 1
		# incinerate:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 60
		# 	target: "allOpponents"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Destroys the foe(s) Berry/Gem"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# acrobatics:
		# 	type: "flying"
		# 	power: 55
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Power doubles if the user has no held item"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# bestow:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 15
		# 	eff: "User passes its held item to the target"
		# 	flags:
		# 		mirror: 1
		# 		authentic: 1
		# 		mystery: 1
		# finalGambit:
		# 	type: "fighting"
		# 	kind: "special"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Does damage equal to the user's HP. User faints"
		# 	flags:
		# 		protect: 1
		# storedPower:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 20
		# 	acc: 100
		# 	eff: "+20 power for each of the user's stat boosts"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# quickGuard:
		# 	type: "fighting"
		# 	kind: "status"
		# 	priority: 3
		# 	target: "usersField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 15
		# 	eff: "Protects allies from priority attacks this turn"
		# 	flags:
		# 		snatch: 1
		# circleThrow:
		# 	type: "fighting"
		# 	power: 60
		# 	priority: -6
		# 	acc: 90
		# 	eff: "Forces the target to switch to a random ally"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# reflectType:
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 15
		# 	eff: "User becomes the same type as the target"
		# 	flags:
		# 		protect: 1
		# 		authentic: 1
		# 		mystery: 1
		# scald:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 80
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "30% chance to burn the target. Thaws target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		defrost: 1
		# waterPledge:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 80
		# 	acc: 100
		# 	eff: "Use with Grass or Fire Pledge for added effect"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# quash:
		# 	type: "dark"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Forces the target to move last this turn"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# healPulse:
		# 	type: "psychic"
		# 	kind: "status"
		# 	meta:
		# 		category: "heal"
		# 		healing: 50
		# 	eff: "Heals the target by 50% of its max HP"
		# 	flags:
		# 		protect: 1
		# 		pulse: 1
		# 		reflectable: 1
		# 		distance: 1
		# 		heal: 1
		# 		mystery: 1
		# inferno:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 100
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 50
		# 	pp: 5
		# 	eff: "100% chance to burn the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# hex:
		# 	type: "ghost"
		# 	kind: "special"
		# 	power: 65
		# 	acc: 100
		# 	eff: "Power doubles if the target has a status ailment"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# retaliate:
		# 	power: 70
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Power doubles if an ally fainted last turn"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# struggleBug:
		# 	type: "bug"
		# 	kind: "special"
		# 	power: 50
		# 	effectChance: 100
		# 	statChanges:
		# 		sat: -1
		# 	target: "allOpponents"
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "100% chance to lower the foe(s) Sp.Atk by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# fieryDance:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 80
		# 	effectChance: 50
		# 	statChanges:
		# 		sat: 1
		# 	meta:
		# 		statChance: 50
		# 		category: "damageRaise"
		# 	acc: 100
		# 	eff: "50% chance to raise the user's Sp.Atk by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		dance: 1
		# dragonTail:
		# 	type: "dragon"
		# 	power: 60
		# 	priority: -6
		# 	acc: 90
		# 	eff: "Forces the target to switch to a random ally"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# hornLeech:
		# 	type: "grass"
		# 	power: 75
		# 	meta:
		# 		category: "damageHeal"
		# 		drain: 50
		# 	acc: 100
		# 	eff: "User recovers 50% of the damage dealt"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		heal: 1
		# voltSwitch:
		# 	type: "electric"
		# 	kind: "special"
		# 	power: 70
		# 	acc: 100
		# 	pp: 20
		# 	eff: "User switches out after damaging the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# leafTornado:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 65
		# 	effectChance: 50
		# 	statChanges:
		# 		acc: -1
		# 	meta:
		# 		statChance: 50
		# 		category: "damageLower"
		# 	acc: 90
		# 	eff: "50% chance to lower the target's acc by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# firePledge:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 80
		# 	acc: 100
		# 	eff: "Use with Grass or Water Pledge for added effect"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# frostBreath:
		# 	type: "ice"
		# 	kind: "special"
		# 	power: 60
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		critRate: 6
		# 	acc: 90
		# 	eff: "Always results in a critical hit"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# heatCrash:
		# 	type: "fire"
		# 	acc: 100
		# 	eff: "More power the heavier the user than the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# dualChop:
		# 	type: "dragon"
		# 	power: 40
		# 	meta:
		# 		maxHit: 2
		# 	acc: 90
		# 	pp: 15
		# 	eff: "Hits 2 times in one turn"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# heartStamp:
		# 	type: "psychic"
		# 	power: 60
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 100
		# 	pp: 25
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# wildCharge:
		# 	type: "electric"
		# 	power: 90
		# 	meta:
		# 		drain: -25
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Has 1/4 recoil"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# steamroller:
		# 	type: "bug"
		# 	power: 65
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 100
		# 	pp: 20
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# electroweb:
		# 	type: "electric"
		# 	kind: "special"
		# 	power: 55
		# 	effectChance: 100
		# 	statChanges:
		# 		spe: -1
		# 	target: "allOpponents"
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 95
		# 	pp: 15
		# 	eff: "100% chance to lower the foe(s) Speed by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# bulldoze:
		# 	type: "ground"
		# 	power: 60
		# 	effectChance: 100
		# 	statChanges:
		# 		spe: -1
		# 	target: "allOtherPokemon"
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "100% chance to lower adjacent Pkmn Speed by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# grassPledge:
		# 	type: "grass"
		# 	kind: "special"
		# 	power: 80
		# 	acc: 100
		# 	eff: "Use with Fire or Water Pledge for added effect"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# cottonGuard:
		# 	type: "grass"
		# 	kind: "status"
		# 	statChanges:
		# 		def: 3
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	eff: "Raises the user's Defense by 3"
		# 	flags:
		# 		snatch: 1
		# workUp:
		# 	kind: "status"
		# 	statChanges:
		# 		atk: 1
		# 		sat: 1
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 30
		# 	eff: "Raises the user's Attack and Sp.Atk by 1"
		# 	flags:
		# 		snatch: 1
		# sacredSword:
		# 	type: "fighting"
		# 	power: 90
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Ignores the target's stat stage changes"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# gearGrind:
		# 	type: "steel"
		# 	power: 50
		# 	meta:
		# 		maxHit: 2
		# 	acc: 85
		# 	pp: 15
		# 	eff: "Hits 2 times in one turn"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# tailSlap:
		# 	power: 25
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 85
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# drillRun:
		# 	type: "ground"
		# 	power: 80
		# 	meta:
		# 		critRate: 1
		# 	acc: 95
		# 	eff: "High critical hit ratio"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# razorShell:
		# 	type: "water"
		# 	power: 75
		# 	effectChance: 50
		# 	statChanges:
		# 		def: -1
		# 	meta:
		# 		statChance: 50
		# 		category: "damageLower"
		# 	acc: 95
		# 	eff: "50% chance to lower the target's Defense by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# hurricane:
		# 	type: "flying"
		# 	kind: "special"
		# 	power: 110
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "confusion"
		# 		category: "damageAilment"
		# 		maxTurn: 5
		# 		minTurn: 2
		# 	acc: 70
		# 	eff: "30% chance to confuse target. Can't miss in rain"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# nightDaze:
		# 	type: "dark"
		# 	kind: "special"
		# 	power: 85
		# 	effectChance: 40
		# 	statChanges:
		# 		acc: -1
		# 	meta:
		# 		statChance: 40
		# 		category: "damageLower"
		# 	acc: 95
		# 	eff: "40% chance to lower the target's acc by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# psystrike:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 100
		# 	acc: 100
		# 	eff: "Damages target based on Defense, not Sp.Def"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# headCharge:
		# 	power: 120
		# 	meta:
		# 		drain: -25
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Has 1/4 recoil"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# snarl:
		# 	type: "dark"
		# 	kind: "special"
		# 	power: 55
		# 	effectChance: 100
		# 	statChanges:
		# 		sat: -1
		# 	target: "allOpponents"
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 95
		# 	pp: 15
		# 	eff: "100% chance to lower the foe(s) Sp.Atk by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# icicleCrash:
		# 	type: "ice"
		# 	power: 85
		# 	effectChance: 30
		# 	meta:
		# 		flinchChance: 30
		# 	acc: 90
		# 	eff: "30% chance to flinch the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# iceBurn:
		# 	type: "ice"
		# 	kind: "special"
		# 	power: 140
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 90
		# 	pp: 5
		# 	eff: "Charges turn 1. Hits turn 2. 30% burn"
		# 	flags:
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		# blueFlare:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 130
		# 	effectChance: 20
		# 	meta:
		# 		ailmentChance: 20
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 85
		# 	pp: 5
		# 	eff: "20% chance to burn the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# freezeShock:
		# 	type: "ice"
		# 	power: 140
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 90
		# 	pp: 5
		# 	eff: "Charges turn 1. Hits turn 2. 30% paralyze"
		# 	flags:
		# 		charge: 1
		# 		protect: 1
		# 		mirror: 1
		# boltStrike:
		# 	type: "electric"
		# 	power: 130
		# 	effectChance: 20
		# 	meta:
		# 		ailmentChance: 20
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 85
		# 	pp: 5
		# 	eff: "20% chance to paralyze the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# technoBlast:
		# 	kind: "special"
		# 	power: 120
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Type varies based on the held Drive"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# searingShot:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 100
		# 	effectChance: 30
		# 	target: "allOtherPokemon"
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "30% chance to burn adjacent Pokemon"
		# 	flags:
		# 		bullet: 1
		# 		protect: 1
		# 		mirror: 1
		# glaciate:
		# 	type: "ice"
		# 	kind: "special"
		# 	power: 65
		# 	effectChance: 100
		# 	statChanges:
		# 		spe: -1
		# 	target: "allOpponents"
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 95
		# 	eff: "100% chance to lower the foe(s) Speed by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# secretSword:
		# 	type: "fighting"
		# 	kind: "special"
		# 	power: 85
		# 	acc: 100
		# 	eff: "Damages target based on Defense, not Sp.Def"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# relicSong:
		# 	kind: "special"
		# 	power: 75
		# 	effectChance: 10
		# 	target: "allOpponents"
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "sleep"
		# 		category: "damageAilment"
		# 		maxTurn: 4
		# 		minTurn: 2
		# 	acc: 100
		# 	eff: "10% chance to sleep foe(s). Meloetta transforms"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# vCreate:
		# 	text: "V-create"
		# 	type: "fire"
		# 	power: 180
		# 	effectChance: 100
		# 	statChanges:
		# 		def: -1
		# 		sdf: -1
		# 		spe: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "damageRaise"
		# 	acc: 95
		# 	pp: 5
		# 	eff: "Lowers the user's Defense, Sp.Def, Speed by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# fusionBolt:
		# 	type: "electric"
		# 	power: 100
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Power doubles if used after Fusion Flare"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# stickyWeb:
		# 	type: "bug"
		# 	kind: "status"
		# 	target: "opponentsField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	pp: 20
		# 	eff: "Lowers Speed of grounded foes by 1 on switch-in"
		# 	flags:
		# 		reflectable: 1
		# phantomForce:
		# 	type: "ghost"
		# 	power: 90
		# 	acc: 100
		# 	eff: "Disappears turn 1. Hits turn 2. Breaks protection"
		# 	flags:
		# 		contact: 1
		# 		charge: 1
		# 		mirror: 1
		# belch:
		# 	type: "poison"
		# 	kind: "special"
		# 	power: 120
		# 	acc: 90
		# 	eff: "Cannot be selected until the user eats a Berry"
		# 	flags:
		# 		protect: 1
		# flyingPress:
		# 	type: "fighting"
		# 	power: 100
		# 	acc: 95
		# 	eff: "Combines Flying in its type effectiveness"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		gravity: 1
		# 		distance: 1
		# 		nonsky: 1
		# fellStinger:
		# 	type: "bug"
		# 	power: 50
		# 	acc: 100
		# 	pp: 25
		# 	eff: "Raises user's Attack by 3 if this KOes the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# celebrate:
		# 	kind: "status"
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	pp: 40
		# 	eff: "No competitive use. Or any use"
		# nobleRoar:
		# 	kind: "status"
		# 	effectChance: 100
		# 	statChanges:
		# 		atk: -1
		# 		sat: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Lowers the target's Attack and Sp.Atk by 1"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# matBlock:
		# 	type: "fighting"
		# 	kind: "status"
		# 	target: "usersField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	eff: "Protects allies from attacks. First turn out only"
		# 	flags:
		# 		snatch: 1
		# 		nonsky: 1
		# trickOrTreat:
		# 	text: "Trick-or-Treat"
		# 	type: "ghost"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Adds Ghost to the target's type(s)"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# fusionFlare:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 100
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Power doubles if used after Fusion Bolt"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		defrost: 1
		# rototiller:
		# 	type: "ground"
		# 	kind: "status"
		# 	effectChance: 100
		# 	statChanges:
		# 		atk: 1
		# 		sat: 1
		# 	target: "allPokemon"
		# 	meta:
		# 		statChance: 100
		# 		category: "netGoodStats"
		# 	eff: "Raises Atk, Sp.Atk of grounded Grass types by 1"
		# 	flags:
		# 		distance: 1
		# 		nonsky: 1
		# holdBack:
		# 	power: 40
		# 	acc: 100
		# 	pp: 40
		# 	eff: "Always leaves the target with at least 1 HP"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# petalBlizzard:
		# 	type: "grass"
		# 	power: 90
		# 	target: "allOtherPokemon"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "No additional effect. Hits adjacent Pokemon"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# drainingKiss:
		# 	type: "fairy"
		# 	kind: "special"
		# 	power: 50
		# 	meta:
		# 		category: "damageHeal"
		# 		drain: 75
		# 	acc: 100
		# 	eff: "User recovers 75% of the damage dealt"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		heal: 1
		# freezeDry:
		# 	text: "Freeze-Dry"
		# 	type: "ice"
		# 	kind: "special"
		# 	power: 70
		# 	effectChance: 10
		# 	meta:
		# 		ailmentChance: 10
		# 		ailment: "freeze"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "10% chance to freeze. Super effective on Water"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# mistyTerrain:
		# 	type: "fairy"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	eff: "5 turns. Can't status, -Dragon power vs grounded"
		# 	flags:
		# 		nonsky: 1
		# parabolicCharge:
		# 	type: "electric"
		# 	kind: "special"
		# 	power: 65
		# 	target: "allOtherPokemon"
		# 	meta:
		# 		category: "damageHeal"
		# 		drain: 50
		# 	acc: 100
		# 	pp: 20
		# 	eff: "User recovers 50% of the damage dealt"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		heal: 1
		# partingShot:
		# 	type: "dark"
		# 	kind: "status"
		# 	effectChance: 100
		# 	statChanges:
		# 		atk: -1
		# 		sat: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Lowers target's Atk, Sp.Atk by 1. User switches"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# fairyLock:
		# 	type: "fairy"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	eff: "Prevents all Pokemon from switching next turn"
		# 	flags:
		# 		mirror: 1
		# 		authentic: 1
		# geomancy:
		# 	type: "fairy"
		# 	kind: "status"
		# 	statChanges:
		# 		sat: 2
		# 		sdf: 2
		# 		spe: 2
		# 	target: "user"
		# 	meta:
		# 		category: "netGoodStats"
		# 	eff: "Charges, then raises SpA, SpD, Spe by 2 turn 2"
		# 	flags:
		# 		charge: 1
		# 		nonsky: 1
		# oblivionWing:
		# 	type: "flying"
		# 	kind: "special"
		# 	power: 80
		# 	meta:
		# 		category: "damageHeal"
		# 		drain: 75
		# 	acc: 100
		# 	eff: "User recovers 75% of the damage dealt"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# 		heal: 1
		# topsyTurvy:
		# 	text: "Topsy-Turvy"
		# 	type: "dark"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "Inverts the target's stat stages"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# grassyTerrain:
		# 	type: "grass"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	eff: "5 turns. Grounded: +Grass power, +1/16 max HP"
		# 	flags:
		# 		nonsky: 1
		# flowerShield:
		# 	type: "fairy"
		# 	kind: "status"
		# 	effectChance: 100
		# 	statChanges:
		# 		def: 1
		# 	target: "allPokemon"
		# 	meta:
		# 		statChance: 100
		# 		category: "unique"
		# 	eff: "Raises Defense by 1 of all active Grass types"
		# 	flags:
		# 		distance: 1
		# steamEruption:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 110
		# 	effectChance: 30
		# 	meta:
		# 		ailmentChance: 30
		# 		ailment: "burn"
		# 		category: "damageAilment"
		# 	acc: 95
		# 	pp: 5
		# 	eff: "30% chance to burn the target"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		defrost: 1
		# kingsShield:
		# 	text: "King\u2019s Shield"
		# 	type: "steel"
		# 	kind: "status"
		# 	priority: 4
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Protects from attacks. Contact: lowers Atk by 2"
		# powerUpPunch:
		# 	text: "Power-Up Punch"
		# 	type: "fighting"
		# 	power: 40
		# 	effectChance: 100
		# 	statChanges:
		# 		atk: 1
		# 	meta:
		# 		statChance: 100
		# 		category: "damageRaise"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "100% chance to raise the user's Attack by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		punch: 1
		# eerieImpulse:
		# 	type: "electric"
		# 	kind: "status"
		# 	statChanges:
		# 		sat: -2
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "Lowers the target's Sp.Atk by 2"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# magneticFlux:
		# 	type: "electric"
		# 	kind: "status"
		# 	statChanges:
		# 		def: 1
		# 		sdf: 1
		# 	target: "userAndAllies"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises Def, Sp.Def of allies with Plus/Minus by 1"
		# 	flags:
		# 		snatch: 1
		# 		distance: 1
		# 		authentic: 1
		# holdHands:
		# 	kind: "status"
		# 	target: "ally"
		# 	meta:
		# 		category: "unique"
		# 	pp: 40
		# 	eff: "No competitive use. Or any use"
		# 	flags:
		# 		authentic: 1
		# babyDollEyes:
		# 	text: "Baby-Doll Eyes"
		# 	type: "fairy"
		# 	kind: "status"
		# 	priority: 1
		# 	statChanges:
		# 		atk: -1
		# 	meta:
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 30
		# 	eff: "Lowers the target's Attack by 1"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# disarmingVoice:
		# 	type: "fairy"
		# 	kind: "special"
		# 	power: 40
		# 	target: "allOpponents"
		# 	pp: 15
		# 	eff: "This move does not check acc. Hits foes"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# forestsCurse:
		# 	text: "Forest\u2019s Curse"
		# 	type: "grass"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Adds Grass to the target's type(s)"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		mystery: 1
		# ionDeluge:
		# 	type: "electric"
		# 	kind: "status"
		# 	priority: 1
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	pp: 25
		# 	eff: "Normal moves become Electric type this turn"
		# playRough:
		# 	type: "fairy"
		# 	power: 90
		# 	effectChance: 10
		# 	statChanges:
		# 		atk: -1
		# 	meta:
		# 		statChance: 10
		# 		category: "damageLower"
		# 	acc: 90
		# 	eff: "10% chance to lower the target's Attack by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# craftyShield:
		# 	type: "fairy"
		# 	kind: "status"
		# 	priority: 3
		# 	target: "usersField"
		# 	meta:
		# 		category: "fieldEffect"
		# 	eff: "Protects allies from Status moves this turn"
		# electrify:
		# 	type: "electric"
		# 	kind: "status"
		# 	meta:
		# 		category: "unique"
		# 	pp: 20
		# 	eff: "Changes the target's move to Electric this turn"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		mystery: 1
		# diamondStorm:
		# 	type: "rock"
		# 	power: 100
		# 	effectChance: 50
		# 	statChanges:
		# 		def: 1
		# 	target: "allOpponents"
		# 	meta:
		# 		statChance: 50
		# 		category: "damageRaise"
		# 	acc: 95
		# 	pp: 5
		# 	eff: "50% chance to raise user's Def by 2 for each hit"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# powder:
		# 	type: "bug"
		# 	kind: "status"
		# 	priority: 1
		# 	meta:
		# 		category: "unique"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "If using a Fire move, target loses 1/4 max HP"
		# 	flags:
		# 		powder: 1
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# venomDrench:
		# 	type: "poison"
		# 	kind: "status"
		# 	effectChance: 100
		# 	statChanges:
		# 		atk: -1
		# 		sat: -1
		# 		spe: -1
		# 	target: "allOpponents"
		# 	meta:
		# 		statChance: 100
		# 		category: "netGoodStats"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Lowers Atk, Sp.Atk, Speed of poisoned foes by 1"
		# 	flags:
		# 		protect: 1
		# 		reflectable: 1
		# 		mirror: 1
		# electricTerrain:
		# 	type: "electric"
		# 	kind: "status"
		# 	target: "entireField"
		# 	meta:
		# 		category: "wholeFieldEffect"
		# 	eff: "5 turns. Grounded: +Electric power, can't sleep"
		# 	flags:
		# 		nonsky: 1
		# spikyShield:
		# 	type: "grass"
		# 	kind: "status"
		# 	priority: 4
		# 	target: "user"
		# 	meta:
		# 		category: "unique"
		# 	eff: "Protects from moves. Contact: loses 1/8 max HP"
		# hyperspaceHole:
		# 	type: "psychic"
		# 	kind: "special"
		# 	power: 80
		# 	pp: 5
		# 	eff: "Breaks the target's protection for this turn"
		# 	flags:
		# 		mirror: 1
		# 		authentic: 1
		# playNice:
		# 	kind: "status"
		# 	effectChance: 100
		# 	statChanges:
		# 		atk: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Lowers the target's Attack by 1"
		# 	flags:
		# 		reflectable: 1
		# 		mirror: 1
		# 		authentic: 1
		# waterShuriken:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 15
		# 	priority: 1
		# 	meta:
		# 		maxHit: 5
		# 		minHit: 2
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Hits 2-5 times in one turn"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# mysticalFire:
		# 	type: "fire"
		# 	kind: "special"
		# 	power: 75
		# 	effectChance: 100
		# 	statChanges:
		# 		sat: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "damageLower"
		# 	acc: 100
		# 	eff: "100% chance to lower the target's Sp.Atk by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# aromaticMist:
		# 	type: "fairy"
		# 	kind: "status"
		# 	statChanges:
		# 		sdf: 1
		# 	target: "ally"
		# 	meta:
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Raises an ally's Sp.Def by 1"
		# 	flags:
		# 		authentic: 1
		# confide:
		# 	kind: "status"
		# 	effectChance: 100
		# 	statChanges:
		# 		sat: -1
		# 	meta:
		# 		statChance: 100
		# 		category: "netGoodStats"
		# 	pp: 20
		# 	eff: "Lowers the target's Sp.Atk by 1"
		# 	flags:
		# 		reflectable: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# boomburst:
		# 	kind: "special"
		# 	power: 140
		# 	target: "allOtherPokemon"
		# 	acc: 100
		# 	eff: "No additional effect. Hits adjacent Pokemon"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		sound: 1
		# 		authentic: 1
		# fairyWind:
		# 	type: "fairy"
		# 	kind: "special"
		# 	power: 40
		# 	acc: 100
		# 	pp: 30
		# 	eff: "No additional effect"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# moonblast:
		# 	type: "fairy"
		# 	kind: "special"
		# 	power: 95
		# 	effectChance: 30
		# 	statChanges:
		# 		sat: -1
		# 	meta:
		# 		statChance: 30
		# 		category: "damageLower"
		# 	acc: 100
		# 	pp: 15
		# 	eff: "30% chance to lower the target's Sp.Atk by 1"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# hyperspaceFury:
		# 	type: "dark"
		# 	power: 100
		# 	effectChance: 100
		# 	meta:
		# 		category: "damageRaise"
		# 	pp: 5
		# 	eff: "Hoopa-U: Lowers user's Def by 1; breaks protection"
		# 	flags:
		# 		mirror: 1
		# 		authentic: 1
		# dazzlingGleam:
		# 	type: "fairy"
		# 	kind: "special"
		# 	power: 80
		# 	target: "allOpponents"
		# 	acc: 100
		# 	eff: "No additional effect. Hits adjacent foes"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# precipiceBlades:
		# 	type: "ground"
		# 	power: 120
		# 	target: "allOpponents"
		# 	acc: 85
		# 	eff: "No additional effect. Hits adjacent foes"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# thousandArrows:
		# 	type: "ground"
		# 	power: 90
		# 	effectChance: 100
		# 	target: "allOpponents"
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "grounded"
		# 	acc: 100
		# 	eff: "Grounds adjacent foes. First hit neutral on Flying"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# happyHour:
		# 	kind: "status"
		# 	target: "usersField"
		# 	meta:
		# 		category: "unique"
		# 	pp: 30
		# 	eff: "No competitive use"
		# nuzzle:
		# 	type: "electric"
		# 	power: 20
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "paralysis"
		# 		category: "damageAilment"
		# 	acc: 100
		# 	pp: 20
		# 	eff: "100% chance to paralyze the target"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# landsWrath:
		# 	text: "Land\u2019s Wrath"
		# 	type: "ground"
		# 	power: 90
		# 	target: "allOpponents"
		# 	acc: 100
		# 	eff: "No additional effect. Hits adjacent foes"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# dragonAscent:
		# 	type: "flying"
		# 	power: 120
		# 	effectChance: 100
		# 	statChanges:
		# 		def: -1
		# 		sdf: -1
		# 	meta:
		# 		category: "damageRaise"
		# 	acc: 100
		# 	pp: 5
		# 	eff: "Lowers the user's Defense and Sp.Def by 1"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# 		distance: 1
		# infestation:
		# 	type: "bug"
		# 	kind: "special"
		# 	power: 20
		# 	effectChance: 100
		# 	meta:
		# 		ailmentChance: 100
		# 		ailment: "trap"
		# 		category: "damageAilment"
		# 		maxTurn: 6
		# 		minTurn: 5
		# 	acc: 100
		# 	pp: 20
		# 	eff: "Traps and damages the target for 4-5 turns"
		# 	flags:
		# 		contact: 1
		# 		protect: 1
		# 		mirror: 1
		# thousandWaves:
		# 	type: "ground"
		# 	power: 90
		# 	target: "allOpponents"
		# 	acc: 100
		# 	eff: "Hits adjacent foes. Prevents them from switching"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
		# 		nonsky: 1
		# originPulse:
		# 	type: "water"
		# 	kind: "special"
		# 	power: 110
		# 	target: "allOpponents"
		# 	acc: 85
		# 	eff: "No additional effect. Hits adjacent foes"
		# 	flags:
		# 		protect: 1
		# 		pulse: 1
		# 		mirror: 1
		# lightOfRuin:
		# 	text: "Light of Ruin"
		# 	type: "fairy"
		# 	kind: "special"
		# 	power: 140
		# 	meta:
		# 		drain: -50
		# 	acc: 90
		# 	pp: 5
		# 	eff: "Has 1/2 recoil"
		# 	flags:
		# 		protect: 1
		# 		mirror: 1
	ailment: ["burn", "freeze", "paralysis", "poison", "sleep"]
	metronomeNotSelect: [
		"afterYou"
		"assist"
		"banefulBunker"
		"beakBlast"
		"belch"
		"bestow"
		"celebrate"
		"chatter"
		"copycat"
		"counter"
		"covet"
		"craftyShield"
		"destinyBond"
		"detect"
		"diamondStorm"
		"dragonAscent"
		"endure"
		"feint"
		"fleurCannon"
		"focusPunch"
		"followMe"
		"freezeShock"
		"helpingHand"
		"holdHands"
		"hyperspaceFury"
		"hyperspaceHole"
		"iceBurn"
		"instruct"
		"kingsShield"
		"lightOfRuin"
		"matBlock"
		"meFirst"
		"metronome"
		"mimic"
		"mindBlown"
		"mirrorCoat"
		"mirrorMove"
		"naturePower"
		"originPulse"
		"photonGeyser"
		"plasmaFists"
		"precipiceBlades"
		"protect"
		"quash"
		"quickGuard"
		"ragePowder"
		"relicSong"
		"secretSword"
		"shellTrap"
		"sketch"
		"sleepTalk"
		"snarl"
		"snatch"
		"snore"
		"spectralThief"
		"spikyShield"
		"spotlight"
		"steamEruption"
		"struggle"
		"switcheroo"
		"technoBlast"
		"thief"
		"thousandArrows"
		"thousandWaves"
		"transform"
		"trick"
		"vCreate"
		"wideGuard"
	]

for k, move of Move.list
	move.name = k
	move.text ?= _.startCase k
	move.type ?= "normal"
	move.kind ?= "physical"
	move.power ?= 0
	move.priority ?= 0
	move.acc ?= yes
	move.pp ?= 10
	move.target ?= "selectedPokemon"
	move.effectChance ?= 0
	move.statChanges ?= []
	move.meta ?= {}
	move.meta.ailmentChance ?= 0
	move.meta.flinchChance ?= 0
	move.meta.category ?= "damage"
	move.meta.ailment ?= undefined
	move.meta.drain ?= 0
	move.meta.healing ?= 0
	move.meta.critRate ?= 0
	move.meta.maxHit ?= 1
	move.meta.minHit ?= 0
	move.meta.maxTurn ?= 1
	move.meta.minTurn ?= 1
	move.flags ?= {}

Move.keys = Object.keys Move.list
