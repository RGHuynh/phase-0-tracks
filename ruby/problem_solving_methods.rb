# testing array
array_test = [1,2,3,4,5]

# method to pass the array_test and search index to
def search_array(array, index)
  # have an empty array to store the index array numbers
  index_array = []

  length_of_array = array.length - 1

  # convert array and index to string
  array_string = array.map {|x| x.to_s}
  index_string = index.to_s

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
