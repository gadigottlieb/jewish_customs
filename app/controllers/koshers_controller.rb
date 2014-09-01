class KoshersController < ApplicationController

  before_action :set_kosher, only: [:show]

  def index
    render json: Kosher.all, status: 200
  end

  def show
    render json: @kosher.to_json, status: 200
  end

  def create
    @kosher = Kosher.new(kosher_params)
    if @kosher.save
      render json: @kosher.to_json, status: 200
    end
  end

  def update
    render json: @kosher.to_json, status: 200 if @kosher.update(kosher_params)
  end

  def destroy
    render json: @kosher.to_json, status: 200 if @kosher.destroy
  end
  private
  def set_kosher
    @kosher = Kosher.find(params[:id])
  end

  def kosher_params
    params.require(:kosher).permit(:kosher_description, :animal_quote, :animal_src, :animal_description, :fish_quote, :fish_src, :fish_description, :bird_quote, :bird_src, :bird_description, :remaining_creatures, :slaughter, :utensils, :milk_and_meat, :kosher_certifications, :ortho_union, :organized_kosher, :star_k, :kof_kosher)
  end
end
