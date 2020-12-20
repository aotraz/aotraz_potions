aotraz_potions = aotraz_potions or {}
aotraz_potions.C = aotraz_potions.C or {}
aotraz_potions.PR = aotraz_potions.PR or {}


-- Potion Effects
aotraz_potions.C.JumpPower = 3 -- This affects Jump Boost and Gentle Jump Boost (player's original jump power is multiplied by this).
aotraz_potions.C.GrowthPower = 2 -- This affects the multipler of the Growth Potion.
aotraz_potions.C.ShrinkingPower = 0.5 -- This affects the multipler of the Shrinking Potion.

-- Potion Duration
aotraz_potions.C.Csecs = 10 -- This affects how long the player is on fire for, after drinking the Combustion Potion (in seconds).
aotraz_potions.C.GJBsecs = 20 -- This affects how long the effects of Gentle Jump Boost last.
aotraz_potions.C.GLsecs = 15 -- This affects how long the effects of Gentle Landing last.
aotraz_potions.C.Gsecs = 30 -- This affects how long the effects of Growth last.
aotraz_potions.C.JBsecs = 15 -- This affects how long the effects of Jump Boost last.
aotraz_potions.C.Ssecs = 30 -- This affects how long the effects of Shrinking last.

-- Chem. Prices
aotraz_potions.C.GToe = 1000 -- This affects the price of Giant's Toe
aotraz_potions.C.Meth = 1000 -- This affects the price of Meth
aotraz_potions.C.Afeather = 2000 -- This affects the price of Angel's feather
aotraz_potions.C.Ants = 3000 -- This affects the price of Ants
aotraz_potions.C.Cyanide = 4000 -- This affects the price of Cyanide

-- Chem. Stir Time (in seconds)
aotraz_potions.C.Cst = 5 -- This affects the stirring time of Combustion
aotraz_potions.C.GJBst = 15 -- This affects the stirring time of Gentle Jump Boost
aotraz_potions.C.GLst = 8 -- This affects the stirring time of Gentle Landing
aotraz_potions.C.Gst = 10 -- This affects the stirring time of Growth
aotraz_potions.C.JBst = 8 -- This affects the stirring time of Jump Boost
aotraz_potions.C.Sst = 10 -- This affects the stirring time of Shrinking


--[[
Potion Recipes

If A RECIPE IS THE SAME AS ANOTHER, THE ADDON WILL REfUSE TO LOAD IT
The following are the ingredient/chemical names in both Wizardry and my pack:

Wizardry
+---------------------+--------------------------+
| Chemical/Ingredient |                          |
+---------------------+--------------------------+
| Adrenaline          | wizardry.adrenaline      |
| Blood               | wizardry.blood           |
| Muscle Sample       | wizardry.musclesample    |
| Organ Soup          | wizardry.organsoup       |
| Retina              | wizardry.retina          |
| Strength Crystal    | wizardry.strengthcrystal |
+---------------------+--------------------------+

Aotraz's Potions
+---------------------+-----------------------+
| Chemical/Ingredient |                       |
+---------------------+-----------------------+
| Angel's feather     | aotraz.angels_feather |
| Ants                | aotraz.ants           |
| Cyanide             | aotraz.cyanide        |
| Giant's Toe         | aotraz.giants_toe     |
| Meth                | aotraz.meth           |
+---------------------+-----------------------+
--]]

-- Gentle Landing
aotraz_potions.PR.GL = {
  ["aotraz.angels_feather"] = 1,
  ["wizardry.blood"] = 5
}

-- Growth
aotraz_potions.PR.G = {
  ["aotraz.giants_toe"] = 2,
  ["wizardry.organsoup"] = 1
}

-- Jump Boost
aotraz_potions.PR.JB = { 
  ["aotraz.meth"] = 3,
  ["wizardry.strengthcrystal"] = 1
}

-- Shrinking
aotraz_potions.PR.S = {
  ["aotraz.ants"] = 2,
  ["wizardry.adrenaline"] = 1,
  ["wizardry.blood"] = 2
}

-- Combustion
aotraz_potions.PR.C = {
  ["wizardry.blood"] = 5
}

-- Gentle Jump Boost
aotraz_potions.PR.GJB = {
  ["aotraz.meth"] = 3,
  ["aotraz.angels_feather"] = 2,
  ["wizardry.organsoup"] = 1
}


-- Debug
aotraz_potions.C.Debug = true -- Activates debug mode, making this pack's ingredients/chemicals free and potions stir instantly
