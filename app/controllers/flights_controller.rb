class FlightsController < ApplicationController


  def index

    @flights = Flight.all

    if params[:departure_airport_id].present? && params[:arrival_airport_id].present?
      @flights = @flights.where(
        departure_airport_id: params[:departure_airport_id],
        arrival_airport_id: params[:arrival_airport_id]
      )

    elsif params[:departure_airport_id].present?
      @flights = @flights.where(
        departure_airport_id: params[:departure_airport_id]
      )

    elsif params[:arrival_airport_id].present?
      @flights = @flights.where(

      arrival_airport_id: params[:arrival_airport_id]
      )
    end


    

    if params[:date].present?
      @flights = @flights.where(date: params[:date])
    end


    if @flights.empty?
      redirect_to root_path, alert: "No flights found"
     end

     

    
    


     

     
  end

  def edit
    @flight = Flight.find(params[:id])
  end

  def update
  end

  def new
    @flight = Flight.new
  end

  def create

    @flight = Flight.new(flight_params)

    if @flight.save 
      redirect_to flight_path(@flight)
    else
      render :new , status: :unprocessable_entity
    end






  end
  

  def show
    @flight = Flight.find(params[:id])
    

 
  end

  def destroy 
  end

  private

  def flight_params
    params.require(:flight).permit(
      :flight_duration,
      :arrival_flight_number,
      :departing_flight_number,
      :departure_datetime,
      :arrival_datetime,
      :flight_type,
      :aircraft_id,
      :departure_airport_id,
      :arrival_airport_id
    )  end






end
