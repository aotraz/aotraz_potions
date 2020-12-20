local POTION = Wizardry.Objects.NewPotion("aotraz.jump_boost")
POTION:SetName("Jump Boost")
POTION:SetDescription("Makes you jump higher!")
POTION:SetEffectTime(aotraz_potions.C.JBsecs)
POTION:SetColor(Color(230, 230, 230))
if (aotraz_potions.C.Debug == true) then
  POTION:SetStirAmount(0.1)
else
  POTION:SetStirAmount(aotraz_potions.C.JBst)
end

POTION.effects = {
  "Makes you jump " .. tostring(aotraz_potions.C.JumpPower) .. "x higher."
}
POTION.recipe = aotraz_potions.PR.JB

POTION:Define()

function POTION:DrinkSV(ply)
  ply:SetNWInt("aotraz_originalJumpPower" , ply:GetJumpPower())
  ply:SetJumpPower(ply:GetNWInt("aotraz_originalJumpPower") * aotraz_potions.C.JumpPower)
end

function POTION:DesistSV(ply)
  ply:SetJumpPower(ply:GetNWInt("aotraz_originalJumpPower"))
end
