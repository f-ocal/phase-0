  # Analyze the Errors

  # I worked on this challenge myself.
  # I spent 2 -  hours on this challenge.

  # --- error -------------------------------------------------------

  # "Screw you guys " + "I'm going home." = cartmans_phrase

  # This error was analyzed in the README file.

  # --- error -------------------------------------------------------

  def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
  #
  # This is a tricky error. The line number may throw you off.

  # 1. What is the name of the file with the error?
  # => The name of the file is errors.rb
  # 2. What is the line number where the error occurs?
  # => line number is 16.
  # 3. What is the type of error message?
  # => Synax error message.
  # 4. What additional information does the interpreter provide about this type of error?
  # => The interpreter says unexpected "=" sign, rather expecting keyword_end
  # 5. Where is the error in the code?
  # => The interpreter couldn't find the end statement for closing the method definition.
  # 6. Why did the interpreter give you this error?
  # => There isn't an `end` statement for method (def cartman_hates()). Adding `end` would fix the problem.




  # --- error -------------------------------------------------------

  south_park

  # 1. What is the line number where the error occurs?
  # => Line number is 39
  # 2. What is the type of error message?
  # => Name error
  # 3. What additional information does the interpreter provide about this type of error?
  # => The error messages says that there is undefined local variable or method.
  # => Basically, Object 'main' does not have a south_park method unless you give it one, which is reflected
  # => by the error message "undefined local variable or method 'south_park' for main: Object"
  # 4. Where is the error in the code?
  # => It is the `south_park`.
  # 5. Why did the interpreter give you this error?
  # => This is due to south_park not being defined as a local variable or method.
  # --- error -------------------------------------------------------

  cartman()

  # 1. What is the line number where the error occurs?
  # => Line number is 55.
  # 2. What is the type of error message?
  # => No method error message
  # 3. What additional information does the interpreter provide about this type of error?
  # => The error messages says that the method is not defined.
  # 4. Where is the error in the code?
  # => It is in the `cartman()`. This is due to cartman not being defined as a method.
  # 5. Why did the interpreter give you this error?
  # => Object does not have a method called cartman (with help of irb > object.methods command).
  # => This is reflected by the error message "undefined method 'cartman' for main: Object".


  # --- error -------------------------------------------------------
  #
  def cartmans_phrase
    puts "I'm not fat; I'm big-boned!"
  end

  cartmans_phrase('I hate Kyle')

  # 1. What is the line number where the error occurs?
  # => Line Number is 76.
  # 2. What is the type of error message?
  # => ArgumentError.
  # 3. What additional information does the interpreter provide about this type of error?
  # => Wrong number of arguments (1 for 0)
  # 4. Where is the error in the code?
  # => It is in the argument of the cartmans_phrase method.
  # 5. Why did the interpreter give you this error?
  # => The method was defined expecting no arguments; however, the method was called with an argument.

  # --- error -------------------------------------------------------

  def cartman_says(offensive_message)
    puts offensive_message
  end

  cartman_says

  # 1. What is the line number where the error occurs?
  # => line number is 95
  # 2. What is the type of error message?
  # => ArgumentError.
  # 3. What additional information does the interpreter provide about this type of error?
  # => Wrong number of arguments (0 for 1)
  # 4. Where is the error in the code?
  # => It is in the method call.
  # 5. Why did the interpreter give you this error?
  # => Because we gave one argument to the method but we call the method with zero arguments.

  # # --- error -------------------------------------------------------
  #
  def cartmans_lie(lie, name)
    puts "#{lie}, #{name}!"
  end
  cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

  # 1. What is the line number where the error occurs?
  # => Line number is 113.
  # 2. What is the type of error message?
  # => Argument Error.
  # 3. What additional information does the interpreter provide about this type of error?
  # => Wrong number of arguments (1 for 2)
  # 4. Where is the error in the code?
  # => It is in the method call.
  # 5. Why did the interpreter give you this error?
  # => It was expecting two arguments when we call the method, however it only received one argument.

  # --- error -------------------------------------------------------

  5 * "Respect my authoritay!"

  # 1. What is the line number where the error occurs?
  # => Line number is 128.
  # 2. What is the type of error message?
  # => It is a type error.
  # 3. What additional information does the interpreter provide about this type of error?
  # => String can't be coerced into Fixnum.
  # 4. Where is the error in the code?
  # => The error is in the `*` operator.
  # 5. Why did the interpreter give you this error?
  # => The Fixnum version of the `*` operator expects a Fixnum argument.
  # => The correct code is `"Respect my authoritay!" * 5`

  # --- error -------------------------------------------------------

  amount_of_kfc_left = 20/0

  # 1. What is the line number where the error occurs?
  # => The line number is 144.
  # 2. What is the type of error message?
  # => It is a zero division error message.
  # 3. What additional information does the interpreter provide about this type of error?
  # => It is divided by 0, integer. You can't divide the Fixnum with 0.
  # 4. Where is the error in the code?
  # => It is in the division operator, because dividing by zero is undefined method and gives error message.
  # 5. Why did the interpreter give you this error?
  # => Fixnum version of the `/` operator raises an error when the denominator is zero.
  # => When you convert Fixnum to a float, it gives the result as infinity.

  # --- error -------------------------------------------------------

  require_relative "cartmans_essay.md"

  # 1. What is the line number where the error occurs?
  # => Line number 160.
  # 2. What is the type of error message?
  # => LoadError message.
  # 3. What additional information does the interpreter provide about this type of error?
  # => It tried to load the file from the relative folder, in this case it is week-4.
  # 4. Where is the error in the code?
  # => There is no such a file called `cartmans_essay.md` in the same folder as this file, errors.rb
  # 5. Why did the interpreter give you this error?
  # => Well, I don't have a file called `cartmans_essay.md`

  # --- REFLECTION -------------------------------------------------------
  # Which error was the most difficult to read?
  # => ZeroDivision error was the most difficult to understand.
  # How did you figure out what the issue with the error was?
  # => I had to look up the division operator, it was more than just converting the integer to a float number.
  #    A method was written to raise an error when you divide any number with zero.
  # Were you able to determine why each error message happened based on the code?
  # => Yes.
  # When you encounter errors in your future code, what process will you follow to help you debug?
  # Reading error messages.
