local POTION = Wizardry.Objects.NewPotion("aotraz.shrinking")
POTION:SetName("Shrinking")
POTION:SetDescription("Makes you smaller!")
POTION:SetEffectTime(aotraz_potions.C.Ssecs)
POTION:SetColor(Color(100, 230, 10))
if (aotraz_potions.C.Debug == true) then
  POTION:SetStirAmount(0.1)
else
  POTION:SetStirAmount(aotraz_potions.C.Sst)
end

POTION.effects = {
  "Makes you shrink half your size. **Affects your hitbox!**"
}
POTION.recipe = aotraz_potions.PR.S

POTION:Define()

function POTION:DrinkSV(ply)
  ply:SetNWInt("aotraz_originalSize" , ply:GetModelScale())
  ply:SetModelScale(ply:GetNWInt("aotraz_originalSize") * aotraz_potions.C.ShrinkingPower)
end

function POTION:DesistSV(ply)
  ply:SetModelScale(ply:GetNWInt("aotraz_originalSize"))
end
