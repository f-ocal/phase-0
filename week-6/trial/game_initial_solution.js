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

//Declaring Canavar
var Canavar = {
  posX: 10 ,
  posY : 0,
  success : false,
  health : 10,
  };

//Declaring diamond
var diamond ={
  // posX: Math.floor((Math.random()*100) + 1),
  // posY: Math.floor((Math.random()*100) + 1)
posX: 10,
posY: 0,
};

var Savasci = {
  posX: 0,
  posY: 0,
  diamond : 0,
  success : false,

 move: function(direction) {
    if (direction === 'forward') {
      Savasci.posX += 10.0;
    }
    else if (direction === 'back'){
      Savasci.posX -= 10;
    }
    else if (direction === 'up'){
      Savasci.posY += 10;
    }
    else if (direction === 'down'){
      Savasci.posY -= 10;
    }

   //When Savasci is moving, Canavar is moving too.
    // Canavar.posX = Math.floor((Math.random()*10) + 1);
    // Canavar.posY = Math.floor((Math.random()*10) + 1);

   //Display where Canavar is
    console.log('\n' + "Canavar is at " + Canavar.posX + "," + Canavar.posY);
    //Display where Savasci is
    console.log("Savasci is at " + Savasci.posX + "," + Savasci.posY);

    console.log("Diamond is at " + diamond.posX + "," + diamond.posY);

    //Check if Savasci has the same position as Canavar
    if (Savasci.posX === Canavar.posX && Savasci.posY === Canavar.posY) {
      for (var i= 1 ; Canavar.health > 0; i++) {
        attack(Canavar);
        attack(Canavar);
      }
      Savasci.success = true;
      console.log("The health of Canavar is " + Canavar.health + " . Congrats!, You Win....");
    }
   // Checking if Savasci is near diamond, if so he should pick it up.

    if (Savasci.posX === diamond.posX && Savasci.posY === diamond.posY) {
      pickUp(diamond);
      pickUp(diamond);
      console.log("You have " + Savasci.diamond + " diamonds in your pockets!");
    }
//    if (Canavar.health === 0) {
//      console.log("Congrats!, You Win...." + '\n');
//    }

  }

};

function attack(enemyName) {
  // console.log(enemyName.health);
  enemyName.health -= 1 ;
}

function pickUp(what) {
  // console.log(Savasci.diamond);
  Savasci.diamond += 20; //Giving 20 diamonds whenever his position and diamond positions is the same.
}

Savasci.move('forward');
Savasci.move('up');
Savasci.move('down');
Savasci.move('back');
