# Release 0:
def search_array(array, number)
    search_result = Array.new
    count = 0
    while count < array.length
        if number == array[count]
            return search_result.push(count)
            count += 1
        else
            count += 1
        end
    end
end
array = [23, 543, 24, 2, 9, 17]
p search_array(array, 24)

# Release 1:
def fib_generator(number)
    fib_array = Array.new(number)
    counter = 0
    while counter < fib_array.length
        if counter == 0
            fib_array[counter] = counter
            counter += 1
        elsif counter == 1
            fib_array[counter] = counter
            counter += 1
        else
        fib_array[counter] = (fib_array[counter -1] + fib_array[counter -2])
        counter += 1
        end
    end  
    return fib_array  
end
puts fib_generator(100)

# Release 2: Bubble Sort (acending order)

p test_array = [51, 14, 9, 2, 87, 62, 17, 102, 204, 73, 100, 281]
def bubble_sort(array)
    counter = 0
    loop do
        swapped = false
        while counter < (array.length) -1
        # loop do
            if array[counter] > array[counter+1]
	            array[counter], array[counter+1] = array[counter+1], array[counter]
	            swapped = true
            end
            counter += 1
            p array
        end
        if swapped == false
            break
        end
        bubble_sort(array)

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