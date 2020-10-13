class Purpose < ActiveHash::Base
  self.data = [
    {id: 0, name: "what’s your goal?" },
    {id: 1, name: "Language Exchange / 言語交換"},
    {id: 2, name: "Experience a different culture / 異文化交流"},
    {id: 3, name: "Hang out / おでかけ"},
    {id: 4, name: "Others / その他"}
  ]
end