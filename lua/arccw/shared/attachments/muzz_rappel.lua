att.PrintName = "CT Accuracy Rappelling Gun Barrel"
att.AbbrevName = "Rappeller's Barrel"
att.Icon = Material("entities/att/muzz_lrbar.png")
att.Description = [[Free-floating auto-stabilizing barrel system designed for use by counter-terrorist organizations across the globe. Useful for shooting while rappelling down the side of a structure or airborne vehicle without a severe loss of accuracy.
Not sure how practical it is to fire rounds off while hanging off a building or chopper, but I can't lie and say it doesn't sound fun. Maybe I'll go and do that one of these days. Maybe you'll use this to do just that.
Who knows? I sure as hell don't.]]
att.SortOrder = 5
att.Desc_Pros = {
	"No downsides",
}
att.Desc_Cons = {
	"Cannot use other barrels or muzzles",
}
att.Desc_Neutrals = {
	"Design with parkour, seat weapons, and climbing mods in mind.",
	"blackmod.desc",
}
att.AutoStats = true
att.Slot = {"muzzle", "barrel"}

att.Mult_AccuracyMOA = 1.25
att.Mult_SightTime = 1.25
att.Mult_JumpDispersion = 0
att.Mult_HipDispersion = 0.75
att.Mult_SightsDispersion = 0.75