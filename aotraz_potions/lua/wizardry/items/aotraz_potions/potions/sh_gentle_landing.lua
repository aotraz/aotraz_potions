local POTION = Wizardry.Objects.NewPotion("aotraz.gentle_landing")
POTION:SetName("Gentle Landing")
POTION:SetDescription("Makes you have no fall damage for a small period of time.")
POTION:SetEffectTime(aotraz_potions.C.GLsecs)
POTION:SetColor(Color(10, 10, 10))
if (aotraz_potions.C.Debug == true) then
  POTION:SetStirAmount(0.1)
else
  POTION:SetStirAmount(aotraz_potions.C.GLst)
end

POTION.effects = {
  "Makes you take no fall damage."
}
POTION.recipe = aotraz_potions.PR.GL

POTION:Define()

function POTION:DrinkSV(ply)
  hook.Add("EntityTakeDamage", "aotrazpotions_falldamage_" .. ply:SteamID64(), function(target, dmginfo)
  	if (target == ply && dmginfo:IsfallDamage()) then
      dmginfo:ScaleDamage(0)
  	end
end )
end

function POTION:DesistSV(ply)
  hook.Remove("EntityTakeDamage", "aotrazpotions_falldamage_" .. ply:SteamID64())
end
