att.PrintName = "Mount Weapon"
att.Icon = Material("entities/att/mountgun.png")
att.Bipod_Icon = Material("entities/att/mountgun.png")
att.Description = [[Rest your weapon on the ground or nearest ledge. Improves weapon performance by decreasing recoil and increasing accuracy whilst mounted, but not as much as a proper bipod. Still, it's better than nothing when trying to make your shots count.]]
att.SortOrder = 10

att.Desc_Pros = {
    "No bipod to set up",
    "No downsides",
}
att.Desc_Cons = {
    "Not nearly as good",
    "Cannot attach other underbarrels",
}
att.Desc_Neutrals = {
    "Attaches optic rails for some reason?", --literally why
    "blackmod.desc"
}
att.AutoStats = true
att.Slot = {"bipod", "foregrip", "foregrip_pistol", "style_pistol", "sling"}

att.MountPositionOverride = 1

att.Bipod = true
att.Mult_BipodRecoil = 0.5
att.Mult_BipodDispersion = 0.25

att.Hook_Compatible = function(wep)
    if wep.Bipod_Integral then return false end
end