// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
    var modulo = 13 % 2;
    console.log(modulo + 5);  // This produces → 6

    var fruitBasket = "apple";
    var whiteFruit = " banana";
    two = "2";
    console.log(fruitBasket + whiteFruit); //-> This produces apple banana
    console.log(two); //-> This produces 2

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
/*  Pseudocode for FizzBuzz problem.
    The range is from 1 to 100.
    Increment the number with 1 to check all the numbers.
    for numbers divisible by 3, print "Fizz" instead of that number.
    for number divisible by 5, print "Buzz"
    for numbers that are divisible both 3 and 5, then print "FizzBuzz" */

    for (var number = 1; number <= 100; number += 1) {
      if ((number % 3 == 0) && (number % 5 == 0))
      console.log("FizzBuzz")
      else if (number % 3 == 0)
      console.log("Fizz");
      else if (number % 5 ==0)
      console.log("Buzz");
      else
      console.log(number);
    }

// Functions

// Complete the `minimum` exercise.



// Data Structures: Objects and Arrays


// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.



// REFLECTIONS:

// Release 1:

// Introduction
// Did you learn anything new about JavaScript or programming in general?
  //  Programming or Javascript requires less code to do the same operation comparing to the old days coding when there was no programming languages. The current programming logic is less complex and more friendly to programmers. With help of blocks constructed in while, for or if statements, there is no need to jump back or forth within the code, while makes it easier to loop for the block. Web browsers are not the only platforms on which Javascript us used. Some databases, such as MongoDB and CouchDB, use Javascript as their scripting and query language. While I was reading throgh Eloquent Javascript book, I found out that the website enables you to edit and run the code, which was great to see different outputs for different input right away.

// Are there any concepts you feel uncomfortable with?
// Nope.

//Ch.1 Values, Types and Operators
//Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
  // Values in Javascript is the chunk of the bits that were separated and each represent pieces of information. There are six basic types of values in JavaScript: numbers, strings, Booleans, objects, functions, and undefined values.
  //Let's look at each values in both Javascript and Ruby.
    // 1. Numbers are the numerical values, writen as 10. Numbers vary from whole number, integer or frctional numbers, float. There are 3 special numbers in Javascript which are Infinity, -Infinity, and Infinity-1. In Ruby, I have seen only Infinity which results when you divide any number with `0`.
    //2. Strings are the basic data types that reqpresent the text. They are written in both Ruby and Javascript between quotes. When you want to find out what kind of class type is the string, we find out by "String".class = > string in Ruby; however in Javascript we use `typeof` console.log(typeof "x") → string
    //While we are writing strings, whenever a backslash(\) is found inside quoted text, it indicates that the character after ita has a special meaning, which is called escaping the character. When 'n' character comes after backslash, it interpretes as new line (\n) which is also the same in Ruby. Besides `\n`, Javascript has the same `+` operator that concatenates two strings.
    //3. Booleans are the true and false values which distinguishes two possibilities like `on` or `off`. Boolean values are the same for both in Ruby and Javascript.
    //4. Objects and their associated methods are both included in both Ruby and Javascript, which leads that both are object oriented. A prototype in Javascript is much like a Class in Ruby such as:
          // function Cat(name, age) {
          // this.name = name;
          // this.meow = function() {
          // console.log("My name is" +this.name+!) };
          // };
          // var cuteCat = new Cat("Sandy", "5");
    //The cuteCat object is considered a new instance of the Cat prototype. Prototype is essentially the same as Class in Ruby. Note that this in JavaScript is the same concept as self in Ruby.
    //5. Functions . each method is commonly used in Ruby to iterate through an array. Javascript has each function does the same thing but the syntax is different. array.each {|element| block } versus array.forEach(function(n)) { console.log(n); }.
    //Ruby Methods
          // def plus_5(num = 0)
          // num + 5
          // end
          // plus_5(10) # This returns to 15
          // using map method:
          // [5, 10, 15].map { |k| plus_5(k) }  // This returns to [10, 15, 20]
    // Javascript Functions
          // function plus_5(num) { return (num || 0) + 5; }
          // plus_5();   //This returns to 5
          // plus_5(10); //This returns to 15
          // [5, 10, 15].map(plus_5); // This returns to [10, 15, 20]
    //6. Undefined values are different. null(nil in Ruby) and false will return false. However, some values in Ruby will return false in JavaScript, like 0, empty strings (""), and undefined.

