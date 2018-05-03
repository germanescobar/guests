class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end
  def going
  	@guest = Guest.find(params[:id])
  	@guest.status = :going
  	@guest.save
  end
  def not_going
  	@guest = Guest.find(params[:id])
  	@guest.status = :not_going
  	@guest.save
  end
end
