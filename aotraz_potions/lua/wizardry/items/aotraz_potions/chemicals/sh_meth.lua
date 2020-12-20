local CHEMICAL = Wizardry.Objects.NewChemical("aotraz.meth")
CHEMICAL:SetName("Meth")
CHEMICAL:SetDescription("For uh... scientific purposes... That makes it legal, right?")
if aotraz_potions.Config.Debug == true then
  CHEMICAL:SetPrice(0)
else
  CHEMICAL:SetPrice(aotraz_potions.Config.Meth)
end
CHEMICAL:Define()
