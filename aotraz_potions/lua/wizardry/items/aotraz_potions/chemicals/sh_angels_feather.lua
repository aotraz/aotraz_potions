local CHEMICAL = Wizardry.Objects.NewChemical("aotraz.angels_feather")
CHEMICAL:SetName("Angel's Feather")
CHEMICAL:SetDescription("Produced locally by demons.")
if aotraz_potions.C.Debug == true then
  CHEMICAL:SetPrice(0)
else
  CHEMICAL:SetPrice(aotraz_potions.C.Afeather)
end
CHEMICAL:Define()
