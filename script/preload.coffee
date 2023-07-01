preload = ->
	@load.crossOrigin = yes
	@load.path = "asset/"
	@load.spritesheet k, "pkd/#{pkd.no}.png", pkd.sprWidth, pkd.sprWidth for k, pkd of Pkd.list
	@load.image "hp", "other/hp.png"
	effs = "
		hit claw fire water electr smoke psychic punch hpPoint ice iceBeam sound psyBeam bone
		auroraBeam hand coin guillotine submission fang fang2 swipe sword star auraSphere mud
		eye tail ball bubble
	".split " "
	for eff from effs
		@load.image eff, "eff/#{eff}.png"
	return
