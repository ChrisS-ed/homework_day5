require_relative './warehouse_picker_functions'

# Given a bay, returns the item in that bay

# print "Please enter the bay you would like an item from: "
# bay = gets.chomp
# found_item = return_item_at_bay(bay)
# puts "The item at bay #{bay} is #{found_item}"

# Given an item return the bay that it is in.

# print "Please enter the name of an item to find out what bay it is in: "
# item = gets.chomp
# found_bay = return_bay_with_item(item)
# puts "Bay #{found_bay} contains #{item}"

#Given a list of bays, list the items in those bays

# list_of_bays = []
list_of_bays = ["a1", "b1", "c1"]
# input_bay = true
# while input_bay == true
#   print "Please enter a bay: "
#   new_bay = gets.chomp
#   list_of_bays.push(new_bay)
#   puts list_of_bays
#   print "Would you like to add another bay? (y/n) "
#   answer = gets.chomp
#   if answer != "y"
#     input_bay = false
#   end
# end
found_items = return_list_of_items(list_of_bays)
puts found_items