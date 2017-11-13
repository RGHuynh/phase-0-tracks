# Release 0
# testing array

array_test = [1,2,3,4,5]

# method to pass the array_test and search index to
def search_array(array, search_int)
  # have an empty array to store the index array numbers
  index_array = []

  length_of_array = array.length - 1

  # convert array and index to string
  array_string = array.map {|x| x.to_s}
  index_string = search_int.to_s

  # make a counter for 0 to array lenght numbers
  for x in 0..length_of_array
    index_array << x.to_s
  end

  # make the two arrays into a hash
  p array_index = Hash[index_array.zip(array_string.map {|i| i.split})]

  # convert back to an integer

  if array_index[index_string] == nil
    p nil
  else
    p array_index[index_string].map {|i| i.to_i}
  end


end

search_array(array_test, 1)

# Release 1
def fib(input_number)
  old_number = 0
  new_number = 1

  # passing info to the array
  fib_storage = [0,1]

  y = input_number - 2

  for x in 1..y
    next_number = new_number + old_number
    fib_storage << next_number
    old_number = new_number
    new_number = next_number

  end
  p fib_storage
end

fib(100)


Release 3





# Pass array into argument
def decending_order(array)
  # Count the length of the array minus 1
  array_count = array.length - 1

  # Loop through until all numbers are in decending order
  loop do

    swapped = false
    # Loop through each number from right to left:
    for x in 1..array_count
      # If number to the right is smaller than number to the left:
      if array[-x] < array[-(x+1)]
        # Swap number
        array[-(x+1)], array[-x] = array[-x], array[-(x+1)]
        swapped = true
      end
    end
  # Break loop if no more swap are done
    break if not swapped
  end
  # Print decending order
  p array
end

a = [2,5,1,2,3,4,56,3,2,324,23,4,2,4,5,6]
decending_order(a)
    
