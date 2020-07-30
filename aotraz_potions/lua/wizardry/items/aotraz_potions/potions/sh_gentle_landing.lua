local POTION = Wizardry.Objects.NewPotion("aotraz.gentle_landing")
POTION:SetName("Gentle Landing")
POTION:SetDescription("Makes you have no fall damage for a small period of time.")
POTION:SetEffectTime(15)
POTION:SetColor(Color(10, 10, 10))
POTION:SetStirAmount(8)

POTION.effects = {
  "Makes you take no fall damage."
}
POTION.recipe = {
  ["aotraz.angels_feather"] = 1,
  ["wizardry.blood"] = 5
}

POTION:Define()

function POTION:DrinkSV(ply)
  hook.Add("EntityTakeDamage", "aotrazpotions_falldamage_" + ply:SteamID64(), function(target, dmginfo)
  	if (target == ply && dmginfo:IsFallDamage()) then
      dmginfo:ScaleDamage(0)
  	end
end )
end

function POTION:DesistSV(ply)
  hook.Remove("EntityTakeDamage", "aotrazpotions_falldamage_" + ply:SteamID64())
end
