local POTION = Wizardry.Objects.NewPotion("aotraz.mute")
POTION:SetName("Mute")
POTION:SetDescription("Silences you.")
POTION:SetEffectTime(aotraz_potions.C.Msecs)
POTION:SetColor(Color(10, 10, 10))
if (aotraz_potions.C.Debug == true) then
  POTION:SetStirAmount(0.1)
else
  POTION:SetStirAmount(aotraz_potions.C.Mst)
end

POTION.effects = {
  "No one will hear you..."
}
POTION.recipe = aotraz_potions.PR.M

POTION:Define()

function POTION:DrinkSV(ply)
  hook.Add("PlayerCanHearPlayersVoice", "aotrazpotions_mute_" .. ply:SteamID64(), function(listener, talker)
    if (talker == ply && listener:GetPos():DistToSqr(talker:GetPos()) > -1) then
	  return false
	end
end )
end

function POTION:DesistSV(ply)
  hook.Remove("PlayerCanHearPlayersVoice", "aotrazpotions_mute_" + ply:SteamID64())
end
