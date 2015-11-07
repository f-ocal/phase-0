
#Attr Methods

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

end


class Greetings

end

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

# What is a reader method?
# What is a writer method?
# What do the attr methods do for you?
# Should you always use an accessor to cover your bases? Why or why not?
# What is confusing to you about these methods?
=end
