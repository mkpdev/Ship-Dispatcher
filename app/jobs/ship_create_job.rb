class ShipCreateJob < ApplicationJob
  queue_as :default

  def perform
    ShipCreateService.new.create
  end
end
