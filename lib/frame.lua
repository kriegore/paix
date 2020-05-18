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
    return self._events[event](self, event, ...)
  end)

  function f.onEvent(event, handler)
    f._events[event] = handler
  end

  return f
end
