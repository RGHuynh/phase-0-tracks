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


function Car(color, name){
  this.color = color;
  this.name = name;

  this.carData = function(){
    console.log("The Car color is " + color);
    console.log("The Name of your car is " + name);
  };
}

var car1 = new Car("blue", "Tom")
car1.carData()
