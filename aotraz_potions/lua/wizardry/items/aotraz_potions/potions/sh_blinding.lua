local POTION = Wizardry.Objects.NewPotion("aotraz.blinding")
POTION:SetName("Blinding")
POTION:SetDescription("Makes you see no longer.")
POTION:SetEffectTime(aotraz_potions.C.Bsecs)
POTION:SetColor(Color(255, 50, 0))
if (aotraz_potions.C.Debug == true) then
  POTION:SetStirAmount(0.1)
else
  POTION:SetStirAmount(aotraz_potions.C.Bst)
end

POTION.effects = {
  "See no evil."
}
POTION.recipe = aotraz_potions.PR.B

POTION:Define()

function POTION:DrinkSV(ply)
  ply:ScreenFade(SCREENFADE.OUT, Color(0, 0, 0, 255), 1, aotraz_potions.C.Bsecs)
end

function POTION:DesistSV(ply)
  
end
