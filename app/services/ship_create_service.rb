class ShipCreateService
  require 'net/http'

  BASE_URL = 'http://localhost:3001'.freeze

  def create
    url = URI("#{BASE_URL}/ship/new")
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
