setTimer = (ms = 0, cb, ...args) =>
	game.time.events.add ms, cb, null, ...args

clearTimer = (timer) =>
	game.time.events.remove timer

game = new Phaser.Game
	width: innerWidth
	height: innerHeight
	renderer: Phaser.AUTO
	parent: "canvas"
	antialias: no
	roundPixels: yes
	state: {preload, create, update, render}
