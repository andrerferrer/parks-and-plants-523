class PlantsController < ApplicationController
  def new
    @plant = Plant.new # this is for the form
    @garden = Garden.find(params[:garden_id]) # this is for the form
  end

  def create
    @plant = Plant.new(strong_params)
    @garden = Garden.find(params[:garden_id]) # this is for the form
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden.id)
    else
      render :new#.html.erb
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy # from the DB. The @plant is still here in the RAM
    @garden = @plant.garden
    redirect_to garden_path(@garden.id)
  end

  private

  def strong_params
    params.require(:plant)
          .permit(:name, :picture_url)
  end

end
