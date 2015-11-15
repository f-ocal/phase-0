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
// If Canavar gets attacks and if Canavar's health is zero then he is dead. Display "You Won!" and display theasure amount.

// Initial Code

function movePerson(person, direction) {
  if (/^e/.test(direction)) {
    person.posX += 1
  }
  else if (/^w/.test(direction)) {
    person.posX -= 1;
  }
  else if (/^n/.test(direction)) {
    person.posY += 1;
  }
  else if (/^s/.test(direction)) {
    person.posY -= 1;
  }
  else if (/diamond/.test(direction)) {
    printDiamondCount(person);
  }
  printAllLocations();
  //Check if Savasci has the same position as Canavar
  if (sameLocation(hero, enemy)) {
    var roundNumber = 1;
    while (hero.health > 0 && enemy.health > 0) {
      console.log('\nRound '+ roundNumber);
      attack(hero, enemy);
      attack(enemy, hero);
      roundNumber++;
    }
  }
  // Checking if Savasci is at the diamond, if so he should pick it up
  if (sameLocation(hero, diamond)) {
    if (diamond.diamond > 0) {
      console.log(diamond.interactionNote);
    }

    collectDiamonds(hero, diamond);
  }
}

function sameLocation(personA, personB) {
  return (personA.posX === personB.posX && personA.posY === personB.posY);
}
//Declaring Canavar
var enemy = {
  name: 'Canavar the Ugly Giant',
  weaponStrength: 20,
  dodgeChance: 0.05,
  posX: 1,
  posY: 5,
  diamond: 10,
  health: 100,
  deathNote: "Ahhh... I am dead... Tell my mom I love her... By the way, this is Canavar who's talking..."
  };

//Declaring diamond
var diamond = {
  name: 'a huge diamond safe',
  diamond: 20,
  posX : Math.floor((Math.random()*5) + 1),
  posY:  Math.floor((Math.random()*5) + 1),
  interactionNote: "You're now at a large diamond safe. You remember your lockpicking lessons from your childhood and successfully open it."
};
var hero = {
  name: 'Savasci the Wise',
  weaponStrength: 15,
  dodgeChance: 0.3,
  posX: 0,
  posY: 0,
  diamond: 0,
  health: 100,
  deathNote: "Oh, I think I died?"
};

function printLocation(character) {
  console.log(character.name + ' is at ' + character.posX + ',' + character.posY);
}

function printDiamondCount(character) {
  console.log(character.name +': Haha!!!..I have '+character.diamond+ ' diamonds in my pocket.')
}
//Display where Canavar is
function printAllLocations() {
  printLocation(hero);
  printLocation(enemy);
  printLocation(diamond);
  console.log('\n--------------------\n')
}

function attack(attacker, target) {
  if (attacker.health > 0) {
    var damage = (Math.floor(Math.random() * attacker.weaponStrength));
    if (Math.random() > target.dodgeChance) {
      console.log(attacker.name + ' attacks ' + target.name + ' for '+ damage + ' damage!');
      target.health -= damage;
    }
    else {
      console.log('Ohhhhh man, ' + target.name + ' just dodged ' + attacker.name + "'s attack!'");
    }

    if (target.health <= 0) {
      console.log(target.name + ': ' + target.deathNote);
      collectDiamonds(attacker, target);
      printDiamondCount(attacker);
    }
    return damage;
  }
}

function collectDiamonds(receivingPerson, target) {
  if (target.diamond > 0) {
    receivingPerson.diamond += target.diamond;
    target.name += ' (opened)';
    target.diamond = 0;
  }
}
printAllLocations();

process.stdin.resume();
process.stdin.setEncoding('utf8');
var util = require('util');

process.stdin.on('data', function (text) {
  movePerson(hero, text);
  if (hero.health <= 0) {
    console.log('You are a loser.');
  }
  else if (enemy.health <= 0) {
    console.log('I am a winner! ' + 'I have ' + hero.health + ' health remaining.')
  }
  if (text === 'quit\n') {
    done();
  }
});

function done() {
  console.log('Now that process.stdin is paused, there is nothing more to do.');
  process.exit();
}

// Refactored Code




// Reflection
/*
What was the most difficult part of this challenge?
What did you learn about creating objects and functions that interact with one another?
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
How can you access and manipulate properties of objects?
*/
