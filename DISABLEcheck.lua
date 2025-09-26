-- This function will throw an exception if the component has the #disabled tag.

function DISABLEcheck()
   local tags = component.tags()
   if iguana.isTest() then return end

   for i, tag in ipairs(tags) do
      if tag == "#disabled" then
         error("This channel is deliberately disabled.  Do not run it.", 2);
      end
   end
end