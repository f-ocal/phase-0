/*
Gradebook from Names and Scores

Fatma Ocal and Nil Thacker worked on this challenge.
This challenge took me 1.5 hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

var gradebook = {}; //Creating a variable that equals to the empty object.

gradebook = {
              "Joseph": {testScores: scores[0] },
              "Susan": {testScores: scores[1] },
              "William": {testScores: scores[2] },
              "Elizabeth": {testScores: scores[3] }
            };

gradebook.addScore = function(name, scores){
  gradebook[name].testScores.push(scores);
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
}

function average(numbers){
  var sum = 0;
  for (var i in numbers) {
    sum += numbers[i];
  }
  return (sum/(numbers.length));
}

// __________________________________________
// Refactored Solution
//I think our code looks good, we didnt have any refactoring.


// __________________________________________
/* Reflect

What did you learn about adding functions to objects?
  We can add additional functions to the objects, like hash including keys
  and values. We can even call add further functions (such as addScore, getAverage)
  to operate some code in the body.

How did you iterate over nested arrays in JavaScript?
  We treated just like hash, asking for the values of the keys so in this case
  it was grades for each students.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  Not really, we just forgat to include return on line 37 while calling average
  functions. It was interesting we didn't notice that was the problem so we double
  checked every functions, then finally we found the problem.

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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)