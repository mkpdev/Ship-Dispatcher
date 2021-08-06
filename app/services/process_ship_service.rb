class ProcessShipService
  require 'net/http'

  BASE_URL = 'http://localhost:3002'.freeze

  def processing
    ship = Ship.queue.last

    return unless ship.present?

    ship.update_attribute(:status, "processing")

    uri = URI("#{BASE_URL}/ship_processing/new")
    response = Net::HTTP.post_form(uri, {"name" => ship.name})

    update_status(ship, JSON.parse(response.body))
  end

  private

  def update_status(ship, data)
    ship.update_attribute(:status, data['ship_params']['status'] )
  end
end
