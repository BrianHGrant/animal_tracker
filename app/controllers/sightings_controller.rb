class SightingsController < ApplicationController
  def new
    @animal = Animal.find(params[:animal_id])
    @regions = Region.all
    @sighting = @animal.sightings.new
  end
end