//Ch.2 Program Structure
//What is an expression?
  //A fragment of a code that produces a value is called expression. Every value that is written literally is an expression. The simpliest kind of statement is an expression with a semicolon after it.

//What is the purpose of semicolons in JavaScript? Are they always required?
  //If there is no semicolons in Javascript, the next line will be treated as part of the same statement. Most of the time you need to end the code with semicolons. In some cases, JS allows you to omit the semicolons.

// What causes a variable to return undefined?
  // When the variable equals to false, null, `0` or empty string (""), or variable doesn't have any initial value then a variable returns to undefined.

//Write your own variable and do something to it in the eloquent.js file.
  // Please see top of this page.

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
  // We will use console.log to indicate what we want to see the result of evaluating some code, the value produced should be shown on the screen, although how it apprears will depend on the Javascript environment you use to run it. The methods that we have in Ruby are puts, and p that those could be written in front of method calling which would executes the methods.
//
// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
      // The solution is:
      //     prompt("What is your favorite food?"," ");
      //     alert("Hey! That's my favorite too!");


// Describe while and for loop
  // While creates a loop. The loop executes that statement as long as the expression produces a value that is true in Boolean. Looping control flow allows us to go back to some point in the program where we were before and repeat it with current program state.
  // for loops is similar to the while loops. The only change is that all the statements that are related to the “state” of the loop are now grouped together. I mean that the parentheses after a for keyword must contain two semicolons like for (var = 1; counter < 5 ; counter ++). The first part defines the variable, the second part checks if it should continue to loop and the last part updates the state of the loop after every iteration.

//What other similarities or differences between Ruby and JavaScript did you notice in this section?
//Binary operators (+, -, *, /, %) and comparison (==, !=, ===, !==, <, >, <=, >=) are the same in both Ruby and Javascript. Just as a note: upper case letters are always "less" than lowercase ones, so "Z"<"a" is true. There is only one value in JavaScript that is not equal to itself, and that is NaN, which stands for “not a number”.
    //console.log(NaN == NaN)
    // → false
// NaN is supposed to show the result of a nonsensical computation, and as such, it isn’t equal to the result of any other nonsensical computations.
// The other difference is that to increment or decrement by 1 in Javascript, you can write ++ or --, in Ruby that's += or -=.
//Logical(conditional) operator which is tenary, operating on three values. It is written with a question mark and colon, like this:
    // console.log(true? 1 : 2) -> This results 1.
    // console.log(false? 1 : 2) -> This results 2.
//The value on the left of the question mark "picks" which of the other two values will come out. When it is true, the middle value is chosen, when it is false, the value on the right is chosen for output result.

// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
// please see top of the page for the answer of FizzBuzz.

// Ch3. Functions

// What are the differences between local and global variables in JavaScript?
  // When a variable is created inside a function then it is local variable as only the locally running code can see it. A variable can be accessed by any part of the code is called global variable. If you create a variable in the global space (outside of a function scope) then it will be global. If this code is run inside a function then, this variable will be local.

    // To create a local variable is
    //      var variable;
    // To create a global variable is
    //      variable;
    // This variable will be always global, no matter where is created.

// When should you use functions?
// Function is a piece of program that wrapped in a value. Whenever we want to run wrapped program, we can apply functions to variables. You can call a function by putting parentheses after an expression which produces function value. You will directly use the name of the variable that holds the function. The values(these could be strings) between the parentheses are given to the program inside the function.

// What is a function declaration?
// When we are declaring a function, we should have () and {}. The block of code goes between the curly braces. A function declaration defines a named function variable witout requiring variable assignment. The declaration occur as standalone constructs and cannot be nested within non-function blocks. We can think them like siblings of Variable declaration, just as variable declarations must start with "var", function declarations must begin with "function".
      // The synax is : function Identifier ( FormalParameterListopt ) { FunctionBody }
      // function bar() {
      //    return 3;
      // }
      // bar();   // the output is 3
      // bar      //function

Complete the minimum exercise in the eloquent.js file.


Ch.4

Skip the sections on the Lycanthropes log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.

What is the difference between using a dot and a bracket to look up a property? Ex.

// Release 2:
/*
What are the biggest similarities and differences between JavaScript and Ruby?
I guess syntax, and readability. I think Ruby is more friendly with sytanx since it is very similar as if you are speaking English.
Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
  Yes, indeed. I think comparison of Javascript and Ruby helped me to solidify few concepts like case condition and for loops.

How do you feel about diving into JavaScript after reading these chapters?
Well, I feel alright.
*/
