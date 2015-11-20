require_relative './warehouse_picker_functions'

# warehouse picker
# warehouse is array of three racks: [row_a, row_b, row_c]
# each rack has 10 bays which can each contain items: row_a = {a1: item, a2: item .. a10: item} 


# Given a bay, returns the item in that bay
bay = "b7"
found_item = return_item_at_bay(bay)
puts "The item at bay #{bay} is #{found_item}"

# Given an item return the bay that it is in.
# found_bay = return_bay_with_item(item)
# puts "The bay containing item #{item} is bay #{bay}"