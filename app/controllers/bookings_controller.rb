class BookingsController < ApplicationController

  def index
  end

  def edit
  end

  def update
  end

  def new
    @booking = Booking.new
    1.times {@booking.passengers.build}
    params[:number_of_passengers].to_i.times{@booking.passengers.build}
  end

  def create
    @booking = Booking.new(booking_params)

    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking), notice: "Booking confirmed"
    else
      puts @booking.errors.full_messages
      render :new, status: :unprocessable_entity
    end



  end


    
  

  def show
    @booking = @booking.find(:id)
  end

  def destroy 
    
  end

  private

  def booking_params

    params.require(:booking).permit(:flight_id, :number_of_passengers, passengers_attributes: [:name,:email])


  end


  






end
