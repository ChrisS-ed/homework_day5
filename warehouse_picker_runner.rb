require_relative './warehouse_picker_functions'

# Given a bay, returns the item in that bay
# print "Please enter the bay you would like an item from: "
# bay = gets.chomp
# found_item = return_item_at_bay(bay)
# puts "The item at bay #{bay} is #{found_item}"

# Given an item return the bay that it is in.
print "Please enter the name of an item to find out what bay it is in: "
item = gets.chomp
found_bay = return_bay_with_item(item)
puts "Bay #{found_bay} contains #{item}"

