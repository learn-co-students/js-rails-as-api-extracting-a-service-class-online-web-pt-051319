class SightingsController < ApplicationController
    def show
        sighting = Sighting.find(params[:id])
        render json: Serializer.new(sighting).to_serialized_json
    end
end
