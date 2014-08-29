class KoshersController < ApplicationController

  before_action :set_kosher, only: [:show]

  def index
    render json: Kosher.all, status: 200
  end

  def show
    render json: @kosher.to_json, status: 200
  end

  private
  def set_kosher
    @kosher = Kosher.find(params[:id])
  end
end
