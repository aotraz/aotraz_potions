local POTION = Wizardry.Objects.NewPotion("aotraz.combustion")
POTION:SetName("Combustion")
POTION:SetDescription("Sets you on fire!")
POTION:SetEffectTime(aotraz_potions.Config.CombustionSecs)
POTION:SetColor(Color(255, 50, 0))
if (aotraz_potions.Config.Debug == true) then
  POTION:SetStirAmount(1)
else
  POTION:SetStirAmount(5)
end

POTION.effects = {
  "Sets you aflame. (Is it getting hot in here?)"
}
POTION.recipe = {
  ["wizardry.blood"] = 5
}

POTION:Define()

function POTION:DrinkSV(ply)
  ply:Ignite(aotraz_potions.Config.CombustionSecs)
end

function POTION:DesistSV(ply)
  
end
