require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('calculates the volume of a parcel') do
    new_parcel = Parcel.new(2, 2, 2, 2)
    expect(new_parcel.volume()).to(eq(8))
    end
  end
  describe('#cost_to_ship') do
    it('calculates the weight times the volume') do
    new_parcel = Parcel.new(2, 2, 2, 2,)
    expect(new_parcel.cost_to_ship()).to(eq(16))
    end
  end
end
