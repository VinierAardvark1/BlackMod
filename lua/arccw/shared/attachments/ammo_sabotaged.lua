att.PrintName = "Sabotaged Ammo"
att.SortOrder = -1
att.Icon = Material("entities/att/ammo_spiked.png")
att.Description = [[Bullets specifically designed to malfunction. A variant of exploding or spiked ammo used when the chances of lost munitions or weapons falling into friendly hands is high. Has the same demoralizing effect on enemies, but doesn't destroy their weapons when used.
These ain't too hard to make, just use a smaller charge so the gun doesn't blow up and you have a bunch'a these babies. Pretty useful if you don't want the enemy to use your toys, or if you want them to get fustrated with them.]]

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
	"blackmod.desc",
	"Namely used for animation testing."
}

att.Slot = {"ammo_bullet", "ammo_shotgun", "go_ammo", "uc_ammo", "ud_ammo_shotgun"}

att.AutoStats = true

att.Mult_Damage = 0.5
att.Mult_DamageMin = 0.5
att.Mult_Recoil = 0.75
att.Mult_MuzzleVelocity = 0.5
att.Mult_PhysBulletMuzzleVelocity = 0.5
att.Mult_MalfunctionMean = 0

att.Override_MalfunctionTakeRound = true
att.Override_Malfunction = true
att.Override_AlwaysPhysBullet = true

att.NotForNPCs = true