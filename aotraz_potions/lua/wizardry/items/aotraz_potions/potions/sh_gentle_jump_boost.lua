local POTION = Wizardry.Objects.NewPotion("aotraz.gentle_jump_boost")
POTION:SetName("Gentle Jump Boost")
POTION:SetDescription("Combines the effects of Jump Boost and Gentle Landing.")
POTION:SetEffectTime(20)
POTION:SetColor(Color(100, 100, 100))
if (aotraz_potions.Config.Debug == true) then
  POTION:SetStirAmount(1)
else
  POTION:SetStirAmount(15)
end

POTION.effects = {
  "Makes you jump " .. tostring(aotraz_potions.Config.JumpPower) .. "x higher and take no fall damage."
}
POTION.recipe = {
  ["aotraz.meth"] = 3,
  ["aotraz.angels_feather"] = 2,
  ["wizardry.organsoup"] = 1
}

POTION:Define()

function POTION:DrinkSV(ply)
  ply:SetNWInt("aotraz_originalJumpPower" , ply:GetJumpPower())
  ply:SetJumpPower(ply:GetNWInt("aotraz_originalJumpPower") * aotraz_potions.Config.JumpPower)
  hook.Add("EntityTakeDamage", "aotrazpotions_falldamage_" .. ply:SteamID64(), function(target, dmginfo)
  	if (target == ply && dmginfo:IsFallDamage()) then
      dmginfo:ScaleDamage(0)
  	end
end )
end

function POTION:DesistSV(ply)
  ply:SetJumpPower(ply:GetNWInt("aotraz_originalJumpPower"))
  hook.Remove("EntityTakeDamage", "aotrazpotions_falldamage_" .. ply:SteamID64())
end
