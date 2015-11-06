class Plant
  @@tallest = nil

  def initialize(name, height)
    @name = name
    @height = height
    check_for_tallest
  end

  def height
    @height
  end

  def inspect
    "#{@height}-inch-tall #{@name}"
  end

  def grow(inches)
    @height +=inches
    check_for_tallest
  end

  def self.tallest
    @@tallest
  end

  private

  def check_for_tallest
    if @@tallest.nil? || @height > @@tallest.height
      @tallest = self
    end
  end
end

p Plant.tallest
p rose = Plant.new('rose', 5)
p Plant.tallest
p tulip = Plant.new('tulip', 6)
p Plant.tallest
p rose.grow(2)
p Plant.tallest
