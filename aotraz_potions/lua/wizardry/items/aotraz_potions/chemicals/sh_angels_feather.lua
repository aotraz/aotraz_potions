local CHEMICAL = Wizardry.Objects.NewChemical("aotraz.angels_feather")
CHEMICAL:SetName("Angel's Feather")
CHEMICAL:SetDescription("Produced locally by demons.")
if aotraz_potions.Config.Debug == true then
  CHEMICAL:SetPrice(0)
else
  CHEMICAL:SetPrice(aotraz_potions.Config.AFeather)
end
CHEMICAL:Define()
