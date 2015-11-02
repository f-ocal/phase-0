# 4.7 More Methods

## Release 1: Arrays Challenges

* [Factorial](https://github.com/f-ocal/phase-0/blob/master/week-4/factorial/my_solution.rb)
* [Add It Up](https://github.com/f-ocal/phase-0/blob/master/week-4/add-it-up/my_solution.rb)

## Release 3: Reflect

### What are methods? Why are they useful?
Method is used to bundle one or repeatable statements into a single unit. We sometimes may need to execute the same code again and again, instead of writing that piece of code over and over, we can extract the common code to one place by use of method.

### What are local variables? Where are they able to be accessed (HINT: try accessing a local variable outside of a method to see).

To store any data or string in computer's memory for use later, you need to give the string a name, programmers call this name variable. Local variables begin with a lowercase letter or _ Local variable declared within subroutines or programming blocks. Their local scope means they can only be used within the subroutine or program block they are declared in. Local variables have limited scope, which means they are declared when a function or subroutine is called, and once the function ends, the memory take up by the variable is released. (this is not the case for global variables).

### What is a method's argument? How would you use that?
There is a wide misunderstanding between argument and statement in methods. I'd like to include `statement` here and discuss the difference to give better explanations on each.

A parameter is the variable which is part of the method’s signature (method declaration). An argument is an expression, input that used when calling the method. With below code:

    def method_name(int, float)
    <!-- method body
    puts 'The integer is #{int}'
    puts 'The float is #{float}' -->
    end
    method_name(1, 0.3)

In this case, `int` and `float` are the parameters, and `1` and `0.3` are the arguments. An argument is the value/variable/reference being passed into the method and parameter is the receiving variable used within the block.

I like this quote from MSDN which is that `the procedure defines a parameter, and the calling code passes an argument to that parameter. You can think of the parameter as a parking space and the argument as an automobile.`

### How does Ruby know what to return in a method?
A method has parameters and takes arguments. When you call the method with arguments, arguments will be passed into method body and execute the code according to the function which was defined before with parameters. As per above example, arguments `1` and `0.3` will be passed into method body and execute the code. The method returns the results based on the function/code within the method body.

### What does it mean to iterate (or loop) over arrays or hashes?
Iterating over an array means that the pointer is going over each element of the array and executing the program on each of them. The program could be making simple math operation or printing out the value of the element. To explain it further, iterating through could be done some methods such as e.g. .each, .select, .collect, and .map etc. These kind of methods perform the collection of data repeatedly by making use of a computational procedure as or applying/executing block of code each time to every elements of the collection. According to the computation of the code block, information is updated. Some methods could be destructive to replace the original data in the collection, or some could produce the output within another new array.

### What new Ruby methods did you learn about in this challenge?
I learned about .each and .include? () methods. `Each` method is very important with respect to iterating the information over hashes or arrays, and executing the block of code for each element. `include?` is very useful especially introducing conditions within the challenge. For instance if the number is float (.include?(Float)) which returns boolean `true` and then you can introduce some kind of computation or code block to execute.

### What did you learn from your pair in this challenge?
I paired with Abe & Brian. It was great to pair with them. I learn some new methods (.include or .reduce) and some Ruby syntax from them.
