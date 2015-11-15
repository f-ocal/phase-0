// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Collect the gems and move to the next level
// Goals: Collect the treasure and attack Canavar when necessary
// Characters: Savasci and Canavar
// Objects: Savasci(position, Amount of Gold, and health), Dwarf
// Functions: moveRight, moveLeft, moveUp, moveDown, pickUp and attack("Enemy Name")

// Pseudocode
// Declare a 'Savasci' object that will have properties of position, amount of gold and health
// Add different methods to 'Warrior' to make it move up, down or right (forward)
// Declara a 'Canavar' object and give it a random position.
// Move the player, also assign another random Position to Canavar.
// Check where Savasci is with respect to the dragon and gem
// If its the same position as gem, pick up the gem!
// If the Savasci position is same as Canavar, attack the Canavar.
// If Canavar gets 3 times attacks, Canavar is dead and you won the game. Display "You Won!" and display theasure amount. 
// If Savasci gets 3 times attacks, Savasci is dead and you lost the game.

// Initial Code

// Create at least 2 objects with properties
// Create at least 2 functions that interact with those objects by adding or modifying the objects properties
// Call each function (invoke the function) Make sure the output is actually what you expect

var personFirst = {
  name: "Tom",
  age: 20
};

function displayFirstPerson(person) {
  personFirst.school = "California High School"
  console.log(personFirst.name);
  console.log(personFirst.age);
  console.log(personFirst.school);
}
displayFirstPerson(personFirst);


var personSecond = {
  name: "Jerry",
  age : 35
};

function displaySecondPerson(personSecond){
  personSecond.siblings = 2
  console.log(personSecond.name);
  console.log(personSecond.age);
  console.log(personSecond.siblings);
}
displaySecondPerson(personSecond)

// Refactored Code




// Reflection
/*
What was the most difficult part of this challenge?
What did you learn about creating objects and functions that interact with one another?
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
How can you access and manipulate properties of objects?
*/
