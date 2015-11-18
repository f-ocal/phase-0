// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with Karla.

// Pseudocode
// Create a function named separateComma
// Convert the integer to a string
// Reverse the string
// Create an empty array for spliting the characters into string of three
// Use for loop to run the code continuously.
// Define the for loop argument to define a counter with 0 value, define a variable characters length that represents the length of the reversed integer. Increase the counter by 3. The for loop should continue as long as the counter is less than the length of the characters. Capture the three characters of the string and add them to the array. Join the stings in the array into a string  separated by commas. Once the counter is equal to or larger than the character length, the for loop stops.
// Create another variable for the output
// Reverse the output
// Print the new string

// Input: integer is the only argument
// Output: comma separated string

// Initial Solution

function separateComma(integer) {
  var string = integer.toString() //   "1569743"
  var reverse = string.split("").reverse().join(""); // Array [ '1', '5', '6', '9', '7', '4', '3' ] -> Array [ '3', '4', '7', '9', '6', '5', '1' ] -> 3479651
  var chunks = [];
  for (var i = 0, charsLength = reverse.length; i < charsLength; i += 3)
  {
    chunks.push(reverse.substring(i, i + 3)); // ['347','965','1']
    var commas = chunks.join(',');  // 347,965,1
  }

  var out = commas.split('').reverse().join('');
  console.log(out);

}
separateComma(1569743)

// Refactored Solution

function separateComma(integer) {
  var string = integer.toString() //   "1569743"
  var reverse = string.split("").reverse().join(""); // Array [ '1', '5', '6', '9', '7', '4', '3' ] -> Array [ '3', '4', '7', '9', '6', '5', '1' ] -> 3479651
  var chunks = [];
  for (var i = 0, charsLength = reverse.length; i < charsLength; i += 3)
  {
    chunks.push(reverse.substring(i, i + 3)); // ['347','965','1']
    var commas = chunks.join(',');  // 347,965,1
  }
  console.log(commas.split('').reverse().join(''));

}
separateComma(1569743)

//Another Solution for refactored

var separateComma = function(int){
  var result = "";
  var newint = int.toString();
  var length = newint.length;
  var i = 0;
  while (length > 0) {
        result += newint.charAt(i); // This new charAt method returns the character at the specified index in a string. For example, Hello if you say charAt(0) -> the result is H.
        length -= 1
        if ((length % 3 == 0) && (length != 0)) {
          result += ',';
        };
    i += 1
  }
  console.log(result)
}
separateComma(1000000)
// Your Own Tests (OPTIONAL)



// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
We approached to the problem in a similar way as Ruby such as starting with Pseudocode first.

What did you learn about iterating over arrays in JavaScript?
We used for loop to run the code continuously until the condition doesn't meet anymore. We created an empty array to save captured 3 characters from the string.

What was different about solving this problem in JavaScript?
I noticed that we were thinking as if it was in Ruby, then checking the correct synax for Javascript. Defining variable is very important especially local Variables, Js had different way of approach to for methods.

What built-in methods did you find to incorporate in your refactored solution?
We found toString, reverse(), join(),substring(),split() methods at the initial solution. Unfortunately we couldn't refactored much except calling the output without any variable.
*/
