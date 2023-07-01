Stat =
	keys: ["hp", "atk", "def", "sat", "sdf", "spe"]
	stage:
		base: [2/8, 2/7, 2/6, 2/5, 2/4, 2/3, 1, 3/2, 4/2, 5/2, 6/2, 7/2, 8/2]
		acc: [3/9, 3/8, 3/7, 3/6, 3/5, 3/4, 1, 4/3, 5/3, 6/3, 7/3, 8/3, 9/3]

Stat.keysNoHp = Stat.keys[1..]
Stat.keysAccEva = [...Stat.keys, "acc", "eva"]
Stat.keysAccEvaNoHp = Stat.keysAccEva[1..]
