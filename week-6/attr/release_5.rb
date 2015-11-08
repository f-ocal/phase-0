# Release 5:

# refactor this code to move method assignments to attr_ attributes. Like we did with age. Let's pare down the superfluous code.

# Your Code Here:

# class Profile
# first let's finish refactoring this code
# note that there is a way to add all of the variables like :age on one line, how would we do that?
#   attr_accessor :age
#   attr_accessor :name
#   attr_accessor :occupation
#
#   def initialize
#     @age = 27
#     @name = "Kim"
#     @occupation = "Cartographer"
#   end
#
#   def print_info
#     puts
#     puts "age: #{@age}"
#     puts
#     puts "name: #{@name}"
#     puts
#     puts "occupation: #{@occupation}"
#     puts
#   end
# end

####################

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
