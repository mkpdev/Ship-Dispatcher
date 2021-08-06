class ProcessShipJob < ApplicationJob
  queue_as :default

  def perform
    ProcessShipService.new.processing
  end
end
