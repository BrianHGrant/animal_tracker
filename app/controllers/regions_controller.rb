class RegionsController < ApplicationController

  def index
    @regions = Region.all
    render :index
  end

  def show
    @region = Region.find(params[:id])
    render :show
  end

end
