local CHEMICAL = Wizardry.Objects.NewChemical("aotraz.cyanide")
CHEMICAL:SetName("Cyanide")
CHEMICAL:SetDescription("Enjoying the taste of death since 1782!")
if aotraz_potions.Config.Debug == true then
  CHEMICAL:SetPrice(0)
else
  CHEMICAL:SetPrice(aotraz_potions.Config.Cyanide)
end
CHEMICAL:Define()
