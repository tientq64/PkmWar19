app = new Vue
	el: "#app"

	data: ->
		teamColors = ["#f00", "#0f0", "#00f", "#ff0", "#f0f", "#0ff", "#f80", "#f08", "#888", "#fff"]

		selPkdName: _.findKey Pkd.list, (pkd) => pkd.moves.length
		selTeam: 0
		hoverPkdName: null
		isHoverSelTeamsEl: no
		teamColors: teamColors
		teamTints: teamColors.map (hex) => Phaser.Color.hexToColor(hex).color
		isShowPkd: yes
		form:
			name: ""

	Pkd: Pkd

	watch:
		isShowPkd: ->
			@animSelTeamsEl()
			return

		isHoverSelTeamsEl: ->
			@animSelTeamsEl()
			return

	methods:
		classPkd: (pkd) ->
			"active": pkd.name is @selPkdName

		stylePkd: (pkd) ->
			backgroundImage: "url(asset/pkd/#{pkd.no}.png)"

		clickPkd: (pkd) ->
			@selPkdName = pkd.name
			@isShowPkd = no
			return

		mouseEnterPkd: (pkd, event) ->
			@hoverPkdName = pkd.name
			popper.reference = event.target
			popper.scheduleUpdate()
			return

		mouseLeavePkd: ->
			@hoverPkdName = null
			return

		classInfoPkdTypes: (types) ->
			"is-splited": types.length > 1

		styleInfoPkdType: (type) ->
			background: Type.list[type].color

		animSelTeamsEl: ->
			selTeamsEl.style.animationName = ""
			unless @isShowPkd or @isHoverSelTeamsEl
				selTeamsEl.offsetWidth
				selTeamsEl.style.animationName = "selTeamsEl"
			return

		styleSelTeam: (team) ->
			background: @teamColors[team]
			outline: "solid 4px #000" if @selTeam is team

		clickSelTeam: (team) ->
			@selTeam = team
			return

		onWheelSelTeam: (event) ->
			@selTeam = (@selTeam + Math.sign event.deltaY) %% 10
			@animSelTeamsEl()
			return

		clickForm649TeamBySpecies: ->
			for k, pkd of Pkd.list
				if pkd.moves.length
					new Pkm k,
						_.random game.width
						_.random game.height
						_.random 3
						k
			@form.name = ""
			return

		clickForm18TeamByType: ->
			for k, pkd of Pkd.list
				if pkd.moves.length
					for type from pkd.types
						new Pkm k,
							_.random game.width
							_.random game.height
							_.random 3
							type
							parseInt Type.list[type].color[1..], 16
			@form.name = ""
			return

		clickForm2TeamBy649Species: ->
			for k, pkd of Pkd.list
				if pkd.moves.length
					new Pkm k,
						100
						_.random game.height
						1
						0
					new Pkm k,
						game.width-100
						_.random game.height
						0
						1
			@form.name = ""
			return

		mouseUp: (event) ->
			switch event.which
				when 3
					if @isShowPkd
						if showPkdEl.contains event.target
							@isShowPkd = no
					else
						@isShowPkd = yes
			return

	mounted: ->
		popper = new Popper document.body, infoPkdEl,
			placement: "right"
			positionFixed: yes
			modifiers:
				offset:
					offset: "0, 3px"
				preventOverflow:
					boundariesElement: "viewport"

		window.addEventListener "mouseup", @mouseUp.bind @
		return
