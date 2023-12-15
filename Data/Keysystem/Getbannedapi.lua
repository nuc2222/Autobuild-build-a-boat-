local myList = {
  "null",
}
local itemToCheck = name
local isInList = false
for _, item in ipairs(myList) do
    if item == itemToCheck then
        isInList = true
        break
    end
end
if isInList then
    return True
else
    return false
end
