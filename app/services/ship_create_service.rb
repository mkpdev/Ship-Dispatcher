class ShipCreateService
	require 'net/http'
	def create
		url = URI.parse('http://localhost:3001/ship/new')
		result = Net::HTTP.get(url)

		create_ship(JSON.parse(result))
	end

	private

	def create_ship(data)
		Ship.create!(
	      name: data['ship_params']['name'],
	      origin: data['ship_params']['origin'],
	      passengers: data['ship_params']['passengers'],
	      status: "arrived"
	    )
	end
end