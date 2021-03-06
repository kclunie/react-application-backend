class Api::V1::CitiesController < ApplicationController

    before_action :set_trip

    def index
        @cities = @trip.cities
        render json: @cities
    end

    def show
        @city = City.find(params[:id])
        render json: @city
    end

    def create
        @city = @trip.cities.new(city_params)
        if @city.save
            render json: @trip
        else
            render json: {error: 'Error creating city'}
        end
    end

    def destroy
        @city = City.find(params["id"])
        @trip = Trip.find(@city.trip_id)
        @city.destroy
        render json: @trip
    end

    def update

    end

    private

    def set_trip
        @trip = Trip.find(params[:trip_id])
    end

    def city_params
        params.require(:city).permit(:trip_id, :location, :hotel, :restaurants, :activities, :like, :likes)
    end

end
