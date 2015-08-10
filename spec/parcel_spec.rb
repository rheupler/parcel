require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('calculates the volume of a parcel') do
    new_parcel = Parcel.new(2, 2, 2, 2, 20)
    expect(new_parcel.volume()).to(eq(8))
    end
  end
  describe('#cost_to_ship') do
    it('calculates the weight and distance of parcel and returns cost') do
    new_parcel = Parcel.new(2, 2, 2, 2, 20)
    expect(new_parcel.cost_to_ship()).to(eq(16.20))
    end
  end
  # describe('#gift_wrap') do
  #   it('calculates the price of gift wrap depending on the surface area of the parcel') do
  #   new_parcel = Parcel.new(2, 2, 2, 2, 20)
  #   expect(new_parcel.gift_wrap()).to(eq(18.6))
    # end
  #end
end
