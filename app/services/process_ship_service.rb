class ProcessShipService
	require 'net/http'
	def processing
		ship = Ship.queue.last
		uri = URI.parse("http://localhost:3002/ship_processing/new")
		response = Net::HTTP.post_form(uri, {"name" => ship.name})

		update_status(ship, JSON.parse(response.body))
	end

	private

	def update_status(ship, data)
		ship.update_attribute(:status, data['ship_params']['status'] )
	end
end