-- Personal reminder :P
message("Get to work on this addon!!")

local frame = enableEvents(CreateFrame("Frame"))

frame.onEvent("PLAYER_TARGET_CHANGED", function ()
  local targetName = UnitName("playertarget")
  local guildName = GetGuildInfo("playertarget")
  local message
  if isEmpty(guildName) then
    message = "target changed to " .. targetName
  else
    message = "target changed to " .. targetName .. " from " .. guildName
  end
  print(message)
end)

print(frame._events)

-- For settings...
--
-- Example I looked at establishs app state on `PLAYER_LOGIN` event.



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