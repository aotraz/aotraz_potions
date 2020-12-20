local POTION = Wizardry.Objects.NewPotion("aotraz.growth")
POTION:SetName("Growth")
POTION:SetDescription("Makes you bigger!")
POTION:SetEffectTime(30)
POTION:SetColor(Color(10, 230, 10))
if (aotraz_potions.Config.Debug == true) then
  POTION:SetStirAmount(1)
else
  POTION:SetStirAmount(10)
end

POTION.effects = {
  "Makes you grow twice your size. **Affects your hitbox!**"
}
POTION.recipe = {
  ["aotraz.giants_toe"] = 2,
  ["wizardry.organsoup"] = 1
}

POTION:Define()

function POTION:DrinkSV(ply)
  ply:SetNWInt("aotraz_originalSize" , ply:GetModelScale())
  ply:SetModelScale(ply:GetNWInt("aotraz_originalSize") * 2)
end

function POTION:DesistSV(ply)
  ply:SetModelScale(ply:GetNWInt("aotraz_originalSize"))
end
