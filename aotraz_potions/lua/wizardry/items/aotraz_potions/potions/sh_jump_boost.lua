local POTION = Wizardry.Objects.NewPotion("aotraz.jump_boost")
POTION:SetName("Jump Boost")
POTION:SetDescription("Makes you jump higher!")
POTION:SetEffectTime(15)
POTION:SetColor(Color(230, 230, 230))
POTION:SetStirAmount(8)

POTION.effects = {
  "Makes you jump " .. tostring(aotraz_potions.Config.JumpPower) .. "x higher."
}
POTION.recipe = {
  ["aotraz.meth"] = 3,
  ["wizardry.strengthcrystal"] = 1
}

POTION:Define()

function POTION:DrinkSV(ply)
  ply:SetNWInt("aotraz_originalJumpPower" , ply:GetJumpPower())
  ply:SetJumpPower(ply:GetNWInt("aotraz_originalJumpPower") * aotraz_potions.Config.JumpPower)
end

function POTION:DesistSV(ply)
  ply:SetJumpPower(ply:GetNWInt("aotraz_originalJumpPower"))
end
