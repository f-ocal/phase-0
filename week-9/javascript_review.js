// Reflection
/*

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
I have solidified calling object, adding/updating or removing object properties.

What was the most difficult part of this challenge?
It wasn't so difficult.

Did an array or object make more sense to use and why?
I made an Javascript json object, which take an item with quantities.

*/

// Adding item from the list.

function addItem(item, quantity, list) {
  list[item] = quantity;
  return list;
}

var list = {};

console.log(addItem("tomatoes", 3, list));
console.log(addItem("onions", 1, list));
console.log(addItem("ice cream", 4, list));


// Removing the item from the list.
function removeItem(item,list) {
  delete list[item];
  return list;
}
console.log(removeItem("tomatoes", list));


// Updating item's quantities from the list
function updateItem(item, quantity, list) {
  list[item]= quantity;
  return list;
}
console.log(updateItem("ice cream", 3, list));


//Show the list

function show(list) {
  for (var i in list) {
     console.log(i + ":" + list[i]);
  }
}

show(list);
