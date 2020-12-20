local POTION = Wizardry.Objects.NewPotion("aotraz.shrinking")
POTION:SetName("Shrinking")
POTION:SetDescription("Makes you smaller!")
POTION:SetEffectTime(30)
POTION:SetColor(Color(100, 230, 10))
if (aotraz_potions.Config.Debug == true) then
  POTION:SetStirAmount(1)
else
  POTION:SetStirAmount(10)
end

POTION.effects = {
  "Makes you shrink half your size. **Affects your hitbox!**"
}
POTION.recipe = {
  ["aotraz.ants"] = 2,
  ["wizardry.adrenaline"] = 1,
  ["wizardry.blood"] = 2
}

POTION:Define()

function POTION:DrinkSV(ply)
  ply:SetNWInt("aotraz_originalSize" , ply:GetModelScale())
  ply:SetModelScale(ply:GetNWInt("aotraz_originalSize") * 0.5)
end

function POTION:DesistSV(ply)
  ply:SetModelScale(ply:GetNWInt("aotraz_originalSize"))
end
