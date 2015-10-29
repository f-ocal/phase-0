Release 2: Try It Out

puts 'What is your first name:'
first_name=gets.chomp
puts 'What is your middle name:'
middle_name=gets.chomp
puts 'What is your last name:'
last_name= gets.chomp

puts('Welcome to my program, '+ first_name +' '+ middle_name +' ' + last_name +' ')

puts 'What is your favourite number:'
fav_num=gets.chomp
add_num= fav_num.to_i + 1
puts  "Your favourite number should be #{add_num.to_s}."
#
Release 2: Creating Methods

Defining Methods : https://github.com/f-ocal/phase-0/blob/master/week-4/define-method/my_solution.rb

Release 4 : More Small Exercises!

4.3.1 Return A Formatted : https://github.com/f-ocal/phase-0/blob/master/week-4/address/my_solution.rb
4.3.2 Defining Math Method : https://github.com/f-ocal/phase-0/blob/master/week-4/math/my_solution.rb
#
# Release 6: Reflect
# How do you define a local variable?
# => To store any data or string in computer's memory for use later, you need to give the string a name, programmers call this name variable. Local variables are defined with either lowercase letter or _..
# Local variable declared within subroutines or programming blocks. Their local scope means they can only be used within the subroutine or program block they are declared in.
# Local variables have limited scope, which means they are declared when a function or subroutine is called, and once the function ends, the memory take up by the variable is released. (this is not the case for global variables).
# We can define the variable in four ways, which are global, local, class and instance variables.
# We initiate the value of the return to a variable such as $first_name,_first_name, @@first_name and @first_name.
#
# How do you define a method?
# => Method is used to bundle one or repeatable statements into a single unit. We sometimes may need to execute the same code again and again, instead of writing that piece of code over and over, we can extract the common code to one place by use of method.Methods are declared with keyword `def` followed by method_name, it's enclosed with `end` such as
#  def method_name(parameter1, ...)
#  end
#
# What is the difference between a local variable and a method?
# => Local variable is only defined in a method, so they are not available outside of the method.
# => The method is a set of equations returns the last statement executed.
#
# How do you run a ruby program from the command line?
# => you need to type `irb` within the command line, than type
# => `ruby file_name.rb`
#
# How do you run an RSpec file from the command line?
# => you need to type `rspec file_name.rb` from the terminal.
# 
# What was confusing about this material? What made sense?
# => Rspec files were confusing, I had to research through internet what rspec files do. I actually found out that being able to read and write tests in software industry is very important. The process is also called test-driven development. You run the test, and based on test results you can work on the solution.
