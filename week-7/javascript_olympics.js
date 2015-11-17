// JavaScript Olympics

// I paired with Tal on this challenge.

// This challenge took us 1 hour.

// Release 1: Bulk Up

var athletes = [
{name: "Sarah Hughes", event: "Ladies Singles"},
{name:"Bob Hughes", event: "Mens Singles"}
]

function eventWon(athletes_array) {
  //for (var i in athletes_array) {} Another way of writing.
  for (var i=0; i < athletes_array.length; i++) {
    athletes_array[i].win = athletes_array[i].name + " won the event " + athletes_array[i].event;
    console.log(athletes[i].win);
  }
}
eventWon(athletes)

//Another Solution

// var athlete1 = {name: "Sarah Hughes", event: "Ladies Singles"}
// var athlete2 = {name: "Bob Hughes", event: "Mens Singles"}
// var athletes = [athlete1, athlete2]
//
// function eventWon(athletes) {
//  for (var i=0; i < athletes.length; i++) {
//    athletes[i].win = athletes[i].name + " won the event " + athletes[i].event;
//    console.log(athletes[i].win);
//  }
// }
// eventWon(athletes)


// Release 2: Jumble your words

var string = "StringToReverse"
function reverseString(string){
 console.log(string.split("").reverse().join(""));
}
reverseString(string)


// Release 3: 2, 4, 6 ,8! Who do we appreciate?

var evenArray =[]

function evenNumbers(array){
  for (var i=0; i < array.length; i++){
    if(array[i] % 2 == 0){
      evenArray.push(array[i])
    }
  }
 console.log(evenArray)
}
evenNumbers([1,2,3,4,5,6])


// Release 4: "We Built this City": Build a constructor function

function Athlete(name, age, sport, quote){
 this.name = name;
 this.age = age;
 this.sport = sport;
 this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
  I have learned about the index references for the each elements of an array, how we can use these indexes to retrieve element information. I solidified iterating through array with for loop, taking out even numbers into another array.

What are constructor functions?
  There are two ways to create object in JavaScript: they are 'Constructor functions' and 'Literal notation'. Constructor function syntax is as following

function myObject(){
  this.name = 'Fatma'; // .name is the property of myObject
  this.print = function(){  //.print is the method of the myObject. Here a method is calling a function () to execute the code.
      alert('I am ' + this.name);
  };
};

How are constructors different from Ruby classes (in your research)?
  Ruby classes have different methods that you can call each of them and pass argument of input. JavaScript, we initialize a property and method to an object and then we call the property and function.
*/
