  # Analyze the Errors

  # I worked on this challenge myself.
  # I spent 2 -  hours on this challenge.

  # --- error -------------------------------------------------------

  # "Screw you guys " + "I'm going home." = cartmans_phrase

  # This error was analyzed in the README file.
  # --- error -------------------------------------------------------

  # def cartman_hates(thing)
  # while true
  #   puts "What's there to hate about #{thing}?"
  # end
  #
  # This is a tricky error. The line number may throw you off.

  # 1. What is the name of the file with the error?
  # => The name of the file with the error is errors.rb
  # 2. What is the line number where the error occurs?
  # => line number is 16.
  # 3. What is the type of error message?
  # => Synax error message.
  # 4. What additional information does the interpreter provide about this type of error?
  # => The interpreter says unexpected "=" sign, rather expecting keyword_end
  # 5. Where is the error in the code?
  # => There is no arrow where the error occurs.
  # 6. Why did the interpreter give you this error?
  # => Because, there is no end for the while loop. This error would not happen if the code was like this:
  #     def cartman_hates(thing)
        #   while
        #   end
        # end

  # --- error -------------------------------------------------------

  # south_park

  # 1. What is the line number where the error occurs?
  # => Line number is 39
  # 2. What is the type of error message?
  # => Name error
  # 3. What additional information does the interpreter provide about this type of error?
  # => The error messages says that there is undefined local variable or method.
  # => Basically, Object 'main' does not have a south_park method unless you give it one, which is reflected
  # => by the error message "undefined local variable or method 'south_park' for main: Object"
  # 4. Where is the error in the code?
  # => No indication
  # 5. Why did the interpreter give you this error?
  # => Because there is lack of information if south_park is a local variable or method, also it is undefined.
  # We need to make sure to define local variables or methods.

  # --- error -------------------------------------------------------

  # cartman()

  # 1. What is the line number where the error occurs?
  # => Line number is 55.
  # 2. What is the type of error message?
  # => No method error message
  # 3. What additional information does the interpreter provide about this type of error?
  # => The error messages says that the method is not defined.
  # 4. Where is the error in the code?
  # => No indication
  # 5. Why did the interpreter give you this error?
  # => Basically, Object 'main' does not have a cartman method unless you give it one, which is reflected
  # => by the error message "undefined method 'cartman' for main: Object"

  # --- error -------------------------------------------------------
  #
  # def cartmans_phrase
  #   puts "I'm not fat; I'm big-boned!"
  # end
  #
  # cartmans_phrase('I hate Kyle')

  # 1. What is the line number where the error occurs?
  # => Line Number is 73.
  # 2. What is the type of error message?
  # => Argument error
  # 3. What additional information does the interpreter provide about this type of error?
  # => Wrong number of arguments (1 for 0)
  # 4. Where is the error in the code?
  # => No arrow
  # 5. Why did the interpreter give you this error?
  # => Because, we didn't give any argument for the method; however we call the method with one argument.

  # --- error -------------------------------------------------------

  # def cartman_says(offensive_message)
  #   puts offensive_message
  # end
  #
  # cartman_says

  # 1. What is the line number where the error occurs?
  # => line number is 92
  # 2. What is the type of error message?
  # => Argument Error
  # 3. What additional information does the interpreter provide about this type of error?
  # => Wrong number of arguments (0 for 1)
  # 4. Where is the error in the code?
  # => No arrow.
  # 5. Why did the interpreter give you this error?
  # => Because, we gave one argument to the method but we call the method with zero argument.



  # # --- error -------------------------------------------------------
  #
  def cartmans_lie(lie, name)
    puts "#{lie}, #{name}!"
  end

  cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

  # 1. What is the line number where the error occurs?
  #
  # 2. What is the type of error message?
  #
  # 3. What additional information does the interpreter provide about this type of error?
  #
  # 4. Where is the error in the code?
  #
  # 5. Why did the interpreter give you this error?
  #

  # --- error -------------------------------------------------------

  # 5 * "Respect my authoritay!"

  # 1. What is the line number where the error occurs?
  #
  # 2. What is the type of error message?
  #
  # 3. What additional information does the interpreter provide about this type of error?
  #
  # 4. Where is the error in the code?
  #
  # 5. Why did the interpreter give you this error?
  #

  # --- error -------------------------------------------------------
  #
  # amount_of_kfc_left = 20/0


  # 1. What is the line number where the error occurs?
  #
  # 2. What is the type of error message?
  #
  # 3. What additional information does the interpreter provide about this type of error?
  #
  # 4. Where is the error in the code?
  #
  # 5. Why did the interpreter give you this error?
  #

  # --- error -------------------------------------------------------

  # require_relative "cartmans_essay.md"

  # 1. What is the line number where the error occurs?
  #
  # 2. What is the type of error message?
  #
  # 3. What additional information does the interpreter provide about this type of error?
  #
  # 4. Where is the error in the code?
  #
  # 5. Why did the interpreter give you this error?


  # --- REFLECTION -------------------------------------------------------
  # Write your reflection below as a comment.

  # Which error was the most difficult to read?

  # How did you figure out what the issue with the error was?

  # Were you able to determine why each error message happened based on the code?

  # When you encounter errors in your future code, what process will you follow to help you debug?
