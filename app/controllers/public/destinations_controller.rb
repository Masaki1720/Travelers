class Public::DestinationsController < ApplicationController
  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.save
    redirect_to destinations_path
  end

  def index
  end

  def show
  end

  def edit
  end


 private
   def destination_params
     params.require(:destination).permit(:spot_name, :spot_introduction, :prefecture, :city, :transportation, :route, :destination_pay, :transportation_pay, :hotel, :hotel_pay, :other_info)
   end

end