#release 1
# setting up an array
colors = ["red", "blue", "green"]

# print original array values
p colors

# use to take in the new array values for colors
mod_colors = []

# setting up a hash
people = {
  name: "tom",
  age: "5",
  status: "unmarried"
}

# print orignial hash keys and values
p people

# modifies color cases using .each to upper case
colors.each do |color|
  upcase_color = color.upcase
  mod_colors << upcase_color
end
# print to see if .each work
p mod_colors

# modifies colors array using .map to change string to ordinal intergers
colors.map! do |color|
  color.ord
end

# print to see if .map works
p colors

# modifies hash values to uppercase using .each
people.each do |category, value|
  people[category] = value.upcase
end

# print to see hash .each works
p people

# Release 2

numbers = [3,4,5,6,7,]

# deletes number that are lower than 5
numbers.delete_if do |number|
  number < 5
end
p numbers

# add 2 to all the numbers in array
modified = numbers.collect do |number|
  number + 2
end
p modified

# shows how many numbers in an array is divisible by 2
numbers.count do |number|
  number %2 == 0
end
p numbers

# show the location of index 3 in the array
numbers.index do |number|
  number == 3
end
p numbers

hash_profile = {
  name: "tom",
  address: "poor",
  home: "nowhere"
}

# delets a key name :name
hash_profile.delete(:name) do |category, value|
end
p hash_profile

# change each keys to uppercase
hash_profile.each_key do |category|
  puts category.upcase
end
