
// Look through each array index
//   Count the each of the array value strings
//     If the array value count is bigger than others store it into an empty variable
//     Store the big array value into an empty variable
// print out longest array


function longString(){
  var color = ["blue","red","grey","green"];
  var count = 0;
  var longestString = "";
  for (var i = 0; i <= (color.length - 1); i++){
    if (color[i].length > count){
      count = color[i].length;
      longestString = color[i];
    }
  }
  return longestString;
}

// Go through each objects key value
// Compare each values together
// If match return true
// If there's no match return false

var hash1 = {
  a: "tom",
  b: "jay",
  c: "cra"
}

var hash2 = {
  a: "t",
  b: "dk",
  d: "ok"
}

function matchKey(hash1, hash2){
  this.hash1 = hash1
  this.hash2 = hash2
  for (var k in hash1){
    for (var k2 in hash2){
      if(k == k2){
        return true;
      }
    }
  }
}

// Give function a integer
// Randomly pick letters from an array of letters one at a time
// Add each letters to a new string variable

function randomWord(numOfletters){
  var abc = "abcdefghijklmnopqrstuvwxyz";
  var alphabet = abc.split("");
  var ranWord = "";

  for (var i = 1; i <= numOfletters; i++){
    var index = Math.floor(Math.random()*((abc.length) - 0) + 0);
    ranWord += alphabet[index];
  }
  return ranWord
}

console.log(matchKey(hash1, hash2))
longString()
console.log(randomWord(3))
