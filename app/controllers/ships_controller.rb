class ShipsController < ApplicationController

	require 'net/http'

	def index
		@arrived = Ship.arrived
		@queue 	 = Ship.queue
		@processed = Ship.processed
	end

	def send_to_queue
		ship = Ship.find(params[:id])
		ship.update(status: :queue)
		redirect_to ships_path
	end

end
