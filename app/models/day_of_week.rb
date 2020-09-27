class DayOfWeek < ActiveHash::Base
  self.data = [
    {id: 0, name: "day of week"},
    {id: 1, name: " Sun "},
    {id: 2, name: " Mon "},
    {id: 3, name: " Tue"},
    {id: 4, name: " Wed "},
    {id: 5, name: " Thu "},
    {id: 6, name: " Fri "},
    {id: 7, name: " Sat "}
  ]
end
