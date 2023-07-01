update = ->
	pkms.forEachAlive (pkm1) =>
		unless pkm1.target
			pkms2 = pkms.children.filter (pkm2) =>
				if pkm2.alive and pkm1 isnt pkm2 and pkm1.team isnt pkm2.team
					pkm1.distToPkm(pkm2) <= Pkm.encounterDist
			if pkms2.length
				pkm2 = _.sample pkms2
				pkm1.onEncounterPkm pkm2
		pkm1.grpEffs.forEachAlive (eff) =>
			eff.update()
			return
		return

	@physics.arcade.collide pkms
	pkms.sort "y", Phaser.Group.SORT_ASCENDING
	effs.sort "y", Phaser.Group.SORT_ASCENDING
	return
