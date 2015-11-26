var grocery_list = [
  {
    item_name: item_quantity
  }
];


console.log(grocery_list);

// var keys= Object.keys(grocery_list);
// console.log('\n' + 'The keys of the grocery lists are ' + keys + '\n' );  //=> Output is ['lemonade', 'fruit', 'veggie']
// console.log(keys.length);  //=> Output is 3

Object.size = function(grocery_list) {
    var size = 0, key;
    for (key in grocery_list) {
        if (grocery_list.hasOwnProperty(key)) size++;
    }
    var keys= Object.keys(grocery_list);
    console.log('\n' + 'The grocery list has ' + size + ' types of food : ' + keys + '.\n');  //=> Output is ['lemonade', 'fruit', 'veggie']
};
var size = Object.size(grocery_list);

// var veggiee = Object.getOwnPropertyNames(grocery_list["veggie"];

function delete_food(food_name){
  delete grocery_list[food_name];
  console.log('After removing '+ food_name + ' the grocery list has now: ');
  console.log(grocery_list);
  console.log('\n');
}
delete_food("veggie");

console.log('The fruits are:');
for (var key in grocery_list) {
  var max = 0;
  for (var value in grocery_list[key]){
    if (grocery_list[key][value] > max)
   {
      console.log(value + ': ' + grocery_list[key][value]);
      // console.log(grocery_list[key][value]); // This prints out 3 and 2 which are the value of fruits.
    }
  }
  // console.log(key + ': ' + grocery_list[key]);
}

delete_food("apple");

// Object.getOwnPropertyNames(grocery_list)

// console.log();
