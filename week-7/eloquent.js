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
  //A fragment of a code that produces a value is called expression.

//What is the purpose of semicolons in JavaScript? Are they always required?
  //If there is no semicolons in Javascript, the next line will be treated as part of the same statement. In some cases, JS allows you to omit the semicolons.

// What causes a variable to return undefined?
  // When the variable equals to false, null, `0` or empty string (""), a variable returns to undefined.

//Write your own variable and do something to it in the eloquent.js file.
  // Please top of this page.

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
  // We will use console.log to indicate what we want to see the result of evaluating some code, the value produced should be shown on the screen, although how it apprears will depend on the Javascript environment you use to run it. The methods that we have in Ruby are puts, and p that those could be written in front of method calling which would executes the methods.

// *****************
// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

// Describe while and for loops


//What other similarities or differences between Ruby and JavaScript did you notice in this section?
//Binary operators (+, -, *, /, %) and comparison (==, !=, ===, !==, <, >, <=, >=) are the same in both Ruby and Javascript. There is only one value in JavaScript that is not equal to itself, and that is NaN, which stands for “not a number”.
    //console.log(NaN == NaN)
    // → false
// NaN is supposed to show the result of a nonsensical computation, and as such, it isn’t equal to the result of any other nonsensical computations.
// The other difference is that to increment or decrement by 1 in Javascript, you can write ++ or --, in Ruby that's += or -=.

//*****************************
// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.



//Ch3. Functions
// What are the differences between local and global variables in JavaScript?

// When should you use functions?

// What is a function declaration?

// Complete the minimum exercise in the eloquent.js file.


// Ch.4
// Skip the sections on the Lycanthropes log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.

// What is the difference between using a dot and a bracket to look up a property? Ex.
