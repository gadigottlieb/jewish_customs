class HolidaysController < ApplicationController

  def index
    @holidays = Holiday.all
  end

  def show
    @holiday = Holiday.find(params[:id]) 
  end

end
