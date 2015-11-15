// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Collect the diamonds and move to the next level
// Goals: Collect the treasure and attack Canavar when necessary
// Characters: Savasci and Canavar
// Objects: Savasci(position, Amount of Gold, and health), Dwarf
// Functions: moveRight, moveLeft, moveUp, moveDown, pickUp and attack("Enemy Name")

// Pseudocode
// Declare a 'Savasci' object that will have properties of position, amount of gold and health
// Add different methods to 'Warrior' to make it move up, down or right (forward)
// Declara a 'Canavar' object and give it a random position.
// Move the player, also assign another random Position to Canavar.
// Check where Savasci is with respect to the dragon and diamond
// If its the same position as diamond, pick up the diamond!
// If the Savasci position is same as Canavar, attack the Canavar.
// If Canavar gets 3 times attacks, Canavar is dead and you won the game. Display "You Won!" and display theasure amount.
// If Savasci gets 3 times attacks, Savasci is dead and you lost the game.

// Initial Code

var Savasci = {
  posX: 0,
  posY: 0,
  diamond : 0,
  success : false,

  move: function(direction) {
    if(direction === 'forward'){
      this.posX +=10;
    }
    else if (direction === 'back'){
      Savasci.posX -=10;
    }
    else if (direction === 'up'){
      Savasci.posY +=10;
    }
    else if (direction === 'down'){
      Savasci.posY -=10;
    }
    //When Savasci is moving, Canavar is moving too.
    Canavar.posX = Math.floor((Math.random()*100) + 1);
    Canavar.posY = Math.floor((Math.random()*100) + 1);
    console.log("Canavar is " + Canavar.posX + "," + Canavar.posY);

    //Display where Savasci is
    console.log("Savasci is " + Savasci.posX + "," + Savasci.posY);

    // Checking if Savasci is near diamond, if so he should pick it up.
    if (Savasci.posX === diamond.posX && Savasci.posY === diamond.posY) {
      this.pickUp(Savasci, diamond);
      this.diamond += 20; //Giving 20 diamonds whenever his position and diamond positions is the same.
    }
    else if (Savasci.posX === Canavar.posX && Savasci.posY === Canavar.posY) {
      for (var i= 0; i < Canavar.health; i++){ // continue until i equals to Canavar.health
        this.attack("Canavar"); // As rule, you are hitting two time to be more effective.
        this.attack("Canavar");
        Canavar.health -= 1; // Canavar is killed when its health is zero. Starting health of Canavar is 10.
      }
    }
    else if (Canavar.health === 0)
    Savasci.success = true;
    console.log("You Win!. You have won " + Savasci.diamond + " diamonds. Congrats!" + '\n')
  }
};

//Declaring diamond
var diamond ={
  posX: Math.floor((Math.random()*100) + 1),
  posY: Math.floor((Math.random()*100) + 1)
}
//Declaring Canavar
var Canavar = {
  posX: 0 ,
  posY : 0,
  success : false,
  health : 10
};

Savasci.move('up');
Savasci.move('right');


// Refactored Code




// Reflection
/*
What was the most difficult part of this challenge?
What did you learn about creating objects and functions that interact with one another?
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
How can you access and manipulate properties of objects?
*/
