local CHEMICAL = Wizardry.Objects.NewChemical("aotraz.meth")
CHEMICAL:SetName("Meth")
CHEMICAL:SetDescription("for uh... scientific purposes... That makes it legal, right?")
if aotraz_potions.C.Debug == true then
  CHEMICAL:SetPrice(0)
else
  CHEMICAL:SetPrice(aotraz_potions.C.Meth)
end
CHEMICAL:Define()
