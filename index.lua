Paix = {}

function Paix:test()
  message("Get to work on this addon!!")
end

Paix:test()

-- hooksecurefunc(TargetUnit, function (unit)
--   message("unit name called")
--   print(unit)
-- end)

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_TARGET_CHANGED")
frame:SetScript("OnEvent", function(self, event, ...)
  local name = UnitName("playertarget")
  print("target changed to " .. name)
end)


-- POC part 1
--
-- When targeting another player
-- print their name and guild to the side.
--
-- This will prove that we can read their name in code 
-- and render something to their player portrait


-- POC part 2
--
-- From the interface menu, allow a player to add
-- player and guild names that are friendly.
--
-- This data should be stored across sessions.


-- POC part 3
--
-- compare name and guild of target against the list
-- added via UI. If the there is a match, render
-- the word "friend" near their portrait


-- POC part 3.1
--
-- Determine a more visual signifier for a friendly player


-- POC part 3.2
--
-- Change colour of names and health bars for friendlies.
-- This is in addition to portrait changes.

-- POC part 4
--
-- Have option for disabling paix in BGs (defaulting to disabled)
-- General enable/disable option
-- option to change colour signifiers