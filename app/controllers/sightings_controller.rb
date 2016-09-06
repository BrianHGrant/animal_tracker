class SightingsController < ApplicationController

  def index

    if (params[:max] && params[:min])
      @sightings = Sighting.where(nil).between(params[:max], params[:min])
    elsif params[:region_id].present?
      @sightings = Sighting.where(nil).which_region(params[:region_id])
    else
      @sightings = Sighting.all
    end
    @regions = Region.all
    render :index

  end


  def new
    @animal = Animal.find(params[:animal_id])
    @regions = Region.all
    @sighting = @animal.sightings.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.new(sighting_params)
    if @sighting.save
      redirect_to @animal
    else
      render :new
    end
  end

  def show
    @sighting = Sighting.find(params[:id])
    render :show
  end

  def edit
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.find(params[:id])
    @regions = Region.all
    render :edit
  end

  def update
    @sighting = Sighting.find(params[:id])

    if @sighting.update(sighting_params)
      redirect_to animal_path(params[:animal_id])
    else
      render :new
    end
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    if @sighting.destroy
      redirect_to animal_path(params[:animal_id])
    else
      redirect_to animal_sighting_path(params[:animal_id], params[:id])
    end
  end


  private

  def sighting_params
    params.require(:sighting).permit(:biologist, :region_id, :lat, :lng )
  end
end
