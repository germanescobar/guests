class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    @guest.save
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


  private
    def guest_params
      params.require(:guest).permit(:email, :name)
    end
end
