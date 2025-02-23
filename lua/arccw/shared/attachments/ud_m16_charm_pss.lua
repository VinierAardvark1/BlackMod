att.PrintName = "Point Shooting Stance"
att.Icon = Material("entities/att/arccw_ud_pointshoot.png", "smooth mips")
att.Description = "Give your AN/PEQ a reason to be thin, except this time you can aim down the side of the gun, if you want."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    "ud.m16_tl.1",
    "ud.m16_tl.2",
    "ud.m16_nors",
    "blackmod.desc"
}
att.Slot = "ud_m16_charm"

att.ActivateElements = {"bravo_dicks_going_fart"} --actual element name, lol
att.AdditionalSights = {
    {
        Pos = Vector(-1, 27, -2),
        Ang = Angle(0, 0, -35),
        GlobalPos = false,
        GlobalAng = true,
        Magnification = 1
    }
}

att.SortOrder = 998
att.TacLaserPos = true

att.FrontSight = 1