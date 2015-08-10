require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/shipping_cost') do
  length = params.fetch('Length').to_i()
  width = params.fetch('Width').to_i()
  height = params.fetch('Height').to_i()
  weight = params.fetch('Weight').to_i()
  distance = params.fetch('Distance').to_i()
  @shipping_cost = Parcel.new(length, width, height, weight, distance).cost_to_ship()
  erb(:shipping_cost)
end
