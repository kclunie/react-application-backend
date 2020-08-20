class Api::V1::LikesController < ApplicationController

    before_action :set_trip

    def create
        @like = @trip.likes.new(like_params)
        if @like.save
            render json: @trip
        else
            render json: {error: 'Error creating like'}
        end
    end

    def destroy
        @like = Like.find(params["id"])
        @trip = Trip.find(@like.trip_id)
        @like.destroy
        render json: @trip
    end

    private

    def set_trip
        @trip = Trip.find(params[:trip_id])
    end

    def like_params
        params.require(:like).permit(:trip_id, :count)
    end

end