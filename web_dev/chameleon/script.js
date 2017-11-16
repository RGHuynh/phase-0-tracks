// console.log("The script is running!");

// function addPinkBorder(event) {
//   console.log("click happened! here's the click event:");
//   console.log(event);
//   event.target.style.border = "2px solid pink";
// }

// var photo = document.getElementById("lizard-photo");
// photo.addEventListener("click", addPinkBorder);

function addBlackBorder(){
  var els= document.getElementsByTagName("em");
  var el = els[0];
  el.style.border = "2px solid pink";
}

addBlackBorder();