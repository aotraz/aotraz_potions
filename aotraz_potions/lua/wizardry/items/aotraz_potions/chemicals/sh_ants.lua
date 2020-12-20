local CHEMICAL = Wizardry.Objects.NewChemical("aotraz.ants")
CHEMICAL:SetName("A Bottle of Ants")
CHEMICAL:SetDescription("Yes. That's it. Don't ask why they're so expensive.")
if aotraz_potions.Config.Debug == true then
  CHEMICAL:SetPrice(0)
else
  CHEMICAL:SetPrice(aotraz_potions.Config.Ants)
end
CHEMICAL:Define()
