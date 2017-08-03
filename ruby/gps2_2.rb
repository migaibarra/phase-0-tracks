## Code for GPS 2.2: Grocery List Exercise
#  Coded by Miguel A. Ibarra, Jr. with Devin Miller as Navigator

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Take in a string of items seperated by spaces
  # Create an array of items from the string, each word is an element in the array
  # Elements will be keys for our grocery list hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: grocery list hash
def create_grocery_list(str)
  items = str.split(" ")
  grocery_list = Hash.new
  # Alternative way to store items in a list
  # counter = 0
  # while counter < items.length
  # 	grocery_list.store(items[counter], 1)
  # 	counter += 1
  # end
  items.each do |item|
  	grocery_list.store(item, 1)
  end
  p grocery_list
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
	# Add item and quantity into existing list
# output: Updated hash of grocery list
def list_adder(list, item_name, quantity=1)
	list.store(item_name, quantity)
	p list
end


# Method to remove an item from the list
# input: list name and item name
# steps:
	# Search for item in list hash
	# Remove item from the list
# output: Updated list
def remove_item(list, item_name)
	list.delete(item_name)
	p list
end


# Method to update the quantity of an item
# input: list, the item we wish to update, and quantity (integer)
# steps:
	# look for for the item in the list
	# update the quanity for that item
# output: updated list
def update_quanity(list, item_name, new_quantity)

	list[item_name] = new_quantity
	p list
end

# Method to print a list and make it look pretty
# input: list
# steps:
	# Iterate through the list
	# Format and print each item
# output: Formatted output of the items in the list
def list_formatter(list)
	list.each do |item, quanity|
		puts "we need #{quanity} of #{item}"
	end
end

## Driver Code

grocery_items = "apple orange ham salad"
test_list = create_grocery_list(grocery_items)

list_adder(test_list, "cheese")
list_adder(test_list, "milk", 3)

remove_item(test_list, "ham")

update_quanity(test_list, "cheese", 5)

list_formatter(test_list)
