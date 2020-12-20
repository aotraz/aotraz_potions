local CHEMICAL = Wizardry.Objects.NewChemical("aotraz.giants_toe")
CHEMICAL:SetName("Giant's Toe")
CHEMICAL:SetDescription("Sourced by your local pagans.")
if aotraz_potions.C.Debug == true then
  CHEMICAL:SetPrice(0)
else
  CHEMICAL:SetPrice(aotraz_potions.C.GToe)
end
CHEMICAL:Define()
