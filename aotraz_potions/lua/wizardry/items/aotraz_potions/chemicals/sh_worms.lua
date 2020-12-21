local CHEMICAL = Wizardry.Objects.NewChemical("aotraz.worms")
CHEMICAL:SetName("A Bottle of Worms")
CHEMICAL:SetDescription("A (cheap-ish) bottle of live worms. Yum.")
if aotraz_potions.C.Debug == true then
  CHEMICAL:SetPrice(0)
else
  CHEMICAL:SetPrice(aotraz_potions.C.Worms)
end
CHEMICAL:Define()
