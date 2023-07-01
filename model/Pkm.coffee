class Pkm extends Phaser.Sprite

	constructor: (pkdName, x, y, d, team, sprHpTint) ->
		super game, x, y, pkdName

		@pkd = Pkd.list[pkdName]
		@moves = _.sampleSize(@pkd.moves, 4).map (move) =>
			move = Move.list[move]
			used: move
			origin: move
			pp: move.pp
			enabled: yes
		@types = @pkd.types[..]
		@ability = _.sample @pkd.abilities
		@target = null
		@targets = {}
		@move = null
		@lastMoveUsed = null
		@ailment = no
		@ailments = {}
		@flinch = no
		@lv = _.random 98, 100
		@team = team
		@gender = ["male", "female"][+(_.random(7) < @pkd.genderRate)]
		@critStage = 0
		@meta =
			badlyPoison: 0
			wish: 0
		@stat =
			iv: hp: 0, atk: 0, def: 0, sat: 0, sdf: 0, spe: 0
			ev: hp: 0, atk: 0, def: 0, sat: 0, sdf: 0, spe: 0
			nature: atk: 1, def: 1, sat: 1, sdf: 1, spe: 1
			stage: atk: 0, def: 0, sat: 0, sdf: 0, spe: 0, acc: 0, eva: 0
			pkd: {...@pkd.stat}
			base: {}
		@accessor @stat.base,
			hp: => ((@stat.pkd.hp*2+@stat.iv.hp+@stat.ev.hp/4)*@lv/100)+@lv+10
			atk: => (((@stat.pkd.atk*2 + @stat.iv.atk + @stat.ev.atk/4)* @lv/100)+ 5)* @stat.nature.atk
			def: => (((@stat.pkd.def*2 + @stat.iv.def + @stat.ev.def/4)* @lv/100)+ 5)* @stat.nature.def
			sat: => (((@stat.pkd.sat*2 + @stat.iv.sat + @stat.ev.sat/4)* @lv/100)+ 5)* @stat.nature.sat
			sdf: => (((@stat.pkd.sdf*2 + @stat.iv.sdf + @stat.ev.sdf/4)* @lv/100)+ 5)* @stat.nature.sdf
			spe: => (((@stat.pkd.spe*2 + @stat.iv.spe + @stat.ev.spe/4)* @lv/100)+ 5)* @stat.nature.spe
		@accessor @stat,
			hp: =>
				hp = @stat.base.hp
				switch @ability
					when "wonderGuard"
						hp = 1
				hp
			atk: =>
				atk = @stat.base.atk * Stat.stage.base[@stat.stage.atk+6]
				switch @ability
					when "purePower", "hugePower"
						atk *= 2
					when "guts", "hustle"
						atk *= 1.5
					when "defeatist"
						atk /= 2 if @health <= @maxHealth/2
				atk
			def: =>
				def = @stat.base.def * Stat.stage.base[@stat.stage.def+6]
				switch @ability
					when "marvelScale"
						def *= 1.5
					when "furCoat"
						def *= 2
				def
			sat: =>
				sat = @stat.base.sat * Stat.stage.base[@stat.stage.sat+6]
				switch @ability
					when "defeatist"
						sat /= 2 if @health <= @maxHealth/2
				sat
			sdf: =>
				sdf = @stat.base.sdf * Stat.stage.base[@stat.stage.sdf+6]
				sdf
			spe: =>
				spe = @stat.base.spe * Stat.stage.base[@stat.stage.spe+6]
				spe
			acc: =>
				acc = Stat.stage.acc[@stat.stage.acc+6]
				acc
			eva: =>
				eva = Stat.stage.acc[6-@stat.stage.eva]
				eva
		@stat.nature[_.sample Stat.keysNoHp] = 1.1
		@stat.nature[_.sample Stat.keysNoHp] = .9

		@scale.set 2
		@anchor.set .5, .75
		@health = @maxHealth = @stat.hp
		@animations.add 0, [0, 1], 10, yes
		@animations.add 1, [2, 3], 10, yes
		@animations.add 2, [4, 5], 10, yes
		@animations.add 3, [6, 7], 10, yes
		@events.onKilled.add @onKilled, @
		game.physics.arcade.enableBody @
		r = @width / @scale.x/4
		@body.setCircle r, r, r*2
		@body.collideWorldBounds = yes
		@body.allowGravity = no
		@body.mass = @pkd.weight/1000 + 1
		@body.friction.set 0
		@body.onMoveComplete.add @onMoveComplete, @
		@body.onWorldBounds = new Phaser.Signal
		@body.onWorldBounds.add @onWorldBounds, @
		@body.onCollide = new Phaser.Signal
		@body.onCollide.add @onCollide, @
		@grpHp = game.make.group @
		@sprHp = @grpHp.create 0, 0, "hp"
		@sprHp.anchor.set .5
		@sprHp.y -= @body.radius*@scale.x
		@sprHp.tint = sprHpTint ? app.teamTints[team]
		@grpEffs = game.make.group @

		@setD d
		pkms.add @
		@action()

	setStatStage: (stat, change) ->
		stage = @stat.stage[stat]
		@stat.stage[stat] = _.clamp stage + change, -6, 6
		@stat.stage[stat] isnt stage

	distToPkm: (pkm = @target) ->
		game.physics.arcade.distanceBetween(@, pkm) -
		@body.radius*@scale.x -
		pkm.body.radius*pkm.scale.x

	angleToPkm: (pkm = @target) ->
		game.physics.arcade.angleBetweenCenters @, pkm

	setD: (@d) ->
		@frame = @d*2
		@body.angle = [PI, 0, -PI_2, PI_2][@d]
		return

	action: ->
		if @alive
			if @target
				@fight()
			else
				@moveRandom()
		return

	moveRandom: ->
		dist = _.random 10, 300
		@setD _.random 3
		@body.moveTo dist*1000 / @stat.spe, dist
		@animations.play @d
		return

	fight: ->
		@move = _.sample @moves.filter (move) => move.enabled
		switch @move.used.eff
			when "Picks a random move"
				loop
					moveName = _.sample Move.keys
					break unless moveName in Move.metronomeNotSelect
				@move.used = Move.list[moveName]

		accMove = @move.used.acc
		if accMove is yes
			acc = 100
		else
			switch @ability
				when "hustle"
					accMove *= .8

			accAdjust = @stat.acc * @target.stat.eva
			accOther = 1

			acc = accMove * accAdjust * accOther
			switch @move.used.eff
				when "OHKOs the target. Fails if user is a lower level"
					acc = if @lv < @target.lv then 0 else @lv - @target.lv + 30

		if Phaser.Utils.chanceRoll acc
			timesHit = 1
			switch @move.used.eff
				when "Hits 2 times in one turn"
					timesHit = 2
				when "Hits 2 times. Each hit has 20% chance to poison"
					timesHit = 2
				when "Hits 2-5 times in one turn"
					while timesHit < 5
						if timesHit < 3
							break if _.random 2
						else
							break if _.random 5
						timesHit++
				when "Hits 3 times. Each hit can miss, but power rises"
					while timesHit < 3
						break unless Phaser.Utils.chanceRoll acc
						timesHit++
			switch @ability
				when "skillLink"
					timesHit = @move.used.meta.maxHit
		else
			timesHit = 0

		@targets =
			allPokemon:
				pkms.children.filter (pkm) =>
					pkm.alive and @distToPkm(pkm) <= Pkm.encounterDist
			allOtherPokemon:
				pkms.children.filter (pkm) =>
					pkm.alive and @distToPkm(pkm) <= Pkm.encounterDist and pkm isnt @
			userAndAllies:
				pkms.children.filter (pkm) =>
					pkm.alive and @distToPkm(pkm) <= Pkm.encounterDist and pkm.team is @team
			allOpponents:
				pkms.children.filter (pkm) =>
					pkm.alive and @distToPkm(pkm) <= Pkm.encounterDist and pkm.team isnt @team
			randomOpponent:
				_.sampleSize pkms.children.filter (pkm) =>
					pkm.alive and @distToPkm(pkm) <= Pkm.encounterDist and pkm.team isnt @team
			userOrAlly:
				if _.random 1 then [@]
				else [_.minBy pkms.filter((pkm) => pkm.alive), (pkm) => @distToPkm pkm]
			ally:
				[_.minBy pkms.filter((pkm) => pkm.alive), (pkm) => @distToPkm pkm]
			user:
				[@]
			selectedPokemon:
				[@target]
		@targets.entireField = @targets.allPokemon
		@targets.usersField = @targets.userAndAllies
		@targets.opponentsField = @targets.allOpponents

		for hit in [0...timesHit] by 1
			setTimer 500 + hit * 100, =>
				targetNum = @targets[@move.used.target].length

				unless @move.used.kind is "status"
					rand = _.random(85, 100) / 100

				for target from @targets[@move.used.target]
					unless @move.used.kind is "status"
						lv = @lv

						{power} = @move.used
						switch @move.used.eff
							when "+20 power for each of the user's stat boosts"
								power += 20 * stage for k, stage of @stat.stage when stage > 0
							when "Max 102 power at maximum Happiness"
								power = @pkd.baseHappi / 2.5 or 1
							when "Max 102 power at minimum Happiness"
								power = (255 - @pkm.baseHappi) / 2.5 or 1
							when "More power the faster the user is than the target"
								spe = target.stat.spe / @stat.spe
								power =
									if spe > 1 then 40
									else if spe > 1/2 then 60
									else if spe > 1/3 then 80
									else if spe > 1/4 then 120
									else 150
							when "More power the heavier the target"
								{weight} = target.pkd
								power =
									if weight >= 200 then 120
									else if weight >= 100 then 100
									else if weight >= 50 then 80
									else if weight >= 25 then 60
									else if weight >= 10 then 40
									else 20
							when "Power doubles if the target is poisoned"
								power *= 2 if target.ailment is "poison"
							when "Power doubles if the target's HP is 50% or less"
								power *= 2 if target.health <= target.maxHealth/2
							when "Power doubles if user is burn/poison/paralyzed"
								power *= 2 if @ailment in ["burn", "poison", "paralysis"]
							when "Hits 3 times. Each hit can miss, but power rises"
								power += 10 * hit
							when "More power the less HP the user has left"
								hp = @health / @maxHealth
								power =
									if hp < .0417 then 200
									else if hp < .1042 then 150
									else if hp < .2083 then 100
									else if hp < .3542 then 80
									else if hp < .6875 then 40
									else 20
							when "More power the more HP the target has left"
								power = game.math.clampBottom 120 * target.health / target.maxHealth, 1
							when "More power the slower the user than the target"
								power = Math.min 150, (25 * target.stat.spe / @stat.spe) + 1
						switch @ability
							when "toxicBoost"
								if @ailment is "poison" and @move.used.kind is "physical"
									power *= 1.5
							when "steelworker"
								if @move.used.type is "steel"
									power *= 1.5
							when "rivalry"
								if @gender and target.gender
									power *= @gender is target.gender and 1.25 or .75
						if @move.used.kind is "species"
							if @targets.userAndAllies.some (pkm) => pkm.ability is "battery"
								power *= 1.3

						attack = @stat[@move.used.kind is "physical" and "atk" or "sat"]
						switch @ability
							when "swarm"
								if @health <= @maxHealth/3 and @move.used.type is "bug"
									attack *= 1.5
							when "blaze"
								if @health <= @maxHealth/3 and @move.used.type is "fire"
									attack *= 1.5
							when "torrent"
								if @health <= @maxHealth/3 and @move.used.type is "water"
									attack *= 1.5
							when "overgrow"
								if @health <= @maxHealth/3 and @move.used.type is "grass"
									attack *= 1.5

						defense = target.stat[@move.used.kind is "physical" and "def" or "sdf"]

						weather = 1
						badge = 1

						crit = 1
						{critRate} = @move.used.meta
						critCritStage = Math.max @critStage, critRate
						critChance = ([1/24, 1/8, 1/2][critCritStage] or 1) * 100
						if Phaser.Utils.chanceRoll critChance
							crit = 1.5

						stab = @move.used.type in @types and 1.5 or 1
						switch @ability
							when "adaptability"
								stab = 2 if stab is 1.5

						type = target.types.reduce (val, type) =>
							effective = Type.list[@move.used.type].effective[type]
							switch @ability
								when "scrappy"
									if type is "ghost" and @move.used.type in ["normal", "fighting"]
										effective = 1
							val * effective
						, 1
						switch target.ability
							when "wonderGuard"
								type = 0 if type <= 1

						burn = if @ailment is "burn" and @move.used.kind is "physical" then .5 else 1
						switch @ability
							when "guts"
								burn = 1

						other = 1

						damage =
							((2*lv / 5 + 2) * power * attack/defense / 50 + 2) *
							weather * badge * crit * rand * stab * type * burn * other / targetNum
						if type
							if @move.used.meta.category is "ohko"
								damage = 1e9
							switch @move.used.eff
								when "Always does 20 HP of damage"
									damage = 20
								when "Always does 40 HP of damage"
									damage = 40
								when "Always leaves the target with at least 1 HP"
									damage = target.health - 1
								when "Lowers the target's HP to the user's HP"
									damage = target.health - @health if @health < target.health
								when "Does damage equal to 1/2 target's current HP"
									damage = game.math.clampBottom target.health/2, 1
						switch @ability
							when "tintedLens"
								damage *= 2 if type < 1
						switch target.ability
							when "filter"
								damage *= .75 if type > 1
							when "multiscale"
								damage /= 2 if target.health is target.maxHealth
							when "fluffy"
								if @move.used.type is "fire" and not @move.used.flags.contact
									damage *= 2
								else if @move.used.flags.contact
									damage /= 2

					{drain} = @move.used.meta

					drainTarget = @

					{healing} = @move.used.meta

					ailments = {}
					{ailmentChance} = @move.used.meta
					switch @ability
						when "sereneGrace"
							unless @move.used.kind is "status"
								ailmentChance *= 2
					if @move.used.meta.category is "ailment"
						ailmentChance = 100

					if Phaser.Utils.chanceRoll ailmentChance
						moveAilment = @move.used.meta.ailment
						switch @move.used.eff
							when "20% chance to paralyze or burn or freeze target"
								moveAilment = _.sample ["burn", "freeze", "paralysis"]

						if moveAilment in Move.ailment
							ailment = moveAilment
						else
							switch moveAilment
								when "confusion"
									ailments.confusion = 2
								else
									ailments[moveAilment] = yes

					switch @move.used.eff
						when "Paralyzes the target"
							{ailment} = @move.used.meta
						when "Poisons the foe(s)"
							{ailment} = @move.used.meta
						when "Poisons the target"
							unless target.types.some((type) => type in ["poison", "steel", "grass"]) or
							target.ability in ["immunity", "overcoat"]
								{ailment} = @move.used.meta

					{flinchChance} = @move.used.meta

					if Phaser.Utils.chanceRoll flinchChance
						flinch = yes

					statStageTarget =
						if @move.used.meta.category is "damageRaise" then @
						else target

					{statChance} = @move.used.meta
					if @move.used.meta.category is "netGoodStats"
						statChance ?= 100
					switch @ability
						when "sereneGrace"
							unless @move.used.kind is "status"
								statChance *= 2

					statStage = _.zipObject Stat.keysAccEvaNoHp, Array(7).fill(0)
					if Phaser.Utils.chanceRoll statChance
						switch @move.used.eff
							when "Lowers the foe(s) Sp.Atk by 2 if opposite gender"
								statStage.sat -= 2 if @gender and target.gender and @gender isnt target.gender
							else
								Object.assign statStage, @move.used.statChanges
					switch target.ability
						when "berserk"
							statStage.sat++ if target.health <= target.maxHealth/2

					critStage = @critStage
					switch @move.used.eff
						when "Raises the user's critical hit ratio by 2"
							critStage = 2

					switch @move.used.eff
						when "Next turn, 50% of the user's max HP is restored"
							@meta.wish = 2

					if damage
						target.damage damage

						if drain
							drain = _.clamp drain, -100, 100
							drain = Math.sign drain if -1 < drain < 1
							drainTarget[drain < 0 and "damage" or "heal"] Math.abs(drain)/100 * damage

					if healing
						healing = _.clamp healing, -100, 100
						target[healing < 0 and "damage" or "heal"] Math.abs(healing)/100 * target.maxHealth

					switch ailment
						when "burn"
							if "fire" in target.types
								ailment = undefined
						when "poison"
							if target.types.some (type) => type in ["poison", "steel"]
								ailment = undefined

					if ailment?
						if ailment
							unless target.ailment
								target.ailment = ailment
						else
							if target.ailment
								target.ailment = no

					for k, val in ailments
						if val
							unless k of target.ailments
								target.ailments[k] = val
						else
							if k in target.ailments
								delete target.ailments[k]

					if flinch?
						if flinch
							unless target.flinch
								target.flinch = yes
								switch target.ability
									when "steadfast"
										statStage.spe++
						else
							if target.flinch
								target.flinch = no

					for k, val of statStage
						statStageTarget.setStatStage k, val if val

					if critStage > @critStage
						@critStage = critStage
				return

		switch @move.used.name
			when "pound", "tackle"
				@tackle 1000
				@eff "hit", [1, 0, 200], => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
				, [
					scale: 4
					alpha: .5
					300
				]]
			when "scratch"
				@tackle 1000
				@eff "claw", [1, 0, 200], ({rotation, flip}) => [
					pivot: [-16, 0]
					rotation: rotation-PI_4 * flip
				, [
					rotation: rotation+PI_4 * flip
					[300,,, "Cubic"]
					alpha: 0
					300
				]]
			when "furySwipes"
				@tackle 1000
				@eff "swipe", [timesHit, 50, 200], ({rotation}) => [
					x: @target.x - Math.cos(rotation) * 8 + _.random -8, 8
					y: @target.y - Math.sin(rotation) * 8 + _.random -8, 8
					pivot: [-8, 0]
					rotation: rotation + _.random -PI_2, PI_2
					scale: 3
				, [
					pivot: 0
					scale: 2
					[300,,, "Cubic"]
					alpha: 0
					250
				]]
			when "toxic"
				@eff "mud", 1, => [
					alpha: .5
					tint: 0xdd38e0
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					alpha: 1
					[500,,, "Quad"]
				]]
				@eff "ball", [5,, 500], => [
					x: @target.x + _.random -16, 16
					y: @target.y + _.random -16, 16
					scale: 1
					tint: 0xdd38e0
				, [
					pivot: [0, 24]
					300
				], [
					alpha: 0
					[300,,, "Quad.in"]
				]]
			when "bubble"
				@eff "bubble", [3, 50], => [
					scale: _.random 1, 3, yes
				, [
					x: @target.x + _.random -16, 16
					y: @target.y + _.random -16, 16
					750
				], [
					scale: _.random 1, 3, yes
					[125, 0, 2,, yes]
				]]
			when "bubbleBeam"
				@eff "bubble", 5, => [
					scale: 1
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					scale: 2
					[500,,, "Quad"]
				]]
			when "flamethrower"
				@eff "fire", 5, => [
					alpha: 0
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					alpha: 1
					[500,,, "Quad"]
					scale: 4
					alpha: 0
					300
				]]
			when "waterGun", "hydroPump"
				@eff "water", 5, => [
					alpha: 0
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					alpha: 1
					[500,,, "Quad"]
					scale: 4
					alpha: 0
					300
				]]
			when "thunderbolt", "thunder"
				@eff "electr", 5, ({i, rotation}) => [
					rotation: rotation
					scale: [2, i%2 or -2]
					alpha: 0
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					alpha: 1
					[500,,, "Quad.in"]
					alpha: 0
					300
				]]
			when "iceBeam"
				@eff "iceBeam", 5, ({i, rotation}) => [
					rotation: rotation
					scale: [2, i%2 or -2]
					alpha: 0
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					alpha: 1
					[500,,, "Quad.inOut"]
					alpha: 0
					300
				]]
			when "psychic"
				@eff "psychic", 5, ({rotation}) => [
					rotation: rotation
					alpha: 0
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					alpha: .7
					500
					alpha: 0
					300
				]]
			when "psybeam"
				@eff "psyBeam", 5, ({rotation}) => [
					rotation: rotation
					alpha: 0
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					alpha: 1
					500
					alpha: 0
					300
				]]
			when "acid"
				@eff "mud", 5, => [
					alpha: 0
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					alpha: 1
					tint: 0xccf702
					[500,,, "Quad"]
					scale: 4
					alpha: .5
					500
				]]
			when "mudShot"
				@eff "mud", 5, => [
					alpha: 0
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					alpha: 1
					tint: 0x8c7357
					[500,,, "Quad"]
					scale: 4
					alpha: .5
					500
				]]
			when "leer"
				@eff "eye", [2, 0], ({i, rotation}) => [
					x: @x + Math.sin(rotation) * (i and -12 or 12) + Math.cos(rotation) * 12
					y: @y - Math.cos(rotation) * (i and -12 or 12) + Math.sin(rotation) * 12
					rotation: rotation - PI_4 * (i and -1 or 1)
					scale: [0, 2]
					tint: 0xf44d4d
				, [
					scale: 2
					[500,,, "Cubic.inOut"]
					scale: [1.5, 2]
					200
					alpha: 0
					300
				]]
			when "tailWhip"
				@hide 1000
				@eff @pkd.name, 1, => [
					y: @y - @body.halfHeight
					update: (spr, val) =>
						spr.frame = [2, 0, 6, 4][@d]
						return
				, [
					1000
				]]
				@eff "tail", 1, ({rotation, flip}) => [
					x: @x + Math.cos(rotation) * 12
					y: @y + Math.sin(rotation) * 12
					pivot: [-8, 0]
					rotation: rotation-PI_4
					scale: [2, 2*flip]
				, [
					rotation: rotation+PI_4
					[250,, 1,, yes]
				]]
			when "auroraBeam"
				@eff "auroraBeam", 4, ({rotation}) => [
					rotation: rotation
					scale: 1
					alpha: 0
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					scale: 2
					alpha: 1
					[500,,, "Quad.in"]
					pivot: [-8, 0]
					scale: 3
					alpha: 0
					300
				]]
			when "swift"
				@eff "star", 4, ({rRotation}) => [
					rotation: rRotation
					scale: 1
				, [
					x: @target.x + _.random -16, 16
					y: @target.y + _.random -16, 16
					rotation: rRotation+PI2
					scale: 2
					[500,,, "Quad"]
					alpha: 0
					300
				]]
			when "boneClub"
				@eff "bone", 1, ({rotation}) => [
					rotation: rotation
				, [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					rotation: rotation+PI2
					[500,,, "Quad"]
					alpha: 0
					500
				], [
					scale: 3
					[250,,, "Quad"]
					scale: 2
					[250,,, "Quad.in"]
				]]
			when "payDay"
				@eff "coin", [5, 0], ({rotation, flip, rRotation, rDist}) => [
					rotation: rotation - PI2*flip
					alpha: 0
				, [
					x: @target.x
					y: @target.y
					rotation: rotation
					alpha: 1
					500
					x: @target.x + Math.cos(rRotation) * rDist * 48
					y: @target.y + Math.sin(rRotation) * rDist * 48
					rotation: rotation + _.random -PI, PI
					alpha: .5
					300
				]]
			when "swordsDance"
				@eff "sword", [5, 0], ({i, len, rotation}) => [
					alpha: 0
					update: (spr, val) =>
						val = Phaser.Easing.Quadratic.InOut val
						rotation2 = val*PI2 + i/len*PI2
						spr.x = @x + Math.cos(rotation2) * 24
						spr.y = @y + Math.sin(rotation2) * 16
						return
				, [
					1000
				], [
					alpha: 1
					500
					alpha: 0
					500
				]]
			when "haze"
				@eff "smoke", 5, ({rRotation}) => [
					alpha: 0
				, [
					x: @x + Math.cos(rRotation) * _.random(Pkm.encounterDist)
					y: @y + Math.sin(rRotation) * _.random(Pkm.encounterDist)
					alpha: 1
					500
					scale: 4
					alpha: 0
					500
				]]
			when "karateChop"
				@tackle 1000
				@eff "hand", [1,,, @], ({rotation, flip}) => [
					pivot: 0
					rotation: rotation
					scale: [2, 2*flip]
					alpha: 0
				, [
					pivot: [-48, 0]
					alpha: 1
					[400,,, "Cubic.in"]
					pivot: 0
					alpha: 0
					[400, 200,, "Cubic"]
				]]
			when "doubleSlap"
				@tackle 1000
				@eff "hand", [timesHit,, 200], ({rotation, flip}) => [
					x: @target.x + _.random -16, 16
					y: @target.y + _.random -16, 16
					rotation: rotation
					scale: [1, 3*flip]
				, [
					scale: [2, 2*flip]
					alpha: .5
					300
				]]
			when "firePunch"
				@tackle 1000
				@eff "punch", [1,,, @], ({rotation}) => [
					pivot: [-8, 0]
					rotation: rotation
					tint: 0xf27826
				, [
					1000
				]]
				@eff "fire", [5, 50, 200], ({i, len, rotation}) => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					rotation: rotation + i*PI2 / len
				, [
					pivot: [-16, 0]
					alpha: 0
					500
				]]
			when "thunderPunch"
				@tackle 1000
				@eff "punch", [1,,, @], ({rotation}) => [
					pivot: [-8, 0]
					rotation: rotation
					tint: 0xf4d10b
				, [
					1000
				]]
				@eff "electr", [5, 50, 200], ({i, len, rotation}) => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					rotation: rotation + i*PI2 / len
				, [
					pivot: [-16, 0]
					alpha: 0
					500
				]]
			when "icePunch"
				@tackle 1000
				@eff "punch", [1,,, @], ({rotation}) => [
					pivot: [-8, 0]
					rotation: rotation
					tint: 0x00dddd
				, [
					1000
				]]
				@eff "ice", [5, 50, 200], ({i, len, rotation}) => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					rotation: rotation + i*PI2 / len
				, [
					pivot: [-16, 0]
					alpha: 0
					500
				]]
			when "cometPunch"
				@tackle 1000
				@eff "punch", [timesHit,, 200], ({rotation}) => [
					x: @target.x - Math.cos(rotation) * 24
					y: @target.y - Math.sin(rotation) * 24
					rotation: rotation
					scale: 3
					tint: 0xd8a741
				, [
					x: @target.x + _.random -16, 16
					y: @target.y + _.random -16, 16
					scale: 2
					150
					x: @target.x - Math.cos(rotation) * 24
					y: @target.y - Math.sin(rotation) * 24
					alpha: .5
					150
				]]
			when "megaPunch"
				@tackle 1000
				@eff "punch", [1,,, @], ({rotation}) => [
					pivot: [-8, 0]
					rotation: rotation
					scale: 4
					tint: 0xd8a741
				, [
					pivot: [-24, 0]
					[500,,, "Cubic.in"]
					pivot: [-8, 0]
					alpha: 0
					[500,,, "Cubic"]
				], [
					x: _.random -4, 4
					y: _.random -4, 4
					[50, 200]
					x: _.random -4, 4
					y: _.random -4, 4
					50
					x: _.random -4, 4
					y: _.random -4, 4
					50
					x: _.random -4, 4
					y: _.random -4, 4
					50
					x: _.random -4, 4
					y: _.random -4, 4
					50
					x: _.random -4, 4
					y: _.random -4, 4
					50
				]]
				@eff "hit", [1, 0, 200], => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					tint: 0xf1e75f
				, [
					scale: 4
					alpha: .5
					300
				]]
			when "drainPunch"
				@tackle 1000
				@eff "punch", [1,,, @], ({rotation}) => [
					pivot: [-8, 0]
					rotation: rotation
					tint: 0xd8a741
				, [
					1000
				]]
				@eff "hpPoint", [5, 50, 200], => [
					x: @target.x + _.random -16, 16
					y: @target.y + _.random -16, 16
				, [
					x: @x
					y: @y
					500
				]]
			when "fireFang"
				@tackle 1000
				@eff "fang", [2, 0, 200, @], ({i, rotation}) => [
					key: [i and "fang2" or "fang"]
					pivot: [0, i and -16 or 16]
					x: Math.cos(rotation) * 24
					y: Math.sin(rotation) * 24 - 8
					scale: [3, 2]
					tint: 0xf27826
				, [
					pivot: 0
					scale: 2
					[500,,, "Quint"]
					alpha: 0
					300
				]]
				@eff "fire", [5, 50, 200], ({i, len, rotation}) => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					rotation: rotation + i*PI2 / len
				, [
					pivot: [-16, 0]
					alpha: 0
					500
				]]
			when "thunderFang"
				@tackle 1000
				@eff "fang", [2, 0, 200, @], ({i, rotation}) => [
					key: [i and "fang2" or "fang"]
					pivot: [0, i and -16 or 16]
					x: Math.cos(rotation) * 24
					y: Math.sin(rotation) * 24 - 8
					scale: [3, 2]
					tint: 0xf4d10b
				, [
					pivot: 0
					scale: 2
					[500,,, "Quint"]
					alpha: 0
					300
				]]
				@eff "electr", [5, 50, 200], ({i, len, rotation}) => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					rotation: rotation + i*PI2 / len
				, [
					pivot: [-16, 0]
					alpha: 0
					500
				]]
			when "iceFang"
				@tackle 1000
				@eff "fang", [2, 0, 200, @], ({i, rotation}) => [
					key: [i and "fang2" or "fang"]
					pivot: [0, i and -16 or 16]
					x: Math.cos(rotation) * 24
					y: Math.sin(rotation) * 24 - 8
					scale: [3, 2]
					tint: 0x00dddd
				, [
					pivot: 0
					scale: 2
					[500,,, "Quint"]
					alpha: 0
					300
				]]
				@eff "ice", [5, 50, 200], ({i, len, rotation}) => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					rotation: rotation + i*PI2 / len
				, [
					pivot: [-16, 0]
					alpha: 0
					500
				]]
			when "superFang"
				@tackle 1000
				@eff "fang", [2, 0, 200, @], ({i, rotation}) => [
					key: [i and "fang2" or "fang"]
					pivot: [0, i and -16 or 16]
					x: Math.cos(rotation) * 24
					y: Math.sin(rotation) * 24 - 8
					scale: [3, 2]
				, [
					pivot: 0
					scale: 2
					[500,,, "Quint"]
					alpha: 0
					300
				]]
				@eff "hit", [1, 0, 200], => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
				, [
					scale: 3
					alpha: .5
					300
				]]
			when "hyperFang"
				@tackle 1000
				@eff "fang", [2, 0, 200, @], ({i, rotation}) => [
					key: [i and "fang2" or "fang"]
					pivot: [0, i and -16 or 16]
					x: Math.cos(rotation) * 24
					y: Math.sin(rotation) * 24 - 8
					scale: [4, 3]
					tint: 0xff5151
				, [
					pivot: 0
					scale: 3
					[500,,, "Quint"]
					alpha: 0
					300
				]]
				@eff "hit", [1, 0, 200], => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					tint: 0xff5151
				, [
					scale: 4
					alpha: .5
					300
				]]
			when "growl"
				@eff "sound", 5, ({rotation}) => [
					scale: 0
					x: @x + Math.cos(rotation) * 12
					y: @y + Math.sin(rotation) * 12
				, [
					scale: 4
					[500,,, "Quad"]
				], [
					alpha: 0
					500
				]]
			when "bodySlam"
				@tackle 1000
				@eff @pkd.name, [1,,, @], => [
					y: -@body.halfHeight
				, [
					scale: 3
					300
					scale: 2
					200
				]]
				@eff "hit", [1, 0, 400], => [
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
				, [
					alpha: .5
					scale: 4
					300
				]]
			when "bonemerang"
				@eff "bone", 1, ({rotation}) => [
					rotation: rotation
					alpha: .5
				, [
					x: @target.x + Math.cos(rotation) * 32
					y: @target.y + Math.sin(rotation) * 32
					alpha: 1
					[500,,, "Quad"]
					x: @x
					y: @y
					alpha: .5
					[500,,, "Quad.in"]
				], [
					rotation: rotation + PI2*4
					1000
				]]
			when "auraSphere"
				@eff "auraSphere", 1, ({rotation}) => [
					x: @x + Math.cos(rotation) * 12
					y: @y + Math.sin(rotation) * 12
					scale: 0
				, [
					scale: 2
					300
					x: @target.x + _.random -8, 8
					y: @target.y + _.random -8, 8
					[300,,, "Quad.inOut"]
					scale: 3
					alpha: 0
					500
				], [
					rotation: PI2*4
					[1000,,, "Quad.inOut"]
				]]
			when "guillotine"
				@tackle 1000
				@eff "guillotine", [2, 0,, @], ({i, rotation}) => [
					pivot: [-16, 0]
					rotation: rotation + PI_4 * (i and -1 or 1)
					scale: [3, i and 3 or - 3]
				, [
					rotation: rotation
					[500,,, "Cubic"]
					alpha: 0
					500
				]]
			when "submission"
				@tackle 1000
				@eff "submission", [1,, 200, @], ({rotation, flip}) => [
					x: Math.cos(rotation) * 16
					y: Math.sin(rotation) * 16
				, [
					rotation: PI2*2 * flip
					[500,,, "Cubic.inOut"]
				]]
				@eff @target.pkd.name, [1,, 200, @target], ({flip}) => [
					pivot: [0, 8]
				, [
					rotation: PI2*2 * flip
					[500,,, "Cubic.inOut"]
				]]

		setTimer 1050, =>
			if @alive
				switch @ailment
					when "poison"
						poisonDamage = @maxHealth/8

						if poisonDamage
							@damage poisonDamage

				if @meta.wish
					if @meta.wish is 1
						wishHealing = @maxHealth/2

						if wishHealing
							@heal wishHealing
					@meta.wish--

				@lastMoveUsed = @move.used
				@move.used = @move.origin

				if not @target.alive or @distToPkm(@target) >= Pkm.leaveDist
					@onLeaveTarget()

				@action()
			return
		return

	tackle: (duration, delay, pkm = @target) ->
		duration /= 2
		setTimer delay, =>
			game.physics.arcade.moveToObject @, pkm, 0, duration
			setTimer duration, =>
				dist = Pkm.encounterDist - @distToPkm pkm
				angle = PI + @angleToPkm pkm
				x = @x + dist * Math.cos angle
				y = @y + dist * Math.sin angle
				game.physics.arcade.moveToXY @, x, y, 0, duration
				setTimer duration, =>
					@body.velocity.set 0
					return
				return
			return
		return

	hide: (duration) ->
		@renderable = no
		setTimer duration, =>
			@renderable = yes
			return
		return

	eff: (key, vals, cb) ->
		[len = 1, delayEach = 100, delayStart = 0, pkmGrp] = _.castArray vals
		for i in [0...len] by 1
			setTimer delayStart + i*delayEach, (i, pkmGrp, spr) =>
				args =
					if cb.length
						rotation = @angleToPkm @target
						i: i
						len: len
						rotation: rotation
						rRotation: _.random -PI, PI
						rDist: Math.random()
						flip: -PI_2 < rotation < PI_2 and 1 or -1
					else {}
				list = cb args
				init = list.shift() or {}
				ratio = 1
				maxTotalTimeTween = -1
				if key is @
					{
						x = @x
						y = @y
						anchor = [@anchor.x, @anchor.y]
						rotation = @rotation
						scale = [@scale.x, @scale.y]
						alpha = @alpha
						tint
					} = init
					spr = @
				else
					{
						key = key
						anchor = .5
						pivot = 0
						rotation = 0
						scale = 2
						alpha = 1
						tint
					} = init
					if pkmGrp
						ratio = .5
						{x = 0, y = 0} = init
						x *= ratio
						y *= ratio
						spr = pkmGrp.grpEffs.create x, y, key
					else
						{x = @x, y = @y} = init
						spr = effs.create x, y, key
				spr.anchor.set ..._.castArray anchor
				spr.pivot.set ..._.castArray pivot
				spr.rotation = rotation
				spr.scale.set ..._.castArray(scale).map((v) => v * ratio)
				spr.alpha = alpha
				spr.tint = tint if tint?
				if key in Pkd.keys and pkmGrp and not init.update
					spr.update = =>
						spr.frame = pkmGrp.frame
						return
				for tokens, j in list
					unless _.isPlainObject tokens[tokens.length-2]
						tokens.splice tokens.length-1, 1, step: 1, tokens[tokens.length-1]
					tween = game.add.tween spr
					totalTimeTween = 0
					for k in [0...tokens.length] by 2
						`let duration, delay, repeat, ease, yoyo`
						props = tokens[k]
						[duration, delay = 0, repeat = 0, ease = "Linear", yoyo = no] = _.castArray tokens[k+1]
						ease = ease.replace /(?<=\.)[io]/, (s) => "ease" + s.toUpperCase()
						if props.x?
							props.x *= ratio
						if props.y?
							props.y *= ratio
						if props.scale?
							setTimer totalTimeTween, (scale, spr) =>
								[scaleX, scaleY=scaleX] = _.castArray scale
								tweenScale = game.add.tween spr.scale
								tweenScale.to
									x: scaleX * ratio
									y: scaleY * ratio
									duration, ease, yes, delay, repeat, yoyo
								return
							, props.scale, spr
							delete props.scale
						if props.pivot?
							setTimer totalTimeTween, (pivot, spr) =>
								[pivotX, pivotY=pivotX] = _.castArray pivot
								tweenPivot = game.add.tween spr.pivot
								tweenPivot.to
									x: pivotX * ratio
									y: pivotY * ratio
									duration, ease, yes, delay, repeat, yoyo
								return
							, props.pivot, spr
							delete props.pivot
						if props.tint?
							tweenTint = game.add.tween step: 0
							tweenTint.to
								step: 1
								duration, ease, yes, delay + totalTimeTween, repeat, yoyo
							startTint = spr.tint
							endTint = props.tint
							do (startTint, endTint) =>
								tweenTint.onUpdateCallback (tw, val) =>
									spr.tint = Phaser.Color.interpolateColor startTint, endTint, 1, val
									return
								return
							delete props.tint
						tween.to props, duration, ease, no, delay, repeat, yoyo
						totalTimeTween += delay + duration * (repeat+1) * (yoyo+1)
					unless key is @
						maxTotalTimeTween = totalTimeTween if totalTimeTween > maxTotalTimeTween
					if not j and init.update
						tween.onUpdateCallback (tw, val) =>
							init.update tw.target, val
							return
					tween.start() if totalTimeTween
				setTimer maxTotalTimeTween, (spr) =>
					spr.destroy() unless key is @
					return
				, spr
				return
			, i, pkmGrp
		return

	onEncounterPkm: (pkm) ->
		@body.stop()
		@animations.stop()
		@target = pkm
		@action()
		return

	onLeaveTarget: ->
		@target = null
		@action()
		return

	onMoveComplete: ->
		unless @target
			@action()
		return

	onWorldBounds: ->
		unless @target
			@body.stopMovement()
		return

	onCollide: ->
		unless @target
			@body.stopMovement()
		return

	onKilled: ->
		setTimer 2500, @destroy.bind @
		return

	update: ->
		if @target
			angle = @angleToPkm @target
			@setD(
				if -PI_4 <= angle <= PI_4 then 1
				else if -PI3_4 < angle < -PI_4 then 2
				else if PI_4 < angle < PI3_4 then 3
				else 0
			)
		@sprHp.scale.x = if @health < 0 then 0 else @health/25
		return

	accessor: (target, props) ->
		for propName, desc of props
			if typeof desc is "function"
				props[propName] = get: desc
		Object.defineProperties target, props
		return

	@encounterDist = 48
	@leaveDist = 100
