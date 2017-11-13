// Write a function that takes a word as a parameter
// swap the letters around until first word is in the end


// bring the first word to the back, and so on
// print new word

function reverse(word){
  var splitWord = word.split('');
  var modWord = ''
  for(var i = (splitWord.length - 1) ; i >= 0; i--){
    modWord += splitWord[i].toString();
  }
  console.log(modWord)
}

if(1==1){
reverse("hello");
}
