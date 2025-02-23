att.PrintName = "Dual Stage Auto 2.0"
att.Icon = Material("entities/att/fcg_dualstage_2.png", "smooth mips")
att.Description = [[Two-stage automatic trigger that reduces RPM when sighted. The benefit of this system is improved recoil stability and control. This version has been upgraded to contain similar features to the reverse-engineered Reversed Dual Stage Auto model.
Unfortunately, these upgrades are entirely "cosmetic" so to speak, and provide no real advantage over the original model.]]
att.Desc_Pros = {
    "- 15% Recoil when sighted",
    "- 30% Horizontal recoil when sighted"
}
att.Desc_Cons = {
    "- 30% Fire rate when sighted",
}
att.Desc_Neutrals = {
    "Has worse performance on non-automatic weapons",
    "Figured someone would enjoy it.",
    "blackmod.desc",
}
att.Slot = "fcg"
att.InvAtt = "fcg_dualstage"

--att.Mult_Recoil = 0.9
--att.Mult_RecoilSide = 0.8
--att.Mult_HipDispersion = 1.15

att.Override_Firemodes = {
    {
        Mode = 2,
        PrintName = "Dual Stage Automatic"
    },
    {
        Mode = 1,
        PrintName = "Dual Stage Semi-Auto"
    },
    {
        Mode = 0
    }
}

att.AutoStats = true

att.Hook_ModifyRecoil = function(wep)
    if wep:GetCurrentFiremode().Mode == 2 and  wep:GetState() == ArcCW.STATE_SIGHTS then
        return {Recoil = 0.85, RecoilSide = 0.7, VisualRecoilMult = 0.8}
    end
end

att.Hook_ModifyRPM = function(wep, delay)
    if wep:GetCurrentFiremode().Mode == 2 and  wep:GetState() == ArcCW.STATE_SIGHTS then
        return delay * (1 / 0.7)
    end
end

att.Hook_Compatible = function(wep)
    -- Only available if the weapon already has full auto.
    local has = false
    for i, v in pairs(wep.Firemodes) do
        if !v then continue end
        if v.Mode == 2 then
            has = true
            break
        end
    end

    if !has then return false end
end