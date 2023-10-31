-- This function will throw an exception if the channel description has the #disabled tag in it.

function DISABLEcheck()
   local R = component.description()
   if nil ~= R:find("#disabled") then
      error("This channel is deliberately disabled.  Do not run it.", 2);
   end
end