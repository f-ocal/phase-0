class Plant

  @@tallest_plant = nil

  def initialize(name, height)
    @name = name
    @height = height
    save_tallest
  end

  def height
    @height
  end

  def inspect
    "#{@height}-inch-tall #{@name}"
  end

  def grow(inches)
    @height +=inches
    save_tallest
  end

  def self.tallest
    @@tallest_plant
  end

  private

  def save_tallest
    if @@tallest_plant.nil? || @height > @@tallest_plant.height
      @@tallest_plant = self
    end
  end
end


rose = Plant.new('rose', 5)
p Plant.tallest
tulip = Plant.new('tulip', 6)
p Plant.tallest
rose.grow(2)
p Plant.tallest
