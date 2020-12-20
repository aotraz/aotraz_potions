local POTION = Wizardry.Objects.NewPotion("aotraz.gentle_jump_boost")
POTION:SetName("Gentle Jump Boost")
POTION:SetDescription("Combines the effects of Jump Boost and Gentle Landing.")
POTION:SetEffectTime(aotraz_potions.C.GJBsecs)
POTION:SetColor(Color(100, 100, 100))
if (aotraz_potions.C.Debug == true) then
  POTION:SetStirAmount(0.1)
else
  POTION:SetStirAmount(aotraz_potions.C.GJBst)
end

POTION.effects = {
  "Makes you jump " .. tostring(aotraz_potions.C.JumpPower) .. "x higher and take no fall damage."
}
POTION.recipe = aotraz_potions.PR.GJB

POTION:Define()

function POTION:DrinkSV(ply)
  ply:SetNWInt("aotraz_originalJumpPower" , ply:GetJumpPower())
  ply:SetJumpPower(ply:GetNWInt("aotraz_originalJumpPower") * aotraz_potions.C.JumpPower)
  hook.Add("EntityTakeDamage", "aotrazpotions_falldamage_" .. ply:SteamID64(), function(target, dmginfo)
  	if (target == ply && dmginfo:IsfallDamage()) then
      dmginfo:ScaleDamage(0)
  	end
end )
end

function POTION:DesistSV(ply)
  ply:SetJumpPower(ply:GetNWInt("aotraz_originalJumpPower"))
  hook.Remove("EntityTakeDamage", "aotrazpotions_falldamage_" .. ply:SteamID64())
end
