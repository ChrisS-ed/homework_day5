
WAREHOUSE = [{bay: "a10", item: "rubber band"}, {bay: "a9", item: "glow stick"}, {bay: "a8", item: "model car"}, {bay: "a7", item: "bookmark"}, {bay: "a6", item: "shovel"}, {bay: "a5", item: "rubber duck"}, {bay: "a4", item: "hanger"}, {bay: "a3", item: "blouse"}, {bay: "a2", item: "stop sign"}, {bay: "a1", item: "needle"}, 
            {bay: "c1", item: "rusty nail"}, {bay: "c2", item: "drill press"}, {bay: "c3", item: "chalk"}, {bay: "c4", item: "word search"}, {bay: "c5", item: "thermometer"}, {bay: "c6", item: "face wash"}, {bay: "c7", item: "paint brush"}, {bay: "c8", item: "candy wrapper"}, {bay: "c9", item: "shoe lace"}, {bay: "c10", item: "leg warmers"}, 
            {bay: "b1", item: "tyre swing"}, {bay: "b2", item: "sharpie"}, {bay: "b3", item: "picture frame"}, {bay: "b4", item: "photo album"}, {bay: "b5", item: "nail filer"}, {bay: "b6", item: "tooth paste"}, {bay: "b7", item: "bath fizzers"}, {bay: "b8", item: "tissue box"}, {bay: "b9", item: "deodorant"}, {bay: "b10", item: "cookie jar"}]

def return_item_at_bay(chosen_bay)
  WAREHOUSE.select { |location| location[:bay] == chosen_bay }.first[:item]
end

def return_bay_with_item(chosen_item)
  WAREHOUSE.select { |wanted| wanted[:item] == chosen_item }.first[:bay]
end

def return_list_of_items(list_of_bays)
  # start with an array, for each bay in array, we select that bay's item and add it to a new array of items, then return array of items
  list_of_bays.map { |list_bay| return_item_at_bay(list_bay) }
end

def return_list_of_bays(list_of_items)
  list_of_items.map { |list_item| return_bay_with_item(list_item) }
end

def find_furthest_distance(list_of_bays)
  # for each bay in list, compare with bays in rest of list to find biggest distance between bays, then update overall biggest distance variable
  furthest_bays_distance = 0
  list_of_bays.each { | list_bay | 
    biggest_distance = compare_with_rest_of_bays(list_bay, list_of_bays)
    if biggest_distance > furthest_bays_distance
      furthest_bays_distance = biggest_distance
    end
    }
    return furthest_bays_distance
end

def compare_with_rest_of_bays(test_bay, list_of_bays)
  # find index of test_bay in WAREHOUSE array, then compare with indices of other bays in bay list to find biggest distance between two bays
  test_idx = WAREHOUSE.index { |location| location[:bay] == test_bay }
  furthest_distance = 0
  list_of_bays.each {| this_bay| 
    this_idx = WAREHOUSE.index { |location| location[:bay] == this_bay }
    new_distance = (test_idx - this_idx).abs
    if new_distance > furthest_distance
      furthest_distance = new_distance
    end
  }
  return furthest_distance
end

def order_bays(found_bays)
  # sort bays by WAREHOUSE index of each bay in list
  sorted_bays = found_bays.sort_by { | this_bay | WAREHOUSE.index { |location| location[:bay] == this_bay }}
  return sorted_bays
end


