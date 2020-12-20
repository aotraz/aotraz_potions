local POTION = Wizardry.Objects.NewPotion("aotraz.combustion")
POTION:SetName("Combustion")
POTION:SetDescription("Sets you on fire!")
POTION:SetEffectTime(aotraz_potions.C.Csecs)
POTION:SetColor(Color(255, 50, 0))
if (aotraz_potions.C.Debug == true) then
  POTION:SetStirAmount(0.1)
else
  POTION:SetStirAmount(aotraz_potions.C.Cst)
end

POTION.effects = {
  "Sets you aflame. (Is it getting hot in here?)"
}
POTION.recipe = aotraz_potions.PR.C

POTION:Define()

function POTION:DrinkSV(ply)
  ply:Ignite(aotraz_potions.C.Csecs)
end

function POTION:DesistSV(ply)
  
end
