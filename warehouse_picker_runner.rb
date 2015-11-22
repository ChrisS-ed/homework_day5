require_relative './warehouse_picker_functions'

# Given a bay, returns the item in that bay

# print "Please enter the bay you would like an item from: "
# bay = gets.chomp
bay = "a5"
found_item = return_item_at_bay(bay)
puts "The item at bay #{bay} is #{found_item}"

# Given an item return the bay that it is in.

# print "Please enter the name of an item to find out what bay it is in: "
# item = gets.chomp
item = "paint brush"
found_bay = return_bay_with_item(item)
puts "Bay #{found_bay} contains #{item}"

#Given a list of bays, list the items in those bays

list_of_bays = ["a10", "b5", "c10"]
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
puts "Found items: #{found_items} for bays: #{list_of_bays}"

# Given a list of items find the bays.
list_of_items = ["rubber band", "nail filer", "leg warmers"]
found_bays = return_list_of_bays(list_of_items)
puts "Found bays: #{found_bays} for items: #{list_of_items}"

# Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays. 
list_of_bays = ["b5", "b10", "b6"]
found_items = return_list_of_items(list_of_bays)
furthest_bays_distance = find_furthest_distance(list_of_bays)
puts "The biggest distance between two bays is #{furthest_bays_distance}"

# Given a list of products, find the bays that need to be visited, and order them in the order they need to be visited from entrance to exit
list_of_items = ["shoe lace", "rusty nail", "leg warmers"]
found_bays = return_list_of_bays(list_of_items)
puts "Found bays: #{found_bays} for items: #{list_of_items}"
ordered_list_of_bays = order_bays(found_bays)
puts "The bays should be visited in this order: #{ordered_list_of_bays}"



