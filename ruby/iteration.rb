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
