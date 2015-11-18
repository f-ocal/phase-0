//8.3 Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.

var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
};

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
};


var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
};

// Pseudocode
// Input: votes objects
// Output: Officers objects who are the winners.
// Define method (maybe tally votes) nested for loop that if key already exists, count the tally.
// If it doesn't exist, create the key with value of 1.
//  key = voter
//  prop = office
//  votes[key][prop] = vote
// console.log(votes);
//  console.log(voteCount);

//________________________________
// Initial Solution

// for (var key in votes){
//
//   for (var prop in votes[key]) {
//
//     if (prop == "president"){
//
//       if (voteCount['president'].hasOwnProperty(votes[key][prop])){
//         voteCount['president'][votes[key][prop]] += 1;
//       }
//       else {
//         voteCount['president'][votes[key][prop]] = 1;
//       }
//     }
//
//     if (prop == "vicePresident"){
//
//       if (voteCount['vicePresident'].hasOwnProperty(votes[key][prop])){
//         voteCount['vicePresident'][votes[key][prop]] += 1;
//       }
//       else {
//         voteCount['vicePresident'][votes[key][prop]] = 1;
//       }
//     }
//
//     if (prop == "secretary"){
//       if (voteCount['secretary'].hasOwnProperty(votes[key][prop])){
//         voteCount['secretary'][votes[key][prop]] += 1;
//       }
//       else {
//         voteCount['secretary'][votes[key][prop]] = 1;
//       }
//     }
//
//     if (prop == "treasurer") {
//       if (voteCount['treasurer'].hasOwnProperty(votes[key][prop])){
//         voteCount['treasurer'][votes[key][prop]] += 1;
//       }
//       else {
//         voteCount['treasurer'][votes[key][prop]] = 1;
//       }
//     }
//   }
// }
//
// for (var k in voteCount){
//   var max = 0;
//   for (var p in voteCount[k]){
//     if (voteCount[k][p] > max ) {
//       max = voteCount[k][p];
//       officers[k] = p;
//     }
//   }
// }
//
// console.log(officers);  // This prints out the final elected positions and who won.


// __________________________________________
// Refactored Solution

//  key = voter
//  prop = office
//  votes[key][prop] = vote

for (var key in votes){

 for (var prop in votes[key]) {

   if (voteCount[prop].hasOwnProperty(votes[key][prop])){
     voteCount[prop][votes[key][prop]] += 1;
   }
   else {
     voteCount[prop][votes[key][prop]] = 1;
   }
 }
}

for (var k in voteCount){
  var max = 0;
  for (var p in voteCount[k]){
    if (voteCount[k][p] > max ) {
      max = voteCount[k][p];
      officers[k] = p;
    }
  }
}
console.log(officers);         // This prints out the final elected positions and who won.

// __________________________________________

/* Reflection

What did you learn about iterating over nested objects in JavaScript?
  This challenge has nested hashes, we iterate through each key/value pair with for loop and check
  the condition. It is similar to nested hashes and arrays in Ruby; we did if ..else statement by
  checking each condition if votes are equals to the positions, capturing value once the key matches
  with one of the positions. We found better way to refactor all of these if else.. statements by
  ony checking if the position has the value that matches with the position of the vote keys. It
  worked great, the code is more concise and iterate through hash.

Were you able to find useful methods to help you with this?
  Yeah, we found .hasOwnProperty method which is similar to include method in Ruby.

What concepts were solidified in the process of working through this challenge?
  I am very solidified with iterating through hashes, nested hashes in JavaScript.

*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
