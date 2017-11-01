var color = ["black", "green","brown","white"]
var horseName = ["Tom","James", "Bob", "Kid"]

color.push("purple");
horseName.push("Boy");
console.log(color, horseName);

var horse = {};
for(var i = 0; i <= (color.length - 1); i++){
  horse[horseName[i]] = color[i];
}

console.log(horse)
