class Public::DestinationsController < ApplicationController
  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
     redirect_to destinations_path
    else
     render 'new'
    end
  end

  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def edit
    @destination = Destination.find(params[:id])
  end


 private
   def destination_params
     params.require(:destination).permit(:spot_name, :spot_introduction, :prefecture, :city, :transportation, :route, :destination_pay, :transportation_pay, :hotel, :hotel_pay, :exchange, :other_info)
   end

end