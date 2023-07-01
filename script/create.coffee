create = ->
	field = @add.graphics()
	field.beginFill 0xf35145
	field.drawRect 0, 0, @world.centerX, @world.height
	field.beginFill 0x3792ce
	field.drawRect @world.centerX, 0, @world.centerX, @world.height
	field.beginFill 0x2d3748
	field.drawRect @world.centerX-128, @world.centerY-128, 256, 256
	field.drawRect @world.centerX-8, 0, 16, @world.height
	field.beginFill 0xcbd5e0
	field.drawRect @world.centerX-112, @world.centerY-112, 224, 224
	field.endFill()

	pkms = @add.group()
	pkms.updateOnlyExistingChildren = yes
	effs = @add.group()
	effs.updateOnlyExistingChildren = yes

	@input.addMoveCallback (pt, x, y) =>
		if pt.leftButton.isDown
			d = +(x < @world.centerX)
			pkm = new Pkm app.selPkdName, x, y, d, app.selTeam
		return

	@input.keyboard.onDownCallback = (event) =>
		unless event.repeat
			switch event.code
				when "Space"
					event.preventDefault()
					app.isShowPkd = not app.isShowPkd
		return
	return
