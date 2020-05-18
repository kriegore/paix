-- Provides a Frame with a terse syntax for 
-- adding event listeners.
--
-- Psuedo code example:
--  frame = enableEvents(CreateFrame("Frame"))
--  frame.onEvent(EXAMPLE_EVENT, function (self, event) ... end)
--
function enableEvents(f)
  f._events = {}
  
  f:SetScript("OnEvent", function(self, event, ...)
    print(event)
    return self._events[event](self, event, ...)
  end)

  function f.onEvent(event, handler)
    f:RegisterEvent(event)
    f._events[event] = handler
  end

  return f
end
