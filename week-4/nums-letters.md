#4.2 Numbers, Letters, and Variable Assignment

## Release 1: Summarize

### What does puts do?

`puts` adds a new line after the each argument.

### What is an integer? What is a float?

In Ruby, as in most of programming, whole numbers are referred to as `integers`, while fractions (or numbers with decimal points) are referred to as `floats`, or floating-point numbers. Integer numbers means that it is a whole number without fractional component.

### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

In ruby, `integers` are associated with classes just like any object. As an integer should be a whole, real number. For `floats`, or fractions (ineact numbers), we create floating point numbers, or float objets, instead.
To convert a floating, hexadecimal or binary number to a integer, you’d simply wrap the float in an integer, such as `integer(20.5) => 20`
To convert from Integer to float, it follows same method, just wrap integer in an float such as `float(20)=> 20.5`

## Release 2: Try It!

- Hours in a year: 1 year has 365 days, 1 day has 24 hours.
So, 1 yr 365 days   x
          1 day   24hrs
    `puts 365 * 24`
    `8760 hours in a year (except leap day)`

- Minutes in a decade (a decade= 10 years)
  1 year 365 days, 8,760 hours
  1 hour 60 mins,
  `puts 8,760 * 60 * 10`
   `5,256,000 mins in a decade`

## Release 5: Exercises

[4.2.1. Defining Variables](https://github.com/f-ocal/phase-0/blob/master/week-4/defining-variables.rb)

[4.2.2. Simple String Methods!](https://github.com/f-ocal/phase-0/blob/master/week-4/simple-string.rb)

[4.2.3. Local Variables and Basic Arithmetical Operations!](https://github.com/f-ocal/phase-0/blob/master/week-4/basic-math.rb)

## Release 7: Reflect

### How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Calculators use floats while making any arithmetical operations.
Addition +
Substraction -
Multiplication *
Division /

### What is the difference between integers and floats?

  Please see above.

### What is the difference between integer and float division?

  Please see above.
### What are strings? Why and when would you use them?

  String is an object that holds the bytes, typically representing characters. The string are enclosed in single quotes. Strings can have punctuation, digits, symbols, and spaces.

### What are local variables? Why and when would you use them?

To store any data or string in computer's memory for use later, you need to give the string a name, programmers call this name `variable`.
Local variables begin with a lowercase letter or `_` . Local variable declared within subroutines or programming blocks. Their local scope means they can only be used within the subroutine or program block they are declared in. Local variables have limited scope, which means they are declared when a function or subroutine is called, and once the function ends, the memory take up by the variable is released. (this is not the case for global variables)

### How was this challenge? Did you get a good review of some of the basics?
  It was okay, just rspec was challenging at beginning. I read an article about testing which helped me understand more the benefits of it, and how it is so beneficial for software engineers.
