class Parcel
  def initialize(length, width, height, weight, distance)
    @length = length
    @width = width
    @height = height
    @weight = weight
    @distance = distance
  end

  def volume
    @length * @width * @height
  end

  def cost_to_ship
    total_package = volume * @weight
    total = @distance.*(0.01)
    total = total + total_package
  end
end
