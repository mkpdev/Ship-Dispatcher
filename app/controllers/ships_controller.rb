class ShipsController < ApplicationController
  before_action :set_ship, only: %i[update]

  def index
    @arrived = Ship.arrived
    @queue   = Ship.queue
    @processed = Ship.processed.last(5)
  end

  def update
    @ship.update(status: params[:status])
    redirect_to ships_path
  end

  private

  def set_ship
    @ship = Ship.find(params[:id])
  end

end
