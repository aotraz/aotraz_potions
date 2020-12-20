local POTION = Wizardry.Objects.NewPotion("aotraz.growth")
POTION:SetName("Growth")
POTION:SetDescription("Makes you bigger!")
POTION:SetEffectTime(aotraz_potions.C.Gsecs)
POTION:SetColor(Color(10, 230, 10))
if (aotraz_potions.C.Debug == true) then
  POTION:SetStirAmount(0.1)
else
  POTION:SetStirAmount(aotraz_potions.C.Gst)
end

POTION.effects = {
  "Makes you grow twice your size. **Affects your hitbox!**"
}
POTION.recipe = aotraz_potions.PR.G

POTION:Define()

function POTION:DrinkSV(ply)
  ply:SetNWInt("aotraz_originalSize" , ply:GetModelScale())
  ply:SetModelScale(ply:GetNWInt("aotraz_originalSize") * aotraz_potions.C.GrowthPower)
end

function POTION:DesistSV(ply)
  ply:SetModelScale(ply:GetNWInt("aotraz_originalSize"))
end
