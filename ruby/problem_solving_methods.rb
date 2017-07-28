# Release 0:
# Search method to look for a number within an array of numbers and
# outputting the index of that number

def search_array(array, number)
    search_result = Array.new # Defining a search result array
    count = 0 # count to loop through array

    # The following logic goes into the array using the counter
    while count < array.length
    	# If the search number matches a value in the array return that index 
    	# Pushing it to the search_result array
        if number == array[count]
            return search_result.push(count)
            count += 1
        else
            count += 1
        end
    end
end
array = [23, 543, 24, 2, 9, 17] # An arbitrary test array
p search_array(array, 24)
# Should output [2] for search value of 24
# Should output nil for search value of 3

# Release 1:
# Defining Fibinacci Method for a number 
def fib_generator(number)
    fib_array = Array.new(number) # Create a new array of the size of the defined number
    counter = 0 # Setting a counter equal to zero to set up a loop
    # Logic to fill in the empty array with Fibinacci numbers
    while counter < fib_array.length
        if counter == 0 # Need to define the first number as zero
            fib_array[counter] = counter # Note counter is zero for first loop
            counter += 1
        elsif counter == 1 # Need to define the second number as one
            fib_array[counter] = counter # Note counter is one for second loop
            counter += 1
        else
        	# Define all other numbers as the last sum of the last two elements in the array
	        fib_array[counter] = (fib_array[counter -1] + fib_array[counter -2]) 
	        counter += 1
        end
    end  
    return fib_array  
end
puts fib_generator(100) # Outputs 218922995834555169026 for an input number of 100

# Release 2: Bubble Sort (acending order)

# printing a test array of arbitrary numbers
p test_array = [51, 14, 9, 2, 87, 62, 17, 102, 204, 73, 100, 281]

def bubble_sort(array)
    counter = 0 # Setting a counter to loop into some logic
    loop do
        swapped = false
        while counter < (array.length) -1
        	# Swapping values if the current value of an element is greater than the value of the next element in the array
            if array[counter] > array[counter+1]
	            array[counter], array[counter+1] = array[counter+1], array[counter]
	            swapped = true # flag that is set if the code is tripped up
            end
            counter += 1
            p array # Print for debugging purposes
        end
        if swapped == false
            break # If no swapping occured at all, break
        end
        bubble_sort(array) #reinsert the method within the method

    end
    return array
end

p bubble_sort(test_array)


### My attempt at the sorting method:
# test_array = [4, 2, 9, 7, 6, 3, 1, 8]

# p test_array

# def bubble_sort(array)
#     counter = 0
#     new_array = array
#     # loop do
#     while counter < (new_array.length - 1)
#     	# flag = false
#     	if new_array[counter] > new_array[counter + 1]
#     		new_array[counter], new_array[counter + 1] = new_array[counter + 1], new_array[counter]
#     		# flag = true
#     	else
#     		# Compare the old array with the new array and see if they are equal
    		
#     	end
#     	p new_array
#     	return new_array
#         counter += 1
#         break if new_array == array
#     end
#     # return new_array
    
#     bubble_sort(new_array)
# end
###

# p bubble_sort(test_array)

# Loop into an array going through each element one at a time, we will be looping by the length of the array

# For an element, look at the next element and compare to see which is greater

# if a neighboring element is greater than the element you are at, switch the two elements

# Move on to the next element and again compare until the last element is reached

# Return the sorted array