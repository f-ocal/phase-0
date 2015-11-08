
#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

class NameData

  attr_reader :name

  def initialize
    @name = 'Fatma'
  end

## If the method name of `name` is different, than we can't write it in shortcut of attr_reader:::::::::::::::::
#   def name
#       @name
#   end

end

class Greetings
  def initialize
    @name = NameData.new
  end

  def hello
    puts "Hello #{@name.name}! How wonderful to see you today!"
  end

end

greet = Greetings.new
greet.hello

# Reflection - Release 1: Read and Research
=begin

What are these methods doing?
The methods are creating an instance and behaviours of Profile class, the instance is called instance_of_profile. The object is initialized with Kim's profile details : name, last name, age and occupation. The methods are defined to change and update the instance variables (their states name, age and occupation) with instance_of_profile.change_my_xxxxx so does the object's states are updated.

How are they modifying or returning the value of instance variables?
The methods are modified and changed the value of instance variables outside of the class by calling them with attributes meaning that by calling class. method. When we write the instance variable value, we use writer methods. Instead of giving arguments between parentheses, methods expect the new value after `=` notation such as
instance_of_profile.change_my_age = 28 # happy birthday! you aged one year

=end

# Reflection - Release 2: Identify the Changes
=begin
What changed between the last release and this release?
There wasn't any change from the output perspective; however we didn't define age explicitly using what_is_age method, instead we used attr_reader.

What was replaced? Is this code simpler than the last?
We replaced def what_is_age; end method with attr_reader :age both are the same things. It is definitely simplier.

# def what_is_age
#   @age
# end

# attr_reader :age

=end

# Reflection - Release 3: More Changes
=begin
What changed between the last release and this release?
This time we went further and change the change_my_age method definition with writeable method of attr_writer :age.

What was replaced?
  # def change_my_age=(new_age)
  #   @age = new_age
  # end

  with attr_writer :age

Is this code simpler than the last? Yes, it is simplier.

=end

# Reflection - Release 6 : Reflect
=begin

What is a reader method?
  The attr_reader method defines reader method. It is defined such as def description; @description; end. This is convenient shortcut that you can use when your getter simply returns the value of the variable or state of the same name from outside of the class.

What is a writer method?
  The attr_writer method defines writes method. It is defined such as def description=(new_description); @description = new_description; end. This is convenient shortcut that you can use when your setter method that sets the value of the instance variable of the same name as the setter. It is very similar to the reader method except writer method allows you to write new data to an instance variable.

What do the attr methods do for you?
  The attr_accessor method defines both reader and writer methods. It is defined such as attr_reader :description; attr_writer :description; In some cases you might want to use both getter and setter for an instance variable, Instead of having defined both reader and writer for the same variable, you can use attr_accessor, both to read and write the value of the instance variable.


Should you always use an accessor to cover your bases? Why or why not?
What is confusing to you about these methods?
  Nope, we shouldn't always use accessor just to cover both reader and writer methods. It is not good for debugging purpose.
=end
