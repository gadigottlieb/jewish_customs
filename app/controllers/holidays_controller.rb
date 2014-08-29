class HolidaysController < ApplicationController

  before_action :set_holiday, only: [:show]

  def index
    render json: Holiday.all, status: 200
    # @holidays = Holiday.all
  end

  def show
    render json: @holiday.to_json, status: 200
    # @holiday = Holiday.find(params[:id])
  end

  private
  def set_holiday
    @holiday = Holiday.find(params[:id])
  end
end
