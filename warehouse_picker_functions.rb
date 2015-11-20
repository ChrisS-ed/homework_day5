
WAREHOUSE = [{bay: "a10", item: nil}, {bay: "a9", item: nil}, {bay: "a8", item: nil}, {bay: "a7", item: nil}, {bay: "a6", item: nil}, {bay: "a5", item: nil}, {bay: "a4", item: nil}, {bay: "a3", item: nil}, {bay: "a2", item: nil}, {bay: "a1", item: nil}, {bay: "c1", item: nil}, {bay: "c2", item: nil}, {bay: "c3", item: nil}, {bay: "c4", item: nil}, {bay: "c5", item: nil}, {bay: "c6", item: nil}, {bay: "c7", item: nil}, {bay: "c8", item: nil}, {bay: "c9", item: nil}, {bay: "c10", item: nil}, {bay: "b1", item: nil}, {bay: "b2", item: nil}, {bay: "b3", item: nil}, {bay: "b4", item: nil}, {bay: "b5", item: nil}, {bay: "b6", item: nil}, {bay: "b7", item: "bath fizzers"}, {bay: "b8", item: nil}, {bay: "b9", item: nil}, {bay: "b10", item: nil}]

def return_item_at_bay(chosen_bay)
  WAREHOUSE.select { |location| location[:bay] == chosen_bay }.first[:item]
end
