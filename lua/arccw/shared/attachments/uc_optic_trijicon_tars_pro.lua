att.PrintName = "Trijicon Tactical Advanced Riflescope Pro Modification (5-25x)"
att.AbbrevName = "TARS PRO-MOD (5-25x)"
att.Icon = Material("entities/att/acwatt_uc_optic_trijicon_tars.png", "mips smooth")
att.Description = [[Variable power scope, adjustable for a very wide range of magnifications. This one has been outfitted with a longer magnification range at the cost of being bulkier.
From 3-15x to 5-25x, and a little heavier. Seems like a worthwhile trade to me, eh? Just don't try to use this thing for CQC... for obvious reasons.]]
att.SortOrder = 8
att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom"
}
att.Desc_Cons = {
    [[May fall victim to "FOV Flipping" if zoomed in too far]],
}
att.Desc_Neutrals = {
    "blackmod.desc"
}
att.AutoStats = true
att.Slot = {"optic"}

att.Model = "models/weapons/arccw/atts/uc_trijicon_tars.mdl"
att.ModelOffset = Vector(0, 0, 0.1)
att.ModelScale = Vector(1.05,1.05,1.05)

att.AdditionalSights = {
    {
        Pos = Vector(0, 10.6, -1.51),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 25,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ScopeMagnificationMin = 5,
        ScopeMagnificationMax = 25,
        ScopeMagnification = 12,
        HolosightData = {
            Holosight = true,
            HolosightReticle = Material("hud/scopes/uc_tars_reticle.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 18,
            HolosightPiece = "models/weapons/arccw/atts/uc_trijicon_tars_hsp.mdl",
            HolosightBlackbox = true,
            HolosightMagnification = 12,
            HolosightMagnificationMin = 5,
            HolosightMagnificationMax = 25,
            Colorable = true,
            SpecialScopeFunction = function(screen)
                render.PushRenderTarget(screen)

                DrawBloom(0,0.3,5,5,3,0.5,1,1,1)
                DrawSharpen(1,1.65)
                DrawMotionBlur(0.45,1,1/45)

                render.PopRenderTarget()
            end,
        },
    }
}

-- att.Holosight = true
-- att.HolosightReticle = Material("mifl_tarkov_reticle/dot.png", "mips smooth")

att.HolosightPiece = "models/weapons/arccw/atts/uc_trijicon_tars_hsp.mdl"
-- att.HolosightNoFlare = true
-- att.HolosightSize = 1
-- att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightedSpeedMult = 0.65
att.Mult_SightTime = 1.23