new_york = {
  queens: {
    house: {
      bed_room: ["bed", "cat", "dog"],
      living_room: ["sofa", "grandma"],
      kitchen: ["mom", "stove"],
      bathroom: ["toilet"]
  },
    apartment: {
      bed_room: ["floor"],
      living_room: ["crazy guy"],
      kitchen: ["bugs"],
      bathroom: ["bathtub"]
    }
  },
  bronx: {
    house: {
      bed_room: ["sleepy guy"],
      living_room: ["dvd"],
      kitchen: ["knives"],
      bathroom: ["toothbrush", toilet: "clog"]
    }
  }
}

puts new_york[:queens][:house][:bed_room][0].upcase
puts new_york[:queens][:apartment].empty?
print new_york[:bronx][:house].flatten
