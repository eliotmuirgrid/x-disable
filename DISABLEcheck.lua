-- This function will throw an exception if the channel description has the #disabled tag in it.

function DISABLEcheck()
   local R = iguana.call{api="/component/detail", data={component=iguana.translatorGuid()}, live=true}
   if nil ~= R.data.description:find("#disabled") then
      error("This channel is deliberately disabled.  Do not run it.", 2);
   end
end