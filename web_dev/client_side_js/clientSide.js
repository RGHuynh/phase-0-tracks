
document.getElementById("click").onclick = function(){
    var list_ray = document.getElementById("list"),
        item = document.createElement('li');
        inputBox_ray = document.getElementsByClassName("containment"),
        inputBox = inputBox_ray[0];
        checkbox = document.createElement("input")
    if(inputBox.value !== ''){ 
  
      checkbox.setAttribute("type","checkbox");
      item.appendChild(checkbox);
      item.appendChild(document.createTextNode(inputBox.value));
      list_ray.appendChild(item);
    }
    return false;
  }
  
  
  
  
  
  
      